<div class="col-sm-3 col-md-2 nav-tabs sidebar">

<#list menuList as menu>
    <#if menu_index==0>
        <#list menuList as menu1>
            <#if menu.id==menu1.parentId>
                <ul class="nav nav-sidebar">
                    <li class="active"><a href="#"><i class="glyphicon glyphicon-home"></i> 首页 <span class="sr-only">(current)</span></a>
                    </li>
                    <li class=""><a href="#"> <i class="glyphicon glyphicon-user"></i> 用户管理</a></li>
                    <li><a href="#"><i class="glyphicon glyphicon-list"></i> 菜单管理</a></li>
                    <li><a href="#"><i class="glyphicon glyphicon-dashboard"></i> 权限管理</a></li>
                </ul>
            </#if>
        </#list>
    </#if>
</#list>
    <ul class="nav nav-sidebar">
        <li><a href=""><i class="glyphicon glyphicon-qrcode"></i> Nav item</a></li>
        <li><a href=""><i class="glyphicon glyphicon-saved"></i> Nav item again</a></li>
        <li><a href=""><i class="glyphicon glyphicon-list-alt"></i> One more nav</a></li>
        <li><a href=""><i class="glyphicon glyphicon-th-list"></i> Another nav item</a></li>
        <li><a href=""><i class="glyphicon glyphicon-apple"></i> More navigation</a></li>
    </ul>
    <ul class="nav nav-sidebar">
        <li><a href=""><i class="glyphicon glyphicon-lamp"></i> Nav item again</a></li>
        <li><a href=""><i class="glyphicon glyphicon-sd-video"></i> One more nav</a></li>
        <li><a href=""><i class="glyphicon glyphicon-align-center"></i> Another nav item</a></li>
    </ul>
</div>