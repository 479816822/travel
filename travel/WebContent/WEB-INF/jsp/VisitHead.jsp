<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <!DOCTYPE html> <html lang="en">
<head>
    <meta charset="UTF-8">
    <title>爱旅U Head</title>

    <link href="css/VisitHeader.css" rel="stylesheet">
    <script language="javascript" src="js/jquery-3.1.0.min.js"
            type="text/javascript"></script>
    <script language="javascript" src="js/jquery-validation-1.15.1.js"
            type="text/javascript"></script>

 <script type="text/javascript">
        $(function () {
            //导航栏效果
            $(".nav li.mainNav").hover(
                    function () {
                        $(".nav li.mainNav span").css("color", "black");
                        $(this).css("color", "orange").css("border-bottom","2px solid orange"); }, function () {
                        $(this).css("color", "black").css("border-bottom", "none");
                    });
            $(".dropdown").hover(
                    function () {
                        $(this).children().eq(1).show().css("border",
                                "1px solid #eee").css("background", "white");
                        $(this).css("border-top", "2px solid orange");
                    }, function () {
                        $(this).css("border-top", "none");
                        $(this).children().eq(1).hide();

                    });

            $(".hover_li1").hover(
                    function () {
                        $(this).css("color", "orange");
                    }, function () {
                        $(this).css("color", "black");
                    });

            $(".hover_li").hover(
                    function () {
                        $(this).css("background", "beige");
                    }, function () {
                        $(this).css("background", "white");
                    });

            //第三方登录悬浮效果
            $(".weibo-login").hover(function () {
                $(this).css("background-position", "0 -80px");
            }, function () {
                $(this).css("background-position", "0 -50px");
            });

            $(".qq-login").hover(function () {
                $(this).css("background", "url(img/index-img/icon3.png) -30px -80px");
                $(this).css("background-position", "-30px -80px");
            }, function () {
                $(this).css("background", "url(img/index-img/icon3.png) -30px -50px");
                $(this).css("background-position", "-30px -50px");
            });

            $(".weixin-login").hover(function () {
                $(this).css("background-position", "-30px -165px");
            }, function () {
                $(this).css("background-position", "0 -165px");
            });

            $(".under-line").hover(function () {
                $(this).css("text-decoration", "underline").css("color", "orange");
            }, function () {
                $(this).css("text-decoration", "none").css("color", "orange");
            });

            $(".community").hover(function () {
                $(".div_div").show();
            }, function () {
                $(".div_div").hide();
            });

        });
    </script>

</head>
<body>

