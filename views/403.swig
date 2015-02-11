{% set error_code = "403" %}
{% set error_text = "Access denied" %}
{% extends "layout/error.swig" %}

{% block errors %}
    {{ errors | default('') }}
{% endblock %}