module.exports = 
    ### UserController.index() ###
    index: (req, res) ->
        params = req.params.all()
        findParams = {}

        if params.name
            findParams = 
                name: params.name

        User
            .find findParams
            .exec (error, data) ->
                res.view
                    users: data


    ### UserController.create() ###
    create: (req, res) ->
        params = req.params.all()

        User
            .create
                name: params.name
                email: params.email
                password: params.password
            .exec (error, data) ->
                if error and error.invalidAttributes
                    req.flash 'errors', MyServices.modelValidation User, error.invalidAttributes
                    
                    return res.redirect '/register'

                # User.publishCreate data
                sails.io.sockets.emit 'insert-user', data

                res.redirect '/users'

    subscribe: (req, res) ->
        User.find (err, users) ->
            return next err if err

            User.subscribe req.socket
            User.subscribe req.socket, users

            res.send 200

    ### UserController.delete() ###
    delete: (req, res) ->
        res.json
            todo: 'delete function'