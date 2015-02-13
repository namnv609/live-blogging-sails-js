# CKFinder.s
$ ->
    $ '#frmEvent'
        .off 'submit'
        .on 'submit', ->
            updateCKEditor()
            formData = $ @
                .serialize()

            $.ajax
                url: '/events'
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
                    $ '#errors'
                        .html 'Insert successfull.'
                    CKEDITOR.instances.content.setData ''
            .fail (xhr, ao, err) ->
                alert err

            false

    updateCKEditor = ->
        for instance of CKEDITOR.instances
            CKEDITOR.instances[instance].updateElement()

        return