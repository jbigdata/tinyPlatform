<#assign base=request.contextPath />
<!DOCTYPE html>
<html class="login-bg">
<head>
    <title>${siteName} - 登录</title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <#--<!-- bootstrap &ndash;&gt;-->
    <#--<link href="${base}/css/bootstrap.min.css" rel="stylesheet">-->
    <#--<link href="${base}/css/bootstrap-responsive.css" rel="stylesheet">-->
    <#--<link href="${base}/css/bootstrapValidator.min.css" rel="stylesheet">-->
    <!-- this page specific styles -->
    <#--<link rel="stylesheet" href="${base}/css/login.css" type="text/css" media="screen"/>-->
    <#--<script src="${base}/js/bootstrapValidator.min.js"/>-->
    <#--<script src="${base}/js/jquery.min.js"></script>-->
    <#--<script src="${base}/js/bootstrap.min.js"></script>-->


    <link rel="stylesheet" href="${base}/css/bootstrap.css"/>
    <link rel="stylesheet" href="${base}/css/bootstrapValidator.css"/>

    <script type="text/javascript" src="${base}/js/jquery.min.js"></script>
    <script type="text/javascript" src="${base}/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${base}/js/bootstrapValidator.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
</head>
<body>

<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">${siteName}</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse navbar-right">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">首页</a></li>
                <li><a href="${base}/reg">加入我们</a></li>
                <li><a href="#contact">帮助</a></li>
            </ul>
        </div><!--/.nav-collapse -->
    </div>
</nav>
<div class="container theme-showcase" role="main">
    <div class="row-fluid login-wrapper">

        <div class="col-md-6 col-md-offset-3">
           <br>
            <div class=" page-header center-block">
                <h3>用户登录</h3>
            </div>
            <form id="defaultForm" method="post" class="form-horizontal" action="${base}/login">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <div class="form-group">
                     <div class="col-md-6 col-md-offset-3">
                        <input type="text" class="form-control" name="loginName" placeholder="邮箱/用户名/已验证手机号" autocomplete="off" />
                    </div>
                </div>
                <div class="form-group">
                     <div class="col-md-6 col-md-offset-3">
                        <input type="password" class="form-control" placeholder="请输入密码" name="password" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-6 col-md-offset-3">
                        <div class="row">
                            <div class="col-xs-8 col-sm-6">
                                <input type="text" class="form-control l" placeholder="验证码" name="verification" />
                            </div>
                            <div class="col-xs-4 col-sm-6">
                                <img id="vcodeImg" style="vertical-align: middle;" onclick="javascript:document.getElementById('vcodeImg').src='${base}/captcha.jpg?k={en7mni(z&p=ucenter_login&c=ef7d278eca6d25aa6aec7272d57f0a9a&t='+new Date().getTime() " title="点击更换" alt="验证图片" src="${base}/captcha.jpg" height="38" width="110">
                            </div>
                        </div>

                    </div>

                </div>
                <div class="form-group">
                    <div class="col-md-6 col-md-offset-3 checkbox">
                        <label>
                            <input type="checkbox" id="remember-me" name="remember-me"  value="true" /> 自动登录
                        </label>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-6 col-md-offset-3">
                        <button type="submit" class="btn btn-primary btn-block">登录</button>
                    </div>
                </div>

            </form>
        </div>
</div>
    <script type="text/javascript">
        $(document).ready(function() {
            $('#defaultForm').bootstrapValidator({
                message: '请输入有效信息',
                feedbackIcons: {
                    valid: 'glyphicon glyphicon-ok',
                    invalid: 'glyphicon glyphicon-remove',
                    validating: 'glyphicon glyphicon-refresh'
                },
                fields: {
                    loginName: {
                        message: '请输入账号',
                        validators: {
                            notEmpty: {
                                message: '账号不允许为空'
                            },
                            regexp: {
                                regexp: /^[a-zA-Z0-9_@\.]+$/,
                                message: '用户名只能包含字母,数字,点和下划线'
                            },
                        }
                    },
                    verification: {
                        message: '请输入验证码',
                        validators: {
                            notEmpty: {
                                message: '请输入验证码'
                            }
                            <#--remote:{-->
                                <#--type:"GET",-->
                                <#--url:"${base}/checkVerification",-->
                                <#--message:"验证码输入错误"-->
                            <#--}-->

                        }
                    },
                    password: {
                        validators: {
                            notEmpty: {
                                message: '请输入密码'
                            },
                            callback: {
                                callback: function(value, validator) {
                                    // Check the password strength
                                    if (value.length < 6) {
                                        return {
                                            valid: false,
                                            message: '密码长度大于6位'
                                        }
                                    }
                                    return true;
                                }
                            }
                        }
                    }
                }
            });
        });
    </script>
</body>
</html>