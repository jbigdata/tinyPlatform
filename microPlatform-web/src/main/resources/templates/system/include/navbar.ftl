<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                    aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">microPlatform开放平台</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
            <#list menuList as menu>
                <#if menu.parentId=="1">
                    <li><a href="#">${menu.name}</a></li>
                </#if>
            </#list>

            </ul>

            <ul class="nav navbar-nav navbar-right">
            <#if currentUser??>
            <li class="dropdown">

                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false"><span class="glyphicon glyphicon-user"></span> ${currentUser.user.email}<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">设置</a></li>
                        <li><a href="${base}/user/${currentUser.id}">个人资料</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="${base}/logout">退出</a></li>
                    </ul>
                </li>
            </#if>
            </ul>
            <form class="navbar-form navbar-right">
                <input type="text" class="form-control" placeholder="关键字...">
            </form>
        </div>
    </div>
</nav>
