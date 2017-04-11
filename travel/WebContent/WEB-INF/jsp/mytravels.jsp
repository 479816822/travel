<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>travels</title>

<link href="css/travels/travels.css" rel="stylesheet" type="text/css" />
<link href="css/myQUestionAndanser/toolbar.css" rel="stylesheet"
	type="text/css" />

<script language="javascript" src="js/jquery-3.1.0.min.js"
	type="text/javascript"></script>
<script language="javascript" src="js/jquery-validation-1.15.1.js"
	type="text/javascript"></script>
<script language="javascript" src="js/jquery-3.1.0.min.js"
	type="text/javascript"></script>

<style>
.invisible {
	opacity: 0.01;
	filter: alpha(opacity = 1);
}

.invisible .maps-container {
	opacity: 0.01;
	filter: alpha(opacity = 1);
}
</style>

<script language="javascript" type="text/javascript">
	if (typeof M !== "undefined" && typeof M.loadResource === "function") {
		M
				.loadResource("http://js.mafengwo.net/js/cv/js+AHeaderWo:js+mSnsShare:js+M+module+dialog+Layer:js+M+module+dialog+DialogBase:js+M+module+dialog+Dialog:js+M+module+dialog+alert:js+qa+DoShare:js+qa+qa_module+PreLoadImgs:js+jquery.tmpl:js+qa+Docommon:js+M+module+Storage:js+jquery.jgrowl.min:js+AMessage:js+M+module+FrequencyVerifyControl:js+M+module+FrequencySystemVerify:js+ALogin:js+M+module+ScrollObserver:js+M+module+QRCode:js+AToolbar:js+ACnzzGaLog:js+ARecruit:js+ALazyLoad^Z1ZR^1471923715.js");
	}
</script>


