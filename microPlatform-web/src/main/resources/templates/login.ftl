<#assign base=request.contextPath />

<!DOCTYPE html>
<html class="login-bg">
<head>
    <title>${siteName} - 登录</title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <!-- bootstrap -->
    <link href="${base}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${base}/css/bootstrap-responsive.css" rel="stylesheet">
    <link href="${base}/css/bootstrapValidator.min.css" rel="stylesheet">
    <!-- this page specific styles -->
    <link rel="stylesheet" href="${base}/css/login.css" type="text/css" media="screen"/>
    <script src="${base}/js/bootstrapValidator.min.js"/>
    <script src="${base}/js/jquery.min.js"></script>
    <script src="${base}/js/bootstrap.min.js"></script>


    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <script type="text/javascript">
        $(document).ready(function() {
            // Generate a simple captcha

            $('#defaultForm').bootstrapValidator({
//        live: 'disabled',
                message: 'This value is not valid',
                feedbackIcons: {
                    valid: 'glyphicon glyphicon-ok',
                    invalid: 'glyphicon glyphicon-remove',
                    validating: 'glyphicon glyphicon-refresh'
                },
                fields: {
                    firstName: {
                        group: '.col-lg-4',
                        validators: {
                            notEmpty: {
                                message: 'The first name is required and cannot be empty'
                            }
                        }
                    },
                    lastName: {
                        group: '.col-lg-4',
                        validators: {
                            notEmpty: {
                                message: 'The last name is required and cannot be empty'
                            }
                        }
                    },
                    username: {
                        message: 'The username is not valid',
                        validators: {
                            notEmpty: {
                                message: 'The username is required and cannot be empty'
                            },
                            stringLength: {
                                min: 6,
                                max: 30,
                                message: 'The username must be more than 6 and less than 30 characters long'
                            },
                            regexp: {
                                regexp: /^[a-zA-Z0-9_\.]+$/,
                                message: 'The username can only consist of alphabetical, number, dot and underscore'
                            },
                            remote: {
                                type: 'POST',
                                url: 'remote.php',
                                message: 'The username is not available'
                            },
                            different: {
                                field: 'password,confirmPassword',
                                message: 'The username and password cannot be the same as each other'
                            }
                        }
                    },
                    email: {
                        validators: {
                            emailAddress: {
                                message: 'The input is not a valid email address'
                            }
                        }
                    },
                    password: {
                        validators: {
                            notEmpty: {
                                message: 'The password is required and cannot be empty'
                            },
                            identical: {
                                field: 'confirmPassword',
                                message: 'The password and its confirm are not the same'
                            },
                            different: {
                                field: 'username',
                                message: 'The password cannot be the same as username'
                            }
                        }
                    },
                    confirmPassword: {
                        validators: {
                            notEmpty: {
                                message: 'The confirm password is required and cannot be empty'
                            },
                            identical: {
                                field: 'password',
                                message: 'The password and its confirm are not the same'
                            },
                            different: {
                                field: 'username',
                                message: 'The password cannot be the same as username'
                            }
                        }
                    },
                    birthday: {
                        validators: {
                            date: {
                                format: 'YYYY/MM/DD',
                                message: 'The birthday is not valid'
                            }
                        }
                    },
                    gender: {
                        validators: {
                            notEmpty: {
                                message: 'The gender is required'
                            }
                        }
                    },
                    'languages[]': {
                        validators: {
                            notEmpty: {
                                message: 'Please specify at least one language you can speak'
                            }
                        }
                    },
                    'programs[]': {
                        validators: {
                            choice: {
                                min: 2,
                                max: 4,
                                message: 'Please choose 2 - 4 programming languages you are good at'
                            }
                        }
                    },
                    captcha: {
                        validators: {
                            callback: {
                                message: 'Wrong answer',
                                callback: function(value, validator) {
                                    var items = $('#captchaOperation').html().split(' '), sum = parseInt(items[0]) + parseInt(items[2]);
                                    return value == sum;
                                }
                            }
                        }
                    }
                }
            });

            $('#resetBtn').click(function() {
                $('#defaultForm').data('bootstrapValidator').resetForm(true);
            });
        });
    </script>
</head>
<body>


<!-- background switcher -->
<#--<div class="bg-switch visible-desktop">-->
<#--<div class="bgs">-->
<#--<a href="#" data-img="landscape.jpg" class="bg active">-->
<#--<img src="img/bgs/landscape.jpg" />-->
<#--</a>-->
<#--<a href="#" data-img="blueish.jpg" class="bg">-->
<#--<img src="img/bgs/blueish.jpg" />-->
<#--</a>-->
<#--<a href="#" data-img="7.jpg" class="bg">-->
<#--<img src="img/bgs/7.jpg" />-->
<#--</a>-->
<#--<a href="#" data-img="8.jpg" class="bg">-->
<#--<img src="img/bgs/8.jpg" />-->
<#--</a>-->
<#--<a href="#" data-img="9.jpg" class="bg">-->
<#--<img src="img/bgs/9.jpg" />-->
<#--</a>-->
<#--<a href="#" data-img="10.jpg" class="bg">-->
<#--<img src="img/bgs/10.jpg" />-->
<#--</a>-->
<#--<a href="#" data-img="11.jpg" class="bg">-->
<#--<img src="img/bgs/11.jpg" />-->
<#--</a>-->
<#--</div>-->
<#--</div>-->

<form id="defaultForm" method="post" class="form-horizontal" action="/login">
<div class="row-fluid login-wrapper">
        <a href="index.html">
            <img class="logo" src="${base}/images/logo-white.png"/>
        </a>

        <div class="span4 box">
            <div class="content-wrap">
                <h6>用户登录</h6>
                <input class="form-control" name="username" check-type="required" required-message="请输入用户名" type="text"
                       placeholder="邮箱/用户名/已验证手机号"/>
                <input class="form-control" name="password" check-type="required" required-message="请输入密码"
                       type="password" placeholder="密码"/>
                <a href="#" class="forgot">忘记密码?</a>

                <div class="remember">
                    <input id="remember-me" type="checkbox"/>
                    <label for="remember-me">自动登录</label>
                </div>
                <input type="submit" id="submit1" class="btn btn-primary btn-block" value="登 录"/>
            </div>
        </div>
        <div class="span4 no-account">
            <p>如果您还未加入我们?</p>
            <a href="signup.html">立即加入</a>
        </div>
    </div>

</form>

</body>
</html>