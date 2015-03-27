module.exports =
    ### EventsController.index() ###
    index: (req, res) ->
        Events
            .find()
            .sort
                _id: 'desc'
            .exec (error, events) ->
                return next error if error

                res.view
                    title: 'Events manage'
                    events: events

    ### EventsController.create() ###
    create: (req, res) ->
        params = req.params.all()

        if req.method is 'POST'
            if params.event_id is ''
                params.event_id = new Date().getTime().toString()
                Events
                    .create params
                    .exec (error, event) ->
                        if error and error.invalidAttributes
                            return res.json
                                errors: MyServices.modelValidation Events, error.invalidAttributes

                        sails.io.sockets.emit 'insertEvent', event

                        res.json
                            data: 
                                action: 'insert'
                                status: true
            else
                Events
                    .find
                        event_id: params.event_id
                    .limit 1
                    .exec (error, event) ->
                        return next error if error
                        _event = event[0]
                        Events
                            .update event[0], params,
                                upsert: true
                            .exec (error, status) ->                                
                                if error and error.invalidAttributes
                                    return res.json
                                        errors: MyServices.modelValidation Events, error.invalidAttributes

                                sails.io.sockets.emit 'updateEvent', status[0]
                                res.json
                                    data:
                                        action: 'update'
                                        status: true
        else
            res.view
                title: 'Add new event'

    ### EventsController.edit() ###
    edit: (req, res, next) ->
        eventID = req.params.id

        Events
            .find
                event_id: eventID
            .limit 1
            .exec (error, event) ->
                return next error if error

                res.view 'events/create',
                    event: event[0]
                    title: 'Edit event'

    'delete': (req, res, next) ->
        params = req.params.all()

        Events.
            destroy
                event_id: params.id
            .exec (error, deleteStatus) ->
                return next error if error
                sails.io.sockets.emit 'deleteEvent', params.id

                res.json
                    status: deleteStatus