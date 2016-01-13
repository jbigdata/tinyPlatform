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



    <div class="container">
        <table id="searchTable">
            <tr>
                <th w_index="XH" width="5%;">XH</th>
                <th w_index="ID" width="5%;">ID</th>
                <th w_index="CHAR" w_align="left" width="15%;">CHAR</th>
                <th w_index="TEXT" w_align="left" width="30%;">TEXT</th>
                <th w_index="DATE" width="15%;">DATE</th>
                <th w_index="TIME" width="15%;">TIME</th>
                <th w_index="NUM" width="5%;">NUM</th>
                <th w_render="operate" width="10%;">Operate</th>
            </tr>
        </table>
    </div>
    <script type="text/javascript">
        var gridObj;
        $(function () {
            gridObj = $.fn.bsgrid.init('searchTable', {
                url: '${base}/data.json',
                // autoLoad: false,
                pageSizeSelect: true,
                pagingLittleToolbar: true,
                pageSize: 10
            });

            $(':button').addClass('btn btn-mini');
        });

        function operate(record, rowIndex, colIndex, options) {
            return '<a href="#" onclick="alert(\'ID=' + gridObj.getRecordIndexValue(record, 'ID') + '\');">Operate</a>';
        }
    </script>
</div>
