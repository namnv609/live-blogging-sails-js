{% extends "../layout/admin.swig" %}
{% block stylesheet %}
    <link rel="stylesheet" href="/styles/admin/style.css" />
{% endblock %}
{% block content %}
    <div id="errors"></div>
    <form action="/events/add" id="frmEvent" method="post" autocomplete="off">
        <input type="hidden" name="id" value="{{ event.id | default('') }}" />
        <label for="content">Content</label><br />
        <textarea name="content" class="ckeditor" id="content" cols="30" rows="30">{{ event.content | default('') }}</textarea><br />
        <button type="submit">Submit</button>
    </form>
{% endblock %}
