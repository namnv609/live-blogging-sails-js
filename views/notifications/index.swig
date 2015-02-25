{% extends "../layout/admin.swig" %}

{% block content %}
    <div class="row mbl">
        <div class="col-lg-2"></div>
        <div class="col-lg-8">
            <div class="panel panel-green">
                <div class="panel-body pan">
                    <form action="/settings" method="post" autocomplete="off" class="form-horizontal">
                        <div class="form-body pal">
                            {% if req.session.flash && req.session.flash.errors %}
                                <div class="alert alert-danger">
                                {% set errors = req.session.flash.errors %}
                                {% for error in errors %}
                                    <p>{{ error }}</p>
                                {% endfor %}
                                </div>
                            {% endif %}
                            {% if req.session.flash && req.session.flash.message %}
                                <div class="alert alert-success">
                                    <p>{{ req.session.flash.message }}</p>
                                </div>
                            {% endif %}
                            {% set req.session.flash = null %}
                            <div class="form-group">
                                <label for="notifyTitle" class="control-label col-md-3">Title</label>
                                <div class="col-md-9">
                                    <input type="text" class="form-control" name="notifyTitle" id="notifyTitle" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="notifyMessage" class="control-label col-md-3">Message</label>
                                <div class="col-md-9">
                                    <input type="text" class="form-control" name="notifyMessage" id="notifyMessage" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3">Notification type</label>
                                <div class="col-md-9">
                                    Notification type
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="col-lg-2"></div>
    </div>
{% endblock %}