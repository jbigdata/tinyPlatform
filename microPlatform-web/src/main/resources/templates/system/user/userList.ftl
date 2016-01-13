<ol class="breadcrumb">
    <li><a href="#">Home</a></li>
    <li><a href="#">Library</a></li>
    <li class="active">Data</li>
</ol>
<div class="row">
    <div class="col-xs-12">
        <ul class="nav nav-tabs" id="myTab">
            <li class="active"><a href="#home">Home</a></li>
            <li><a href="#profile">Profile</a></li>
            <li><a href="#messages">Messages</a></li>
            <li><a href="#settings">Settings</a></li>
        </ul>

        <div class="tab-content">
            <div class="tab-pane active" id="home">...</div>
            <div class="tab-pane" id="profile">...</div>
            <div class="tab-pane" id="messages">...</div>
            <div class="tab-pane" id="settings">...</div>
        </div>
    </div>
    <!-- /.col -->
</div>
<div class="panel panel-default">
    <!-- Default panel contents -->
    <div class="panel-heading">Panel heading</div>
    <div class="table-responsive">
        <table class="table table-striped">
            <thead>
            <tr>
                <th>编号</th>
                <th>用户名称</th>
                <th>电话</th>
                <th>邮箱</th>
                <th>用户名</th>
                <th>用户类型</th>
            </tr>
            </thead>
            <tbody>
            <#list page.data as user>

            <tr>
                <td>${user.id!''}</td>
                <td>${user.name!''}</td>
                <td>${user.mobile!''}</td>
                <td>${user.email!''}</td>
                <td>${user.loginName!''}</td>
                <td><span class="label label-default">普通用户</span></td>

            </tr>
            </#list>
            </tbody>
        </table>
    </div>
    <nav>   ${page.html}
    </nav>
</div>
