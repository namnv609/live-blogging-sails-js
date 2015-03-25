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

            $template.clone().hide().prependTo $ '#timeline'
                .slideDown 2000
            $ '.timeago'
                .timeago()

    io.socket.on 'updateEvent', (event) ->
        $ "[data-event-id=#{event.event_id}]"
            .closest 'li'
            .find '.content p'
                .html event.content