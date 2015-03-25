$ ->
    $ '#frmEvent'
        .off 'submit'
        .on 'submit', ->
            updateCKEditor()
            formData = $ @
                .serialize()

            $.ajax
                url: '/events/add'
                type: 'post'
                async: false
                data: formData
            .done (res) ->
                if res.errors
                    $ '#errors'
                        .empty()
                    $.each res.errors, (idx, error) ->
                        $ '#errors'
                            .append "<p>#{error}</p>"
                else
                    message = 'Update successfull'
                    if res.data.action isnt 'update'
                        message = 'Insert successfull' 
                        CKEDITOR.instances.content.setData ''

                    $ '#errors'
                        .html message
            .fail (xhr, ao, err) ->
                alert err

            false

    updateCKEditor = ->
        for instance of CKEDITOR.instances
            CKEDITOR.instances[instance].updateElement()

        return

    $ 'p.date'
        .timeago()

    $ 'a.remove-event'
        .on 'click', ->
            if confirm 'Are you sure you want to delete this event?'
                eventID = $ @
                    .data 'id'
                $self = $ @
                    .closest 'tr.tbl-item'
                console.log $self

                if eventID
                    $.ajax
                        url: '/events/delete'
                        type: 'POST'
                        async: false
                        data:
                            id: eventID
                    .done (res) ->
                        if res.length >= 1
                            $self.remove()
                    .fail (xhr, ao, error) ->
                        alert error

            false