{% set error_code = "404" %}
{% set error_text = "Oops... Page not found :(!" %}
{% extends "layout/error.swig" %}

{% block errors %}
    {{ errors | default('') }}
{% endblock %}