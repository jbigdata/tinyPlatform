<#include "../include/head.ftl">
<#include "../include/navbar.ftl">
<#include "../include/sidebar.ftl">
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

        <script>
            $(function () {
                $('#myTab a:last').tab('show');//初始化显示哪个tab

                $('#myTab a').click(function (e) {
                    e.preventDefault();//阻止a链接的跳转行为
                    $(this).tab('show');//显示当前选中的链接及关联的content
                })
            })
        </script>
        <!-- PAGE CONTENT ENDS -->
    </div><!-- /.col -->
</div>
<#include "../include/footer.ftl">
