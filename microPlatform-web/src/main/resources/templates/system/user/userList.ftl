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

    <div class="bs-docs-example">
        <p class="well demo content1">
            Dynamic content here.
        </p>

        <p class="demo demo1"></p>
    </div>


    <script type="text/javascript">
        $('.demo1').bootpag({
            total: 5
        }).on("page", function (event, num) {
            $(".content1").html("Page " + num); // or some ajax content loading...

            // ... after content load -> change total to 10
            $(this).bootpag({total: 10, maxVisible: 10});

        });
    </script>


    {"success": true, "totalRows": 26, "curPage": 2, "data": [{"XH": 11,"ID": 90,"CHAR": "char_10","TEXT":
    "TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_10","DATE": "2012-12-12 15:01:01","TIME":
    "15:01:01","NUM": 100},{"XH": 12,"ID": 89,"CHAR": "char_11","TEXT":
    "TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_11","DATE": "2012-12-12 15:01:01","TIME":
    "15:01:01","NUM": 110},{"XH": 13,"ID": 88,"CHAR": "char_12","TEXT":
    "TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_12","DATE": "2012-12-12 15:01:01","TIME":
    "15:01:01","NUM": 120},{"XH": 14,"ID": 87,"CHAR": "char_13","TEXT":
    "TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_13","DATE": "2012-12-12 15:01:01","TIME":
    "15:01:01","NUM": 130},{"XH": 15,"ID": 86,"CHAR": "char_14","TEXT":
    "TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_14","DATE": "2012-12-12 15:01:01","TIME":
    "15:01:01","NUM": 140},{"XH": 16,"ID": 85,"CHAR": "char_15","TEXT":
    "TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_15","DATE": "2012-12-12 15:01:01","TIME":
    "15:01:01","NUM": 150},{"XH": 17,"ID": 84,"CHAR": "char_16","TEXT":
    "TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_16","DATE": "2012-12-12 15:01:01","TIME":
    "15:01:01","NUM": 160},{"XH": 18,"ID": 83,"CHAR": "char_17","TEXT":
    "TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_17","DATE": "2012-12-12 15:01:01","TIME":
    "15:01:01","NUM": 170},{"XH": 19,"ID": 82,"CHAR": "char_18","TEXT":
    "TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_18","DATE": "2012-12-12 15:01:01","TIME":
    "15:01:01","NUM": 180},{"XH": 20,"ID": 81,"CHAR": "char_19","TEXT":
    "TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_TEXT_19","DATE": "2012-12-12 15:01:01","TIME":
    "15:01:01","NUM": 190}]}
</div>
