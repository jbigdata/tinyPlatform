<#assign base=request.contextPath />
<#import "common/spring.ftl" as spring/>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="">

    <title>${siteName} - <@spring.message "html.title.index" /></title>

    <script src="${base}/js/jquery.min.js"></script>
    <script src="${base}/js/bootstrap.min.js"></script>

    <!-- Bootstrap core CSS -->
    <link href="${base}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${base}/css/icon.css" rel="stylesheet">

   <!-- Custom styles for this template -->
    <link href="css/offcanvas.css" rel="stylesheet">
</head>

<body>

<#include "front/include/navbar.ftl" >

<div class="container">

    <div class="row row-offcanvas row-offcanvas-right">

        <div class="col-xs-12 col-sm-9">
            <p class="pull-right visible-xs">
                <button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas">展开菜单</button>
            </p>
            <div class="panel panel-default" id="lists">
                <div class="panel-heading">每日资讯
                    <small><a href="" class="pull-right"></a></small>
                </div>
            </div>
            <div class="alert alert-warning nodata" role="alert"></div>
            <!--/row-->
        </div>
        <!--/.col-xs-12.col-sm-9-->

        <div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="sidebar">
            <div class="list-group">
                <a href="#" class="list-group-item active">移动</a>
                <a href="#" class="list-group-item">Docker</a>
                <a href="#" class="list-group-item">开源</a>
                <a href="#" class="list-group-item">云计算</a>
                <a href="#" class="list-group-item">大数据</a>
                <a href="#" class="list-group-item">架构师</a>
            </div>
            <div class="sidebar-module sidebar-module-inset">
                <h4>About</h4>
                <p>Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>
            </div>
        </div>
        <!--/.sidebar-offcanvas-->
    </div>
    <!--/row-->

    <hr>

    <footer class="blog-footer">
        <p>Blog template built for <a href="http://getbootstrap.com">Bootstrap</a> by <a href="https://twitter.com/mdo">@mdo</a>.</p>
        <p>
            <a href="#">Back to top</a>
        </p>
    </footer>

</div>
<!--/.container-->

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="${base}/js/offcanvas.js"></script>

<script type="text/javascript">

    i = 1; //设置当前页数
    count = 1;
    $(function () {
        var totalpage = 6; //总页数，防止超过总页数继续滚动
        var winH = $(window).height(); //页面可视区域高度

        $(window).scroll(function () {
            if (i < totalpage) { // 当滚动的页数小于总页数的时候，继续加载
                var pageH = $(document.body).height();
                var scrollT = $(window).scrollTop(); //滚动条top
                var aa = (pageH - winH - scrollT) / winH;
                if (aa < 0.01) {
                    getJson(i)
                }
            } else { //否则显示无数据
                showEmpty();
            }
        });
        getJson(0); //加载第一页
    });
    function getJson(page) {
        $(".nodata").show().html("<img src='http://www.sucaihuo.com/Public/images/loading.gif'/>");
        $.getJSON("${base}/front/cms/list", {curPage: i}, function (datas) {
            if (datas.data.length > 0) {
                var str = "";
                $.each(datas.data, function (index, data) {
                    var str = "<article class=\"article box_white\">";
                    str += "<div class=\"row\">";
                    str += "<div>";
                    str += "<h2><a href=\"${base}/front/article/"+data.id+"\" target=\"_blank\" title=\"" + data.title + "\">";
                    str += count + "." + data.title;
                    str += "</a></h2>";

                    str += "<p class=\"text\">" + data.description + "<a href=\"${base}/front/article/"+data.id+"\" target=\"_blank\" title=\"阅读全文\">阅读全文</a></p>";
                    str += "</div>";
                    str += "</div>";
                    str += "<div class=\"row\">";
                    str += "<div class=\"col-md-4 metatag\">";
                    str += "<i class=\"glyphicon glyphicon-th\"></i>";
                    str += "<span class=\"source\" title=\"来源\">网易</span>";
                    str += "<i class=\"glyphicon glyphicon-calendar\"></i>";
                    str += "<span class=\"date\" title=\"发布日期\">2016-01-01</span>";
                    str += "<i class=\"glyphicon glyphicon-user\"></i>";
                    str += "<span class=\"author\" title=\"作者\">测试用户</span>";
                    str += "</div>";
                    str += "<div class=\"col-md-8 metatag text-right\">";
                    str += "<span class=\"view\" title=\"阅读数\">";
                   // str += "<i class=\"glyphicon glyphicon-eye-open\"></i>";
                    str += "阅读:<span>" + data.hits + "</span>次";
                    str += "</span>";
                    str += "<a href=\"/articles/4812#commentForm\" class=\"cmt\" target=\"_blank\" title=\"评论数\">";
                   // str += "<i class=\"glyphicon glyphicon-comment\"></i>";
                    str += "评论:<span>1</span>条";
                    str += "</a>";
                    str += "<a href=\"#\" class=\"like\" title=\"我喜欢\" data-objid=\"4812\" data-objtype=\"1\" data-flag=\"0\">";
                    str += "<i class=\"glyphicon glyphicon glyphicon-thumbs-up\"></i>";
                    str += "<span class=\"likenum\">0</span>";
                    str += "</a>";

                    str += " 分享至: ";
                    str += " <span aria-hidden=\"true\" class=\"social_picassa\"></span> ";
                    str += " <span aria-hidden=\"true\" class=\"social_facebook\"></span> ";
                    str += " <span aria-hidden=\"true\" class=\"social_googleplus\"></span> ";
                    str += " <span aria-hidden=\"true\" class=\"social_twitter\"></span> ";
                    str += " <span aria-hidden=\"true\" class=\"social_pinterest\"></span> ";

                    str += "</div>";
                    str += "</div>";
                    str += "</div>";
                    str += "</article>";

                    $("#lists").append(str);
                    count++;
                });
                $(".nodata").hide();
            } else {
                showEmpty();
            }
        });
        i++;
    }
    function showEmpty() {
        $(".nodata").show().html("没有了");
    }
</script>
</body>
</html>
