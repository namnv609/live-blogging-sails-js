$ ->
    $ 'label.timeago'
        .timeago()

    io.socket.on 'insertEvent', (event) ->
        if event.content
            $template = $ "#template > li"
            dateTime = new Date(event.createdAt).toLocaleString();

            $ '.date', $template
                .html dateTime
            $ '.content p', $template
                .html event.content.replace /\n/g, '<br />'
            $ '.timeago', $template
                .html event.createdAt
            $ '.timeago', $template
                .attr 'title', event.createdAt
            console.log $template
            $template.clone().hide().prependTo $ '#timeline'
                .slideDown 2000
            $ '.timeago'
                .timeago()