{% extends "layout/user.swig" %}

{% block content %}
    <h2>Live Blogging</h2>
    <p>Live event streaming!</p>
    <ul id='timeline'>
        {% if events %}
            {% for event in events %}
                <li class='work'>
                    <div class="relative">
                        <label>about an hour ago</label>
                        <span class='date'>{{ event.createdAt | date("d/m/Y H:i", "-420") }}</span>
                        <span class='circle'></span>
                    </div>
                    <div class='content'>
                        <p>
                            {{ event.created }}<br />
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
                <label>about an hour ago</label>
                <span class='date'>08 May 2013</span>
                <span class='circle'></span>
            </div>
            <div class='content'>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio ea necessitatibus quo velit natus cupiditate qui alias possimus ab praesentium nostrum quidem obcaecati nesciunt! Molestiae officiis voluptate excepturi rem veritatis eum aliquam qui laborum non ipsam ullam tempore reprehenderit illum eligendi cumque mollitia temporibus! Natus dicta qui est optio rerum.
                </p>
            </div>
        </li>
    </div>
{% endblock %}
{% block js_footer %}
    <script type="text/javascript" src="/js/jquery.formatDateTime.min.js"></script>
    <script type="text/javascript" src="/js/app.js"></script>
{% endblock %}