{% set title = "Administrator Login" %}
{% extends '../layout/admin.swig' %}

{# block content #}
    {{ error | default('') }}
    <form action="/login" method="post">
        <label for="email">Email</label>
        <input type="text" name="email" id="email" value="a@b.c" /><br />
        <label for="password">Password</label>
        <input type="password" name="password" id="password" value="1" /><br />
        <button type="submit">Login</button>
    </form>
{# endblock #}

{% block stylesheet %}
    <link rel="stylesheet" href="/styles/login.css" />
{% endblock %}

{% block content %}
<div class="login-card">
    <h1>Log-in</h1>
    <form method="post" action="/login">
        <span id="error">{{ error | default('') }}</span>
        <input type="text" name="email" placeholder="Email" />
        <input type="password" name="password" placeholder="Password" />
        <input type="submit" name="login" class="login login-submit" value="login" />
    </form>
    <div class="login-help">
        <a href="/">Back to Homepage</a>
    </div>
</div>
{% endblock %}