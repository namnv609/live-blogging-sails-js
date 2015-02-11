module.exports = 
    ### UsersController.index() ###
    # index: (req, res) ->
    #     params = req.params.all()
    #     findParams = {}

    #     if params.name
    #         findParams = 
    #             name: params.name

    #     Users
    #         .find findParams
    #         .exec (error, data) ->
    #             res.view
    #                 users: data

    ### UsersController.create() ###
    # create: (req, res) ->
    #     params = req.params.all()

    #     Users
    #         .create
    #             name: params.name
    #             email: params.email
    #             password: params.password
    #         .exec (error, data) ->
    #             if error and error.invalidAttributes
    #                 req.flash 'errors', MyServices.modelValidation User, error.invalidAttributes
                    
    #                 return res.redirect '/register'

    #             res.redirect '/users'

    ### UsersControler.login() ###
    login: (req, res, next) ->
        params = req.params.all()

        Users
            .find
                email: params.email
                password: params.password
            .limit 1
            .exec (error, user) ->
                if error or Object.keys(user).length <= 0
                    return res.view
                        error: 'Email or password is invalid'

                req.session.isAdmin = true
                req.session.user = user[0]
                res.redirect '/events'

    ### UsersController.logout() ###
    logout: (req, res, next) ->
        delete req.session.isAdmin
        delete req.session.user

        res.redirect '/'
