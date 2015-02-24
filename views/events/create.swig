{% extends "../layout/admin.swig" %}
{% block stylesheet %}
    <link rel="stylesheet" href="/styles/admin/style.css" />
{% endblock %}
{% block content %}
    <div id="errors"></div>
    <form action="/events/add" id="frmEvent" method="post" autocomplete="off">
        <label for="content">Content</label><br />
        <textarea name="content" class="ckeditor" id="content" cols="30" rows="30"></textarea><br />
        <button type="submit">Submit</button>
    </form>
{% endblock %}
{% block js_footer %}
    <script type="text/javascript" src="/js/admin/app.js"></script>
{% endblock %}