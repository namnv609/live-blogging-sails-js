module.exports =
    ### EventsController.index() ###
    index: (req, res) ->
        # res.json
        #     todo: 'Get /events/index'
        res.view
            title: 'Add new event'

    ### EventsController.create() ###
    create: (req, res) ->
        # console.log req.method
        # res.json
        #     todo: 'Post /events/create'
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