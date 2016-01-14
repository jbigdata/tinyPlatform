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
    <table class="table table-striped" id="searchTable">
        <thead>
        <tr>
            <th  w_index="id"  width="5%;">编号</th>
            <th w_index="name" w_sort="name"  width="5%;">名称</th>
            <th w_index="loginName" w_align="left" width="15%;">登录名</th>
            <th w_index="mobile" w_align="left" width="30%;">电话</th>
            <th w_index="email" width="15%;">邮箱地址</th>
            <th w_index="loginName" width="15%;">TIME</th>
            <th w_index="loginName" width="5%;">NUM</th>
            <th w_render="operate" width="10%;">操作</th>
        </tr>
        </thead>
        <tbody>
        </tbody>
    </table>
</div>
<script type="text/javascript">
    var gridObj;
    $(function () {
        gridObj = $.fn.bsgrid.init('searchTable', {
            url: '/user/userList?${_csrf.parameterName}=${_csrf.token}',
            // autoLoad: false,
            pageSizeSelect: true,
            pagingLittleToolbar: true,
            pageSize: 10
        });

        $(':button').addClass('btn btn-mini');
    });

    function operate(record, rowIndex, colIndex, options) {
        return '<a href="#" onclick="alert(\'ID=' + gridObj.getRecordIndexValue(record, 'ID') + '\');">修改</a>';
    }
</script>
