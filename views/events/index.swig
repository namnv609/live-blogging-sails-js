{% extends "../layout/admin.swig" %}
{% block stylesheet %}
    <link rel="stylesheet" href="/styles/admin/style.css" />
    <link rel="stylesheet" href="/styles/admin/jplist-custom.css" />
{% endblock %}
{% block content %}
    <div class="row">
    	<div class="col-lg-12">
    		<table class="demo-tbl">
    			<tbody>
    				{% if events %}
						{% for event in events %}
					<tr class="tbl-item">
    					<td class="td-block">
    						<p class="date" title="{{ event.createdAt | date("m/d/Y H:i") }}">{{ event.createdAt | date("m/d/Y H:i") }}</p>
    						<div class="title">
    							<a href="/events/edit/{{ event.id }}">Edit</a> | <a href="/events/delete/{{ event.id }}">Delete</a>
    						</div>
    						<p class="desc">
    							{{ event.content }}
    						</p>
    					</td>
    				</tr>
						{% endfor %}
    				{% endif %}
    			</tbody>
    		</table>
    	</div>
    </div>
{% endblock %}
{% block js_footer %}
    <script type="text/javascript" src="/js/admin/app.js"></script>
    <script type="text/javascript" src="/js/jquery.timeago.js"></script>
{% endblock %}