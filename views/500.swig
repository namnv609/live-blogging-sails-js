{% set error_code = "500" %}
{% set error_text = "Internal error :(" %}
{% extends "layout/error.swig" %}

{% block errors %}
    {{ errors | default('') }}
{% endblock %}