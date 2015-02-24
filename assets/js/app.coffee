$ ->
    $ '.timeago'
        .timeago()

    io.socket.on 'insertEvent', (event) ->
        if event.content
            $template = $ "#template > li"
            dateTime = new Date(event.createdAt).getTime();

            $ '.date', $template
                .html $.format.date dateTime, "dd/MM/yyyy HH:mm"
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