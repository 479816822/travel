<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>用户主页 mainHeader</title>
    <link href="css/MainHeader.css" rel="stylesheet" type="text/css"/>
    <script language="javascript" src="js/jquery-3.1.0.min.js"
            type="text/javascript"></script>
    <script language="javascript" src="js/jquery-validation-1.15.1.js"></script>

    <script type="text/javascript">
        $(function () {



            $(".gd1").hover(
                    function () {
                        $(this).children().eq(1).show().css("color",
                                "orange");
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
        });

    </script>
</head>
<body>

<div class="header">
    <div class="mfw_headers">
        <div class="mfw_logo">
            <div class="mfw_logo_one"></div>
            <div class="mfw_logo_two">
                <ul class="t_header_ul">
                    <li class="t_header_li"><a> 首页 </a></li>
                    <li class="t_header_li"><a> 目的地 </a></li>
                    <li class="t_header_li"><a> 旅游攻略 </a></li>
                    <li class="t_header_li"><a> 自由行商城 </a></li>
                    <li class="t_header_li"><a> 酒店 </a></li>
                    <li class="t_header_li"><a> 社区 </a></li>
                </ul>
            </div>
            <!-- 搜索-->
            <div class="t_search">
                <form class="" name="search">
                    <input type="text" name="" class="t_search_input">
                </form>
            </div>
            <div class="div_three">
                <div class="t_info">
                    <ul class="user_info" data-cs-t="headnav_wo">
                        <li class="daka">
                            <!--最后处理打卡的功能实现--> <span class="daka_btn" id="_j_dakabtn"
                                                     data-japp="daka"> <a role="button" title="打卡"
                                                                          class="daka_before">打卡</a> <a role="button"
                                                                                                        title="打卡推荐"
                                                                                                        class="daka_after">打卡推荐</a>
							</span>
                        </li>
                        <li class="account _j_hoverclass gd1" data-hoverclass="on"
                            id="pnl_user_set" data-cs-p="other" class="drop">
                            <strong class="t"><a id="ttt" href="">消息<b></b></a></strong>

                            <div class="dropdown-menu1 " >
                                <ul>
                                    <li  class="hover_li1 one "><a href="" rel="">系统通知</a> </li>
                                    <li  class="hover_li1"><a href="" rel="">文章消息</a></li>
                                    <li  class="hover_li1"><a href="" rel="">小组消息</a></li>
                                    <li  class="hover_li1"><a href="" rel="">问答消息</a></li>
                                    <li class="hover_li1"><a href="" rel="">私信</a></li>
                                </ul>
                            </div>
                        <li class="ub-item ub-new-msg" id="head-new-msg"></li>
                        <li class="account _j_hoverclass" data-hoverclass="on"
                            id="pnl_user_set1" data-cs-p="other" class="drop">
                            <!--用户的信息头像--> <span class="t"><a class="infoItem"
                                                              href=""><img src="${user.userHead }" width="32"
                                                                           height="32"
                                                                           align="absmiddle"><b></b></a></span>
                            <div class="uSet c">
                                <a href="" class="containNum" target="_blank">等级 <span>LV.${user.userLevel }</span>
                                </a> <a href="" class="containNum hasLine" target="_blank">蜂蜜 <span
                                    id="_j_header_honey">${user.userHoney }</span>
                            </a> <a href="" class="containNum hasLine" target="_blank">金币 <span
                                    id="_j_header_coin">${user.userHoney }</span></a> <a
                                    href="to_myHome" target="_blank">我的蚂蜂窝</a> <a href=""
                                                                                  target="_blank" class="menu">写游记</a>
                                <a href=""
                                   target="_blank" class="menu">我的好友</a> <a href=""
                                                                            target="_blank" class="menu">我的收藏</a> <a
                                    href=""
                                    target="_blank">设置</a> <a href="" target="_blank">分享设置</a> <a
                                    href="to_out">退出</a>

                            </div>
                        </li>
                    </ul>
                </div>
            </div>

        </div>
    </div>
</div>


</body>
</html>