<div id="header">
    <div class="mfw-header">
        <div class="header-wrap">
            <div class="logo">
                <a class="mfw-logo" title="爱旅 U" href=""></a>
            </div>
            <ul class="nav" data-cs-t="headnav" id="_j_head_nav">
                <li class="index mainNav"><a href="logins">首页</a></li>
                <li class="place mainNav"><a href="" title="目的地"
                                             target="_blank">目的地</a></li>
                <li class="gonglve mainNav"><a href=""
                                               target="_blank" title="旅游攻略">旅游攻略</a></li>
                <li class="sales dropdown" id="_j_nav_sales">
                    <a
                        target="_blank" class="drop-toggle" href=""
                        style="display: block; border-bottom: 0 none;"> <span
                        class="head-act-96"></span> <span>自由行商城<i
                        class="icon-caret-down"></i></span>
                </a>
                    <div class="dropdown-menu dropdown-sales hide" id="_j_sales_panel">
                        <ul>
                            <li class="hover_li"><a target="_blank" href="to_hotel"
                                   data-sales-nav="机票＋酒店">机票＋酒店</a></li>
                            <li  class="hover_li"><a target="_blank" href="/" data-sales-nav="当地游">当地游</a></li>
                            <li  class="hover_li"><a target="_blank" href="" data-sales-nav="签证">签证</a></li>
                            <li  class="hover_li"><a target="_blank" href="" data-sales-nav="国际租车">国际租车</a></li>
                            <li  class="hover_li"><a target="_blank" href="to_save" data-sales-nav="保险">保险</a></li>
                        </ul>
                    </div>
                </li>
                <li class="hotel mainNav" data-cs-p="hotel"><a href="to_hotel" target="_blank"
                                                               title="酒店">酒店</a></li>
                <li class="community "><a class="drop-toggle div_d" target="_blank"
                                          href="goIndex" style="display: block; border-bottom: 0 none;">
                    <span class="head-act-96"></span> <span>社区<i
                        class="icon-caret-down community"></i></span>
                </a> <!-- 社区下拉面板 begin -->
                    <div class="dropdown-panel   no-image div_div div_class"
                         style="display: none;">
                        <div class="panel-wrapper">
                            <div class="div_left">
                                <ul class="nav-list clearfix">
                                    <li class="h hover_li1">
                                        <a href="goIndex" target="_blank"
                                                     title="问答">问答<i class="i-hot">hot</i></a>
                                    </li>
                                    <li  class="hover_li1"><a href="" target="_blank" title="蚂蜂窝周边"
                                    >蚂蜂窝周边<i class="i-new"/></a></li>
                                    <li  class="hover_li1"><a href="goShop" target="_blank" title="蚂蜂窝商店"
                                    >蜂蜜兑换</a></li>
                                    <li  class="hover_li1"><a href="goTogether" target="_blank" title="结伴"
                                    >结伴</a></li>
                                </ul>
                            </div>
                            <div class="div_rigth">
                                <ul class="nav-list-sub clearfix">
                                    <li  class="hover_li1"><a href="" target="_blank" title="蚂蜂窝旅行家"
                                    >蚂蜂窝旅行家</a></li>
                                    <li  class="hover_li1"><a href="" target="_blank" title="蚂蜂窝旅行家"
                                    >小组论坛</a></li>
                                    <li class="hover_li1"><a href="" target="_blank" title="分舵同城"
                                    >分舵同城</a></li>
                                    <li class="hover_li1"><a href="" target="_blank" title="蚂蜂窝拍卖行"
                                    >蚂蜂窝拍卖行</a></li>
                                    <li class="hover_li1"><a href="" target="_blank" title="蜂首聚乐部"
                                    >蜂首聚乐部</a></li>
                                    <li class="hover_li1"><a href="" target="_blank" title="照片PK"
                                    >照片PK</a></li>
                                    <li class="hover_li1"><a href="" target="_blank" title="道具商店"
                                    >道具商店</a></li>
                                </ul>
                            </div>
                        </div>

                    </div> <!-- 社区下拉面板 end --></li>
                <li class="head-nav-app mainNav" data-cs-p="app"><a href=""
                                                                    title="APP">APP</a></li>
            </ul>
            <div class="head-search" style="display: none;">
                <div class="head-search-wrapper">
                    <div class="head-searchform">
                        <input name="q" type="text" id="_j_head_search_input"
                               autocomplete="off"> <a role="button" href="javascript:"
                                                      class="icon-search" id="_j_head_search_link"></a>
                    </div>
                </div>
            </div>



            <c:if test="${user != null}">
                <div class="login-info">
                    <div class="head-user" id="_j_head_user">
                        <a target="_blank" class="drop-trigger" href="to_myHome"
                           title="${user.mdUserName }的窝" rel="nofollow">
                            <div class="user-image">
                                <img src="${user.userHeadImg }" class="img_img" alt="的窝">
                            </div>
                        </a>
                    </div>
                    <div class="head-msg">消息</div>
                    <div class="head-daka daka-complete">
                        <a class="btn head-btn-daka" href="javascript:" rel="nofollow"
                           id="head-btn-daka" title="打卡" data-japp="daka">打卡</a>
                    </div>
                </div>
            </c:if>
            <c:if test="${user == null }">
            <c:out value="${user}"></c:out>
                <div class="login-out">
                    <a class="weibo-login third-party-login" href="" title="微博登录"
                       rel="nofollow"></a> <a class="qq-login third-party-login" href=""
                                              title="QQ登录" rel="nofollow"></a> <a
                        class="weixin-login third-party-login" href="" title="微信登录"
                        rel="nofollow"></a> <a id="showlogin" title="登录蚂蜂窝" href="login"
                                               target="_blank" rel="nofollow" class="login under-line">登录</a> <span
                        class="split">|</span> <a href="register" target="_blank"
                                                  title="注册帐号" rel="nofollow" class="regis under-line">注册</a>
                </div>
            </c:if>




        </div>
        <div class="shadow"></div>
    </div>
</div>
</body>
</html>