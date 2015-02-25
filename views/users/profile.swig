{% extends "../layout/admin.swig" %}

{% block content %}
    <div class="row mbl">
        <div class="col-lg-2"></div>
        <div class="col-lg-8">
            <div class="panel panel-green">
                <div class="panel-body pan">
                    <form action="/profile" method="post" autocomplete="off" class="form-horizontal">
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
                                <label for="name" class="control-label col-md-3">Name</label>
                                <div class="col-md-9">
                                    <input type="text" class="form-control" name="name" id="name" value="{{ user.name | default('') }}" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="email" class="control-label col-md-3">Email</label>
                                <div class="col-md-9">
                                    <input type="text" class="form-control" name="email" id="email" disabled="disabled" value="{{ user.email | default('') }}" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="password" class="control-label col-md-3">Password</label>
                                <div class="col-md-9">
                                    <input type="password" name="password" id="password" class="form-control" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="repassword" class="control-label col-md-3">Re-Password</label>
                                <div class="col-md-9">
                                    <input type="password" name="repassword" id="repassword" class="form-control" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3">&nbsp;</label>
                                <div class="col-md-9">
                                    <button type="submit" class="btn btn-primary">
                                        <i class="fa fa-save"></i> Update
                                    </button>
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