<!DOCTYPE html>
<html lang="vi-VN">
    <head>
        <title>{{ title | default("Dashboard") }} | Live Blogging - Live event streaming</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link type="text/css" rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,400,300,700" />
        <link type="text/css" rel="stylesheet" href="http://fonts.googleapis.com/css?family=Oswald:400,700,300" />
        <link type="text/css" rel="stylesheet" href="/styles/admin/font-awesome.min.css" />
        <link type="text/css" rel="stylesheet" href="/styles/admin/bootstrap.min.css" />
        <link type="text/css" rel="stylesheet" href="/styles/admin/main.css" />
        <link type="text/css" rel="stylesheet" href="/styles/admin/style-responsive.css" />
        {% block stylesheet %}{% endblock %}
    </head>
    <body>
        <div>
            <!--BEGIN TOPBAR-->
            <div id="header-topbar-option-demo" class="page-header-topbar">
                <nav id="topbar" role="navigation" style="margin-bottom: 0;" data-step="3" class="navbar navbar-default navbar-static-top">
                    <div class="navbar-header">
                        <button type="button" data-toggle="collapse" data-target=".sidebar-collapse" class="navbar-toggle">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a id="logo" href="/admin" class="navbar-brand">
                            <span class="fa fa-rocket"></span>
                            <span class="logo-text">LiveAdmin</span>
                            <span style="display: none" class="logo-text-icon">µ</span>
                        </a>
                    </div>
                    <div class="topbar-main">
                        <a id="menu-toggle" class="hidden-xs"><i class="fa fa-bars"></i></a>
                        <ul class="nav navbar navbar-top-links navbar-right mbn">
                            <li class="dropdown topbar-user">
                                <a data-hover="dropdown" href="#" class="dropdown-toggle">
                                    <img src="/images/admin/avatar/profile-pic.png" alt="" class="img-responsive img-circle"/>
                                    &nbsp;<span class="hidden-xs">{{ req.session.user.name }}</span>&nbsp;
                                    <span class="caret"></span>
                                </a>
                                <ul class="dropdown-menu dropdown-user pull-right">
                                    <li><a href="/" target="_blank"><i class="fa fa-home"></i>View Site</a></li>
                                    <li class="divider"></li>
                                    <li><a href="/profile"><i class="fa fa-user"></i>My Profile</a></li>
                                    <li class="divider"></li>
                                    <li><a href="/logout"><i class="fa fa-key"></i>Log Out</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
            <!--END TOPBAR-->
            <div id="wrapper">
                <!--BEGIN SIDEBAR MENU-->
                <nav style="min-height: 100%;" id="sidebar" role="navigation" data-step="2" data-intro="Template has <b>many navigation styles</b>" data-position="right" class="navbar-default navbar-static-side">
                    <div class="sidebar-collapse menu-scroll">
                        <ul id="side-menu" class="nav">
                            <div class="clearfix"></div>
                            <li>
                                <a href="/settings">
                                    <i class="fa fa-cog fa-fw">
                                        <div class="icon-bg bg-orange"></div>
                                    </i>
                                    <span class="menu-title">Website configurations</span>
                                </a>
                            </li>
                            <li>
                                <a href="/events">
                                    <i class="fa fa-code fa-fw">
                                        <div class="icon-bg bg-pink"></div>
                                    </i>
                                    <span class="menu-title">Event manage</span>
                                </a>
                            </li>
                            <li>
                                <a href="/events/add">
                                    <i class="fa fa-plus fa-fw">
                                        <div class="icon-bg bg-pink"></div>
                                    </i>
                                    <span class="menu-title">Add event</span>
                                </a>
                            </li>
                            <!--<li>
                                <a href="/notifications">
                                    <i class="fa fa-comments-o fa-fw">
                                        <div class="icon-bg bg-pink"></div>
                                    </i>
                                    <span class="menu-title">Notifications</span>
                                </a>
                            </li>-->
                        </ul>
                    </div>
                </nav>
                <!--END SIDEBAR MENU-->
                <!--BEGIN PAGE WRAPPER-->
                <div id="page-wrapper">
                    <!--BEGIN TITLE & BREADCRUMB PAGE-->
                    <div id="title-breadcrumb-option-demo" class="page-title-breadcrumb">
                        <div class="page-header pull-left">
                            <div class="page-title">
                                {{ title | default("Dashboard") }}
                            </div>
                        </div>
                        <div class="clearfix">
                        </div>
                    </div>
                    <!--END TITLE & BREADCRUMB PAGE-->
                    <!--BEGIN CONTENT-->
                    <div class="page-content">
                        <div id="tab-general">
                            {% block content %}{% endblock %}
                        </div>
                    </div>
                    <!--END CONTENT-->
                    <!--BEGIN FOOTER-->
                    <div id="footer">
                        <div class="copyright">
                            <a href="http://themifycloud.com">2014 © KAdmin Responsive Multi-Purpose Template</a>
                        </div>
                    </div>
                    <!--END FOOTER-->
                </div>
                <!--END PAGE WRAPPER-->
            </div>
        </div>
        <script src="/js/dependencies/sails.io.js" type="text/javascript"></script>
        <script src="/js/jquery-1.11.2.min.js" type="text/javascript"></script>
        <script src="/js/admin/bootstrap.min.js" type="text/javascript"></script>
        <script src="/js/admin/bootstrap-hover-dropdown.js" type="text/javascript"></script>
        <script src="/js/admin/ckeditor/ckeditor.js" type="text/javascript"></script>
        <script src="/js/admin/app.js" type="text/javascript"></script>
        {% block js_footer %}{% endblock %}
    </body>
</html>
