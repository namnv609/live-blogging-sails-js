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
    						<p class="date" title="{{ event.createdAt | date(sails.config.myconfig.dateTimeFormat) }}">{{ event.createdAt | date(sails.config.myconfig.dateTimeFormat) }}</p>
    						<div class="title">
    							<a href="/events/edit/{{ event.event_id }}"  class="btn btn-green">
                                    <i class="fa fa-pencil"></i>
                                </a>
                                <a href="/events/delete" data-id="{{ event.event_id }}" class="btn btn-red remove-event">
                                    <i class="fa fa-times"></i>
                                </a>
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
    <script type="text/javascript" src="/js/jquery.timeago.js"></script>
{% endblock %}
