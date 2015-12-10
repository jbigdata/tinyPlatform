<#assign base=request.contextPath />

<!DOCTYPE html>
<html class="login-bg">
<head>
    <title>Detail Admin - Sign in</title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <!-- bootstrap -->
    <link href="${base}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${base}/css/bootstrap-responsive.css" rel="stylesheet">

    <!-- this page specific styles -->
    <link rel="stylesheet" href="${base}/css/login.css" type="text/css" media="screen" />

      <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
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


<div class="row-fluid login-wrapper">
    <a href="index.html">
        <img class="logo" src="images/logo-white.png" />
    </a>

    <div class="span4 box">
        <div class="content-wrap">
            <h6>用户登录</h6>
            <input class="form-control" type="text" placeholder="E-mail address" />
            <input class="form-control" type="password" placeholder="Your password" />
            <a href="#" class="forgot">Forgot password?</a>
            <div class="remember">
                <input id="remember-me" type="checkbox" />
                <label for="remember-me">Remember me</label>
            </div>
            <a class="btn btn-primary btn-lg" href="index.html">登录</a>
        </div>
    </div>

    <div class="span4 no-account">
        <p>Don't have an account?</p>
        <a href="signup.html">Sign up</a>
    </div>
</div>

<!-- scripts -->
<script src="${base}/js/jquery.min.js"></script>
<script src="${base}/js/bootstrap.min.js"></script>
<script src="js/theme.js"></script>

<!-- pre load bg imgs -->
</body>
</html>