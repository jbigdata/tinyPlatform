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

<div class="table-responsive">
    <table class="table table-striped">
        <thead>
        <tr>
            <th>#</th>
            <th>Header</th>
            <th>Header</th>
            <th>Header</th>
            <th>Header</th>
        </tr>
        </thead>
        <tbody>
        <#list userList as user>

        <tr>
            <td>${user.id}</td>
            <td>${user.name}</td>
            <td>ipsum</td>
            <td>dolor</td>
            <td>sit</td>
        </tr>
        </#list>
        </tbody>
    </table>
</div>