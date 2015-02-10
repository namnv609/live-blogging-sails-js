module.exports =
    index: (req, res) ->
        Events
            .find()
            .sort
                _id: 'desc'
            .exec (error, events) ->
                next error if error

                res.view 'homepage',
                    events: events