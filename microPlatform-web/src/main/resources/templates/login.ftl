<#include "front/include/head.ftl">
<#include "front/include/navbar.ftl">
<div class="container theme-showcase" role="main">
    <div class="row-fluid login-wrapper">

        <div class="col-md-6 col-md-offset-3">
            <br>

            <div class=" page-header center-block">
                <h3>用户登录</h3>
            </div>
            <ul id="myTabs" class="nav nav-tabs" role="tablist">
                <li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab"
                                                          aria-controls="home" aria-expanded="true">普通登录</a></li>
                <li role="presentation" class=""><a href="#profile" role="tab" id="profile-tab" data-toggle="tab"
                                                    aria-controls="profile" aria-expanded="false">快捷登录</a></li>

            </ul>
            <div id="myTabContent" class="tab-content">
                <div role="tabpanel" class="tab-pane fade active in" id="home" aria-labelledby="home-tab">
                    <p></p>
                    <form id="defaultForm" method="post" class="form-horizontal" action="${base}/login">
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

                        <div class="form-group">
                            <div class="col-md-6 col-md-offset-3">
                                <input type="text" class="form-control" name="username" placeholder="邮箱/用户名/已验证手机号"
                                       autocomplete="off"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-6 col-md-offset-3">
                                <input type="password" class="form-control" placeholder="请输入密码" name="password"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-6 col-md-offset-3">
                                <div class="row">
                                    <div class="col-xs-7 col-sm-6">
                                        <input type="text" class="form-control l" placeholder="验证码" name="verification"/>
                                    </div>
                                    <div class="col-xs-5 col-sm-6">
                                        <img id="vcodeImg" style="vertical-align: middle;"
                                             onclick="javascript:document.getElementById('vcodeImg').src='${base}/captcha.jpg?k={en7mni(z&p=ucenter_login&c=ef7d278eca6d25aa6aec7272d57f0a9a&t='+new Date().getTime() "
                                             title="点击更换" alt="验证图片" src="${base}/captcha.jpg" height="35" width="110">
                                    </div>
                                </div>

                            </div>

                        </div>
                        <div class="form-group">
                            <div class="col-md-6 col-md-offset-3 checkbox">
                                <label>
                                    <input type="checkbox" id="remember-me" name="remember-me" value="true"/> 自动登录
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
                <div role="tabpanel" class="tab-pane fade" id="profile" aria-labelledby="profile-tab">
                    <p>
                    <form id="defaultForm1" method="post" class="form-horizontal" action="${base}/login">
                        <div class="form-group">
                            <div class="col-md-6 col-md-offset-3">
                                <input type="text" class="form-control" name="" placeholder="已验证手机号"
                                       autocomplete="off"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-6 col-md-offset-3">
                                <div class="row">
                                    <div class="col-xs-7 col-sm-6">
                                        <input type="text" class="form-control l" placeholder="验证码" name="verification"/>
                                    </div>
                                    <div class="col-xs-5 col-sm-6">
                                        <button type="button"   class="btn btn-primary btn-block" onclick="settime(this)" >获取验证码</button>
                                    </div>
                                </div>

                            </div>

                        </div>
                        <div class="form-group">
                            <div class="col-md-6 col-md-offset-3">
                                <button type="submit" class="btn btn-primary btn-block">登录</button>
                            </div>
                        </div>

                    </form>
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>
    <script type="text/javascript">
        $(document).ready(function () {
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
                                callback: function (value, validator) {
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

        var countdown=60;
        function settime(obj) {
            if (countdown == 0) {
                obj.removeAttribute("disabled");
                obj.innerText="获取验证码";
                countdown = 60;
                return;
            } else {
                obj.setAttribute("disabled", true);
                obj.innerText="重新发送(" + countdown + ")";
                countdown--;
            }
            setTimeout(function() {
                        settime(obj) }
                    ,1000)
        }
    </script>
<#include "front/include/footer.ftl">