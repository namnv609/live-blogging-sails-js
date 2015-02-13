{% extends "layout/user.swig" %}

{% block content %}
    <h2>{{ settings.siteName | default("Live blogging") }}</h2>
    <p>{{ settings.siteDescription | default("Live event streaming.") }}</p>
    <ul id='timeline'>
        {% if events %}
            {% for event in events %}
                <li class='work'>
                    <div class="relative">
                        <label class="timeago" title="{{ event.createdAt.toString() }}">{{ event.createdAt.toString() }}</label>
                        <span class='date'>{{ event.createdAt | date("d/m/Y H:i") }}</span>
                        <span class='circle'></span>
                    </div>
                    <div class='content'>
                        <p>
                            {{ event.content }}
                        </p>
                    </div>
                </li>
            {% endfor %}
        {% endif %}
    </ul>
    <div id="template" class="hidden">
        <li class='work'>
            <div class="relative">
                <label class="timeago" title="">timeago</label>
                <span class='date'>08 May 2013</span>
                <span class='circle'></span>
            </div>
            <div class='content'>
                <p>Kontent</p>
            </div>
        </li>
    </div>
{% endblock %}
{% block js_footer %}
    <script type="text/javascript" src="/js/jquery.timeago.js"></script>
    <script type="text/javascript" src="/js/jquery-dateFormat.min.js"></script>
    <script type="text/javascript" src="/js/app.js"></script>
{% endblock %}