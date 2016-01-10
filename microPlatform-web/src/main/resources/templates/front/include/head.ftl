<#assign base=request.contextPath />
<#import "../../common/spring.ftl" as spring/>
<!DOCTYPE html>
<html class="login-bg">
<head>
    <title>${siteName} - <@spring.message "html.title.login" /></title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="${base}/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="${base}/css/bootstrapValidator.css"/>
    <link rel="stylesheet" href="${base}/css/styles.css"/>

    <script type="text/javascript" src="${base}/js/jquery.min.js"></script>
    <script type="text/javascript" src="${base}/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${base}/js/bootstrapValidator.js"></script>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
</head>
<body>