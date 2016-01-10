<#include "system/include/head.ftl">
<#include "system/include/navbar.ftl">
<div class="container-fluid">
    <div class="row">
    <#include "system/include/sidebar.ftl">
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
