
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                    aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">${siteName}</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse navbar-right">
            <ul class="nav navbar-nav">
                <li class="active"><a href="${base}/">首页</a></li>
            <#if !currentUser??>
                <li><a href="${base}/register">加入我们</a></li>
            </#if>
            <#if currentUser??>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">${currentUser.user.email}<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">设置</a></li>
                        <li><a href="${base}/user/${currentUser.id}">个人资料</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="${base}/logout">退出</a></li>
                    </ul>
                </li>

            </#if>
                <li><a href="#contact">帮助</a></li>
            </ul>
        </div>
        <!--/.nav-collapse -->
    </div>
</nav>