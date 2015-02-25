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
        params.id = new Date().getTime()

        if req.method is 'POST'
            Events
                .create params
                .exec (error, event) ->
                    if error and error.invalidAttributes
                        return res.json
                            errors: MyServices.modelValidation Events, error.invalidAttributes

                    sails.io.sockets.emit 'insertEvent', event

                    res.json
                        data: event
        else
            res.view
                title: 'Add new event'

    ### EventsController.edit() ###
    edit: (req, res, next) ->
        eventID = parseInt req.params.id

        Events
            .find
                _id: eventID
            .limit 1
            .exec (error, event) ->
                return next error if error

                res.view 'events/create',
                    event: event[0]
                    title: 'Edit event'

    'delete': (req, res, next) ->
        params = req.params.all()
        eventID = parseInt params.id

        Events.
            destroy
                _id: eventID
            .exec (error, deleteStatus) ->
                return next error if error

                res.json
                    status: deleteStatus