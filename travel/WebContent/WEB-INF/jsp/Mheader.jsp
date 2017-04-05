<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>用户页面 header</title>
    <link href="css/Mcss.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="header">
    <div class="topBarC">
        <div class="logo">
            <a title="蚂蜂窝自由行" href="/">蚂蜂窝自由行</a>
        </div>
        <div class="t_nav">
            <ul id="pnl_nav" data-cs-t="headnav_wo">
                <li data-cs-p="index"><strong class="t"><a href="to_index">首页</a></strong>
                </li>
                <li data-cs-t="wenda" data-cs-p="wenda"><strong class="t"><a
                        data-cs-p="from_wo_nav" href="askQuestion">问答</a></strong></li>
                <li data-cs-t="things" data-cs-p="things"><strong class="t"><a
                        data-cs-p="from_wo_nav" href="/mall/things.php">蚂蜂窝周边</a></strong></li>
                <li data-cs-p="together"><strong class="t"><a
                        href="/together/">结伴</a></strong></li>
                <li data-cs-p="group"><strong class="t"><a
                        href="/group/">小组</a></strong></li>
                <li data-cs-p="mall"><strong class="t"><a
                        href="/mall/">蜂蜜兑换</a></strong></li>
                <li class="drop" ><strong class="t"><a
                        href="">更多<b></b></a></strong>
                    <div class="c">
                        <a href="/" target="_blank">当地人</a> <a href="" target="_blank">真人兽</a>
                        <a href="/" target="_blank">蚂蜂窝高校</a> <a href="" target="_blank">照片PK</a>
                        <a href="/" target="_blank">蚂蜂窝拍卖行</a> <a href="" target="_blank">道具商店</a>
                        <a href="/" target="_blank">旅行电台</a> <a href="" target="_blank">蜂首聚乐部</a>
                        <a href="/" target="_blank">VIP</a> <a href="" target="_blank">分歧终端机</a>
                    </div>
                </li>
            </ul>
        </div>
        <!--用户搜索-->
        <div class="t_search">
            <form method="post" action="/Travel/search" name="search">
                <input type="text" class="key" value="" name="q" id="word">
                <input type="submit" value="" class="btn">
            </form>
        </div>


        <div class="t_info">
            <ul class="user_info" data-cs-t="headnav_wo">
                <li class="daka">
                    <span class="daka_btn" id="_j_dakabtn"
                          data-japp="daka"> <a role="button" title="打卡"
                                               class="daka_before">打卡</a> <a role="button" title="打卡推荐"
                                                                             class="daka_after">打卡推荐</a>
					</span>
                </li>
                <li class="account drop">
                    <strong class="t"><a id="ttt" href="">消息<b></b></a></strong>
                    <div class="uSet c">
                        <a href="">私信</a> <a href="">文章消息</a>
                        <a href="">系统通知</a> <a href="">小组消息</a>
                        <a href="">问答消息</a>
                    </div>
                </li>

                <li class="account _j_hoverclass00 drop">
                   <span class="t"><a class="infoItem"
                                                      href="to_myHome"><img src="${user.userHeadImg }" width="35"
                                                                            height="35"
                                                                            align="absmiddle"><b></b></a></span>
                    <div class="uSet c">
                        <a href="/rank/lv.php" class="containNum" target="_blank">等级
                            <span>LV.${user.mdLevel }</span>
                        </a> <a href="/mall/" class="containNum hasLine" target="_blank">蜂蜜
                        <span id="_j_header_honey">${user.userBank.mdBalance }</span>
                    </a> <a href="/user/lv.php#coin" class="containNum hasLine"
                            target="_blank">金币 <span id="_j_header_coin">${user.userBank.mdBalance }</span></a>
                        <a href="toMyHome" target="_blank">我的主页</a> <a
                            href="to_Writetravel" target="_blank" class="menu">写游记</a> <a
                            href="" target="_blank" class="menu">我的好友</a>  <a href="toOutLogin" target="_blank">退出</a>

                    </div>
                </li>

            </ul>
        </div>

    </div>


</div>

</body>
</html>