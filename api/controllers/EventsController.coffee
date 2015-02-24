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