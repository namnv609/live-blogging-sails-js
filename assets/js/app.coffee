$ ->
    io.socket.on 'insertEvent', (event) ->
        if event.content
            $template = $ "#template > li"
            dateTime = new Date(event.createdAt).toLocaleString();

            $ '.date', $template
                .html $.formatDateTime "dd/mm/yy hh:ii", event.createdAt
            $ '.content p', $template
                .html event.content.replace /\n/g, '<br />'
            console.log $template
            $template.clone().hide().prependTo $ '#timeline'
                .slideDown 2000