<!DOCTYPE html>
<html lang="vi-VN">
    <head>
        <title>{{ title | default("Live Blogging") }} | Live Blogging - Live event streaming</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <link rel="stylesheet" href="/styles/style.css">
        {% block stylesheet %}{% endblock %}
    </head>
    <body>
        {% block content %}{% endblock %}
        <script src="/js/dependencies/sails.io.js" type="text/javascript"></script>
        <script src="/js/jquery-1.11.2.min.js" type="text/javascript"></script>
        {% block js_footer %}{% endblock %}
    </body>
</html>
