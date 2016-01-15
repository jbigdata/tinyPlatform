<#include "system/include/head.ftl">
<#include "system/include/navbar.ftl">
<div class="container-fluid">
    <div class="row">
        <div id="sidebar-left" class="col-sm-3 col-md-2 nav-tabs sidebar">

            <ul class="nav nav-sidebar main-menu" id="left_nav">
            </ul>
        </div>
        <!--Start Content-->
        <div id="content" class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
            <div class="preloader">
                <img src="${base}/images/load.gif" class="devoops-getdata" alt="preloader"/>
            </div>
            <div id="ajax-content"></div>
        </div>
        <!--End Content-->
    </div>
</div>
<#include "system/include/footer.ftl">