</head>
<body>

	<!--*****************************头部*****************************-->
	<!--************************************* 头部-->
	<div class="header">
		<div class="header1">
			<iframe src="Mheader" frameborder="0" scrolling="no" marginheight="0"
					marginwidth="0" style="margin: 0px auto;"></iframe>
		</div>
	</div>


	
	
	**************main*******************
	<div class="main">

		<div class="banner">
			<!--大图片-->
			<div class="banner_img banner_note" id="_j_banner"></div>
			<div class="tags_bar second_tags_bar">
				<div class="center clearfix">
					<div class="MAvatar clearfix">
						<div class="MAvaImg flt1">
							<a><img width="120" height="120" alt="" src="${userInfo.userHeadImg}"></a>
						</div>
						<div class="MAvaEasyWord flt1">
						<a>	<span class="MAvaName">${userInfo.mdUserName}</span> </a> <span
								class="MAvaLevel">Lv.${userInfo.mdLevel}</span>
						</div>
					</div>
					<ul class="flt2">
						<li><a class="tags_link" href="to_myHome" title="我的窝">我的窝</a></li>
						<li class="on"><a class="tags_link" href="" title="我的游记">我的游记</a></li>
						<li><a class="tags_link" href="to_question" title="我的问答">我的问答</a></li>
						<li id=""><a class="tags_link"
							href="my_track" title="我的足迹">我的足迹</a></li>
						<li><a class="tags_link" href="" title="我的点评">我的点评</a></li>
						<li><a class="tags_link" href="goTogether" title="我的结伴">我的结伴</a></li>
						<li class="more mygroup_tips"><span class="tags_link"
							role="button" title="更多" style="cursor: default">更多<i
								class="MDownMore"></i></span>
							<div class="tags_more_list">
								<ul>
									<li data-cs-t="go_to_activity"><a href="" title="我的活动"
										data-cs-p="activity"><i class="ico_activity"></i><span>我的活动</span></a></li>
									<li><a href="" title="我的小组"><i class="ico_group"></i><span>我的小组</span></a>
									</li>
									<li><a href="" title="我的收藏"><i class="ico_collect"></i><span>我的收藏</span></a></li>
									<li><a href="" title="我的订单"><i class="ico_order"></i><span>我的订单</span></a></li>
									<li><a href="" title="我的优惠券"><i class="ico_ticket"></i><span>我的优惠券</span></a></li>
									<li><a href="" title="我的兑换"><i class="ico_exchange"></i><span>我的兑换</span></a></li>
									<li><a href="goLocal" title="我的当地人"><i class="ico_rent"></i><span>我的当地人</span></a></li>
								</ul>
							</div></li>
					</ul>
				</div>
			</div>
		</div>
		<!--主要的内容-->
	
	
	
	
	
		<div class="center1">
			<!-- 左边的访问的情况-->
			<div class="left">
				<div class="user_msg">
					<div class="user_msg_title">最新访客</div>
					<div class="MUsersDetail">
						<div class="all_visitor">
							<div class="all_visitor_one">累计访问</div>
							<div class="all_visitor_two">0</div>
						</div>
						<div class="today_visitor">
							<div class="today_visitor_one">今日</div>
							<div class="today_visitor_two">0</div>
						</div>
					</div>
					<div class="MUsersBehavior">
						<div class="MUsersBehavior_border"></div>
					</div>
				</div>

				<!--空间的音乐**************************由进度来处理-->
				<div class="msg_music">
					<div class="msg_music_one">
						<div class="msg_music_one_one"></div>
						<div class="msg_music_one_two"></div>
						<div class="msg_music_one_three"></div>
					</div>
					<div class="msg_music_two">
						<br> <span>来自</span> <span class="span_font_color">暂无</span>
					</div>

				</div>

			</div>
			<!--游记的主要内容-->
			<div class="rigth">
				<!--头部主要的信息-->
				<div class="travel_news">
					<div class="travel_news_one">
						<div class="travel_news_one_one">${travelList.size()}</div>
						<div class="travel_news_one_two">游记</div>
					</div>
					<div class="travel_news_four"></div>
					<div class="travel_news_two">
						<div class="travel_news_two_one">${n}</div>
						<div class="travel_news_two_two">回复</div>
					</div>
					<div class="travel_news_four"></div>
					<div class="travel_news_three">
						<div class="travel_news_three_one">${userInfo.mdStdcode}</div>
						<div class="travel_news_three_two">阅读</div>
					</div>

				</div>
				<!--游记的主要信息和内容展示-->
				<!--游记的主要信息和内容展示-->


				<c:forEach items="${travelList}" var="travel">

					<div class="travel_content">
						<!--游记的主要内容--->
						<!--游记的主要图片只是显示一张--->
						<a href="showTravel?traId=${travel.mdRecid}&userId=${userInfo.mdUserRecid}"
							target="_blank">
							<div class="travel_content_img">
								<img src="${travel.mdThemeImg}" class="travel_content_img">
							</div>
						</a>
						<!--游记的主要文字内容--->
						<div class="travel_content_Article">
							<div class="Article_title">${travel.mdTheme}</div>
							<div class="Article_date">
								<div class="Article_date_one">
									<div class="Article_date_one_one"></div>
									3/0
								</div>
								<div class="Article_date_two">
									<div class="Article_date_two_one"></div>
									0
								</div>
								<div class="Article_date_three">${travel.createDate}</div>
							</div>
							<div class="Article_address">${travel.mdAimAddress}</div>
						</div>
						<div class="travel_content_praise">
							<div class="travel_content_praise_one">${travel.mdStdname}</div>
							<div class="travel_content_praise_two"></div>
						</div>
					</div>

				</c:forEach>
				<!--游记的主要信息和内容展示-->
				<c:if test="${travelList.size()==0 }">
					<div class="travel_content">
						<div class="travel_content_img">
							<img src="img/noyj_v2.jpg" class="travel_content_img">
						</div>
					</div>
				</c:if>


				<!--游记的主要信息和内容展示-->
			</div>
		</div>
	</div>

		<div class="footer">
			<iframe src="MainFooter" frameborder="0" scrolling="no" marginheight="0"
					marginwidth="0" style="margin: 0px auto;"></iframe>
		</div>


	<!--返回顶部的代码-->

	<!--************************************* 返回顶部-->


	<!--返回顶部的代码-->
	<!--  

	<div class="mfw-toolbar" id="_j_mfwtoolbar">
		<div class="toolbar-item-top">
			<a role="button" class="btn _j_gotop"> <i class="icon_top"></i> <em>返回顶部</em>
			</a>
		</div>
		<div class="toolbar-item-feedback">
			<a role="button" data-japp="feedback" class="btn"> <i
				class="icon_feedback"></i> <em>意见反馈</em>
			</a>
		</div>
		<div class="toolbar-item-code">
			<a role="button" class="btn"> <i class="icon_code"></i>
			</a> <a role="button" class="mfw-code _j_code"> <img
				src="http://images.mafengwo.net/images/qrcode-weixin.gif">
			</a>
		</div>
		<div class="toolbar-item-down">
			<a role="button" class="btn _j_gobottom"> <i class="icon_down"></i>
				<em>页面底部</em>
			</a>
		</div>
	</div>

-->
</body>
</html>