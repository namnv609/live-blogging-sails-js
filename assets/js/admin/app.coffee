$ ->
    $ '#frmEvent'
        .on 'submit', ->
            formData = $ @
                .serialize()

            $.ajax
                url: '/events'
                type: 'post'
                data: formData
                beforeSend: ->
                    $ '> *', $ @
                        .prop 'disabled', true
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
                    $ '#content'
                        .val ''
            .fail (xhr, ao, err) ->
                alert err

            false