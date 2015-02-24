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
                                <label for="siteName" class="control-label col-md-3">Website name</label>
                                <div class="col-md-9">
                                    <input type="text" class="form-control" name="siteName" value="{{ config.siteName | default('') }}" id="siteName" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="siteDescription" class="control-label col-md-3">Website description</label>
                                <div class="col-md-9">
                                    <input type="text" class="form-control" name="siteDescription" value="{{ config.siteDescription | default('') }}" id="siteDescription" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="siteKeyword" class="control-label col-md-3">Website keyword</label>
                                <div class="col-md-9">
                                    <input type="text" class="form-control" name="siteKeyword" value="{{ config.siteKeyword | default('') }}" id="siteKeyword" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="siteFooter" class="control-label col-md-3">Website description</label>
                                <div class="col-md-9">
                                    <textarea class="form-control ckeditor" rows="10" name="siteFooter" id="siteFooter">{{ config.siteFooter | default('') }}</textarea>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3">&nbsp;</label>
                                <div class="col-md-9">
                                    <button type="submit" class="btn btn-primary pull-right">Update configuration</button>
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