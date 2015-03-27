$ ->
    $ '.timeago'
        .timeago()

    io.socket.on 'insertEvent', (event) ->
        if event.content
            $template = $ "#template > li"
            dateTime = new Date(event.createdAt).getTime();

            $ '.relative', $template
                .attr 'data-event-id', event.event_id
            $ '.date', $template
                .html $.format.date dateTime, "MM/dd/yyyy HH:mm"
            $ '.content p', $template
                .html event.content
            $ '.timeago', $template
                .html event.createdAt
            $ '.timeago', $template
                .attr 'title', event.createdAt
            $ 'html, body'
                .animate
                    scrollTop: 0
                , 500
                .promise().done ->
                    $template.clone().hide().prependTo $ '#timeline'
                        .slideDown 2000
                    $ '.timeago'
                        .timeago()

    io.socket.on 'updateEvent', (event) ->
        $eventElm = $ "[data-event-id=#{event.event_id}]"
            .closest 'li'

        $ 'html, body'
            .animate
                scrollTop: $eventElm.offset().top
            , 500, ->
                $ '.content p', $eventElm
                    .html event.content
                    .promise()
                    .done ->
                        $eventElm
                            .slideUp ->
                                $ @
                                    .slideDown()

    io.socket.on 'deleteEvent', (eventID) ->
        $eventElm = $ "[data-event-id=#{eventID}]"

        $ 'html, body'
            .animate
                scrollTop: $eventElm.offset().top
            , 500, ->
                $eventElm.closest '.work'
                    .slideUp 800, ->
                        $ @
                            .remove()