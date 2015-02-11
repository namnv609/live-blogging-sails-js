module.exports =
    ### EventsController.index() ###
    index: (req, res) ->
        res.view
            title: 'Add new event'

    ### EventsController.create() ###
    create: (req, res) ->
        params = req.params.all()

        Events
            .create params
            .exec (error, event) ->
                if error and error.invalidAttributes
                    return res.json
                        errors: MyServices.modelValidation Events, error.invalidAttributes

                sails.io.sockets.emit 'insertEvent', event

                res.json
                    data: event