module.exports =

    ### SettingsController.index() ###
    index: (req, res, next) ->
        Settings
            .find()
            .limit(1)
            .exec websiteConfig = (error, config) ->
                return next error if error

                res.view
                    title: 'Website configurations'
                    config: config[0]

    update: (req, res, next) ->
        params = req.params.all()

        Settings
            .update
                id: '54dac1108e72440527233c8b'
                params
                upsert: true
            .exec updateConfig = (error, updateStatus) ->
                # return next error if error
                if error and error.invalidAttributes
                    req.flash 'errors', MyServices.modelValidation Settings, error.invalidAttributes
                else
                    req.flash 'message', 'Update website configurations successfull.'
                console.log updateStatus
                res.redirect '/admin'

