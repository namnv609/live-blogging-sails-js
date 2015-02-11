module.exports =
    ### IndexController.index() ###
    index: (req, res, next) ->
        async = require 'async'

        async.parallel [
            (callback) ->
                Events
                    .find()
                    .sort
                        _id: 'desc'
                    .exec (error, events) ->
                        next error if error

                        callback null, events
            , (callback) ->
                Settings
                    .find()
                    .limit(1)
                    .exec (error, settings) ->
                        next error if error 

                        callback null, settings
        ], (error, results) ->
            next error if error

            res.view 'homepage',
                events: results[0]
                settings: results[1][0]
