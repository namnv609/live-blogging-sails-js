<!DOCTYPE HTML>
<html>
    <head>
            <meta charset="utf-8" />
            <title>{{ error_code | default('404') }} {{ error_text | default('Page not found') }}</title>
            <link href='http://fonts.googleapis.com/css?family=Sansita+One' rel='stylesheet' type='text/css'>
            <link href="/styles/error.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <div id="container">
            <div id="guy">
                <div id="eye1" style="margin-left: 131px; margin-top: 113px;"></div>
                <div id="eye2" style="margin-left: 191px; margin-top: 113px;"></div>
                <div id="foot"></div>
            </div>
            <div id="message">
                <div id="message-top" style="margin-left: 100px; margin-top: 113px;"><h1>{{ error_code | default('404') }}</h1></div>
                <div id="message-bottom" style="margin-left: 30px; margin-top: 0px;"><h2>{{ error_text | default('Page not found') }}</h2></div>
            </div>
            {% block errors %}{% endblock %}
        </div>
        <div id="footer">
            <a href="/">Back to Homepage</a>
            <p>&copy;2015 by NamNV609</p>
        </div>
    </body>
</html>
