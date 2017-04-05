<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>my question</title>

<link href="css/myQUestionAndanser/question.css" rel="stylesheet"
	type="text/css" />

<link href="css/myQUestionAndanser/question_header_css.css"
	rel="stylesheet" type="text/css" />
<link href="css/myQUestionAndanser/question_main_header.css"
	rel="stylesheet" type="text/css" />
<link href="css/myQUestionAndanser/toolbar.css" rel="stylesheet"
	type="text/css" />
<link href="css/myQUestionAndanser/footer.css" rel="stylesheet"
	type="text/css" />

<script language="javascript" src="js/jquery-3.1.0.min.js"
	type="text/javascript"></script>
<script language="javascr/ipt" src="js/jquery-validation-1.15.1.js"
	type="text/javascript"></script>


<script type="text/javascript">
	window.Env = {
		"target_uid" : 62143073,
		"WWW_HOST" : "www.mafengwo.cn",
		"IMG_HOST" : "images.mafengwo.net",
		"P_HOST" : "passport.mafengwo.cn",
		"P_HTTP" : "https:\/\/passport.mafengwo.cn",
		"UID" : 62143073,
		"CSTK" : "909f94e524c17276517f2902e17f7862_0737820bb0c60276425057de4ef9190a"
	};
</script>


<script language="javascript" src="css/myQUestionAndanser/question.js"
	type="text/javascript"></script>


<script type="text/javascript">
	$(function() {
		//点击的时候使用AJAX进行数据的查询和显示

		//1.我来解答
		$(".main_left_one").click(function() {
			$(".background").removeClass("background");
			$(this).children().addClass("background");
			$(".me101").hide();
			//	$(".me_question").parent().show();
			//使用Ajax进行数据查询

			$.ajax({
				type : "POST",
				url : "give_answer",
				data : JSON.stringify(),
				contentType : 'application/json; charset=utf-8',
				dataType : 'json',
				success : function(msg) {
					//把查询出来的问题进行显示
					fun1(msg.replyInfo)

				},
				error : function(msg) {
					//提示游记发表失败
				}
			});

		})
		function fun1(data) {

			for (var i = 0; i < data.length; i++) {
				var $newnode = $model0.clone(true);
				$newnode.show();
				
				if(i>0){
					$newnode.children().children().eq(0).children().hide();
				}

				$newnode.children().children().eq(2).children().children()
						.children().attr("src", data[i].questioner.userHead)

				$newnode.children().children().eq(2).attr("href",
						"to_answer?question=" + data[i].quesId);

				$newnode.children().children().eq(2).children().children()
						.eq(2).html(data[i].quesTitle)

				$newnode.children().children().eq(2).children().children()
						.eq(3).children().eq(2).html(
								data[i].questioner.userNick)
				$newnode.children().children().eq(2).children().children()
						.eq(3).children().eq(3).html(
								"Lv." + data[i].questioner.userLevel)
				$newnode.children().children().eq(2).children().children()
						.eq(3).children().eq(4).html(data[i].quesFollow)

				$newnode.children().children().eq(2).children().children()
						.eq(4).html(data[i].quesMes);

				var num = new Array();
				num = data[i].keyWord.split(";");

				for (i1 = 0; i1 < num.length; i1++) {
					var str = "<a class='question_title'>" + num[i1] + "</a>"
					$newnode.children().children().eq(2).children().children()
							.eq(5).children().eq(0).append(str);
				}
				$(".main_rigth").append($newnode);
			}
		}

		//2.我的提问
		$(".main_left_two").click(function() {
			$(".background").removeClass("background");
			$(this).children().addClass("background");
			$(".me101").hide();
			$(".my_ask").show();

			$.ajax({
				type : "POST",
				url : "my_ask",
				data : JSON.stringify(),
				contentType : 'application/json; charset=utf-8',
				dataType : 'json',
				success : function(msg) {
					//把查询出来的问题进行显示
					fun2(msg.replyInfo)
				},
				error : function(msg) {
					//提示游记发表失败
				}
			});
		})

		
		function fun2(data) {
			
			for (var i = 0; i < data.length; i++) {
				var $newnode = $model1.clone(true);
				$newnode.show();
				$newnode.children().eq(1).children().html(data[i].quesTitle);
				$newnode.children().eq(2).html(data[i].quesBrowse+" : 个回答");
				var num = new Array();
				num = data[i].keyWord.split(";")
				for (i1 = 0; i1 < num.length; i1++) {
					var str="<a class='my_question_four111'>"+num[i1]+"</a>"
					$newnode.children().eq(3).append(str)
				}
				$(".main_rigth").append($newnode);
				
			}
			
			
	
		}

		//3.我的回答
		$(".main_left_three").click(function() {
			$(".background").removeClass("background");
			$(this).children().addClass("background");
			$(".me101").hide();
			$(".my_answer").show();

		})

		//4.我的关注me101
		$(".main_left_four").click(function() {
			$(".background").removeClass("background");
			$(this).children().addClass("background");
			$(".me101").hide();
			$(".mylook").show();
		})

		var $model0 = $(".one_one1").detach();
		var $model01 = $(".main10101").detach();

		var $model1 = $(".my_question").detach();
		//		var $model2 = $(".my_answer").detach();
		//		var $model3 = $(".mylook").detach();

	});
</script>

</head>
<body>







	<!--我来解答 这是通过动态的AJAX实现 ---->
	<div class="me101 one_one1 hide">
		<div class="me_question  ">
			<div class="me_question_one">
				<a>
					<div class="me_question_one_one">向我推荐的问题</div>
				</a> <a>
					<div class="me_question_one_two">向我求助的问题</div>
				</a>
			</div>
			<!-- ******************************************8动态的添加进来***************************** -->
			<a class="magain_top " href="to_answer?question=">
				<div class="me_question_two">
					<div class="the_ask_question_left">
						<img class="the_ask_question_left_one" alt="" src="">
					</div>
					<div class="the_ask_question_rigth">
						<div class="the_ask_question_rigth_one">
							<a target="_blank"></a>
						</div>
						<div class="the_ask_question_rigth_two">
							<span> 提问者 &nbsp;</span> <a class="ask_people"></a> <span>&nbsp;&nbsp;</span>
							<a></a> <span class="ask_date"> &nbsp; </span>
						</div>
						<!-- 问题的主要内容 -->
						<div class="the_ask_question_rigth_three"></div>
						<div class="the_ask_question_rigth_four">
							<div class="question_1"></div>
							<div class="question_11">
								<a class="to_question"> 回答</a>
							</div>
						</div>
					</div>

				</div>
			</a>
		</div>
	</div>








	<!--************************************* 头部-->

	<!--*****************************头部*****************************-->
	<!--************************************* 头部-->
	<div class="header">
		<div class="topBarC">
			<!-- 头部-->
			<!-- 后端处理页面和相应的地方-->
			<div class="logo">
				<a title="蚂蜂窝自由行" href="/">蚂蜂窝自由行</a>
			</div>
			<div class="t_nav">
				<ul id="pnl_nav" data-cs-t="headnav_wo">
					<li data-cs-p="index"><strong class="t"><a href="/">首页</a></strong>
					</li>
					<li data-cs-t="wenda" data-cs-p="wenda"><strong class="t"><a
							data-cs-p="from_wo_nav" href="/wenda/">问答</a></strong></li>
					<li data-cs-t="things" data-cs-p="things"><strong class="t"><a
							data-cs-p="from_wo_nav" href="/mall/things.php">蚂蜂窝周边</a></strong></li>
					<li data-cs-p="together"><strong class="t"><a
							href="/together/">结伴</a></strong></li>
					<li data-cs-p="group"><strong class="t"><a
							href="/group/">小组</a></strong></li>
					<li data-cs-p="mall"><strong class="t"><a
							href="/mall/">蜂蜜兑换</a></strong></li>
					<li class="drop" data-cs-p="other"><strong class="t"><a
							href="">更多<b></b></a></strong>
						<div class="c">
							<a href="" target="_blank">当地人</a> <a href="" target="_blank">真人兽</a>
							<a href="" target="_blank">蚂蜂窝高校</a> <a href="" target="_blank">照片PK</a>
							<a href="" target="_blank">蚂蜂窝拍卖行</a> <a href="" target="_blank">道具商店</a>
							<a href="" target="_blank">旅行电台</a> <a href="" target="_blank">蜂首聚乐部</a>
							<a href="" target="_blank">VIP</a> <a href="" target="_blank">分歧终端机</a>
						</div></li>
				</ul>
			</div>
			<!--用户搜索-->
			<div class="t_search">
				<form method="post" action="" name="search">
					<input type="text" class="key" value="" name="q" id="word">
					<input type="submit" value="" class="btn">
				</form>
			</div>


			<div class="t_info">
				<ul class="user_info" data-cs-t="headnav_wo">
					<li class="daka">
						<!--最后处理打卡的功能实现--> <span class="daka_btn" id="_j_dakabtn"
						data-japp="daka"> <a role="button" title="打卡"
							class="daka_before">打卡</a> <a role="button" title="打卡推荐"
							class="daka_after">打卡推荐</a>
					</span>
					</li>
					<li class="account _j_hoverclass" data-hoverclass="on"
						id="pnl_user_set" data-cs-p="other" class="drop">
						<!--用户的信息头像--> <strong class="t"><a id="ttt" href="">消息<b></b></a></strong>
						<div class="uSet c">
							<a href="" rel="nofollow">私信</a> <a href="" rel="nofollow">文章消息</a>
							<a href="" rel="nofollow">系统通知</a> <a href="" rel="nofollow">小组消息</a>
							<a href="" rel="nofollow">问答消息</a>

						</div>
					<li class="ub-item ub-new-msg" id="head-new-msg"></li>

					<li class="account _j_hoverclass" data-hoverclass="on"
						id="pnl_user_set1" data-cs-p="other" class="drop">
						<!--用户的信息头像--> <span class="t"><a class="infoItem"
							href="to_myHome"><img src="${user.userHead }" width="35"
								height="35" align="absmiddle"><b></b></a></span>
						<div class="uSet c">
							<a href="/rank/lv.php" class="containNum" target="_blank">等级
								<span>LV.${user.userLevel }</span>
							</a> <a href="/mall/" class="containNum hasLine" target="_blank">蜂蜜
								<span id="_j_header_honey">${user.userHoney }</span>
							</a> <a href="/user/lv.php#coin" class="containNum hasLine"
								target="_blank">金币 <span id="_j_header_coin">${user.userMoney }</span></a>
							<a href="to_myHome" target="_blank">我的蚂蜂窝</a> <a
								href="writeTravel" target="_blank" class="menu">写游记</a> <a
								href="" target="_blank" class="menu">我的好友</a> <a href=""
								target="_blank" class="menu">我的收藏</a> <a href="" target="_blank">设置</a>
							<a href="" target="_blank">分享设置</a> <a href="to_out">退出</a>

						</div>
					</li>

				</ul>
			</div>

		</div>


	</div>

	<!--************************************* 主要内容-->
	<div class="main">

		<div class="banner">

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

			<!--大图片-->
			<div class="banner_img banner_note" id="_j_banner">
				<img alt="" src="img/banner_ask.gif">
			</div>
			<div class="tags_bar second_tags_bar">
				<div class="center clearfix">
					<div class="MAvatar clearfix">
						<div class="MAvaImg flt1">
							<img width="120" height="120" alt="" src="${user.userHead}">
						</div>
						<div class="MAvaEasyWord flt1">
							<span class="MAvaName">${user.userNick}</span> <span
								class="MAvaLevel">Lv.${user.userLevel}</span>
						</div>
					</div>
					<ul class="flt2">
						<li><a class="tags_link" href="to_myHome" title="我的窝">我的窝</a></li>
						<li class="on"><a class="tags_link" href="" title="我的游记">我的游记</a></li>
						<li><a class="tags_link" href="to_question" title="我的问答">我的问答</a></li>
						<li id=""><a class="tags_link" href="my_track" title="我的足迹">我的足迹</a></li>
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
									<li><a href="goLocal" title="我的当地人"><i
											class="ico_rent"></i><span>我的当地人</span></a></li>
								</ul>
							</div></li>
					</ul>
				</div>
			</div>

		</div>

		<!--主要的内容-->
		<div class="main_center">
			<!--左边的内容-->
			<div class="main_left">
				<div class="main_left1">
					<div class="main_left_one">
						<div class="one111 background">我来解答</div>
						<div class="img_img11"></div>
					</div>
				</div>
				<div class="main_left2">
					<div class="main_left_two">
						<div class="one111">我的提问</div>
						<div class="img_img11"></div>
					</div>
				</div>
				<div class="main_left2">
					<div class="main_left_three">
						<div class="one111">我的回答</div>
						<div class="img_img11"></div>
					</div>
				</div>
				<div class="main_left2">
					<div class="main_left_four">
						<div class="one111">我的关注</div>
						<div class="img_img11"></div>
					</div>
				</div>
			</div>
			<!--右边的内容-->
			<div class="main_rigth">
				<div class="main_rigth_news">
					<div class="main_news_one">
						<span class="main_left_news main_left_news_one"> 擅长的目的地 </span> <a>
							<div class="main_set"></div>
						</a> <span class="main_left_news">设置擅长的目的地，答问题！擅长的标签</span> <a>
							<div class="main_set"></div>
						</a> <span class="main_left_news"> 设置擅长的标签，抢先答！</span>
					</div>
					<div class="main_news_two">
						<a href="to_ask_questions">
							<div class="question_div">我要提问</div>
						</a>
					</div>
					<div class="main_news_three">
						<a>
							<div class="three_one"></div>
						</a> <a>
							<div class="three_two"></div>
						</a>
					</div>
					<div class="main_news_four">
						<a>
							<div class="main_news_four_one"></div>
							<div class="main_news_four_one1">0</div>
							<div class="main_news_four_two">金牌回答数</div>
						</a>
					</div>
					<span class="span_1"></span>
					<div class="main_news_four">
						<a>
							<div class="main_news_four_two1">0</div>
							<div class="main_news_four_two">回答数</div>
						</a>
					</div>
					<span class="span_1"></span>
					<div class="main_news_four">
						<a>
							<div class="main_news_four_two1">0</div>
							<div class="main_news_four_two">提问数</div>
						</a>
					</div>
					<span class="span_1"></span>
					<div class="main_news_four">
						<a>
							<div class="main_news_four_two1">0%</div>
						</a> <a>
							<div class="main_news_four_two">采纳率</div>
						</a>
					</div>
					<span class="span_1"></span>
					<div class="main_news_four">
						<a>
							<div class="main_news_four_one11"></div>
							<div class="main_news_four_one12">0</div>
							<div class="main_news_four_two">蜂蜜数</div>
						</a>
					</div>

				</div>

				<!--我来解答 ---->
				<div class="me101 one_one">
					<div class="me_question  ">
						<div class="me_question_one">
							<a>
								<div class="me_question_one_one">向我推荐的问题</div>
							</a> <a>
								<div class="me_question_one_two">向我求助的问题</div>
							</a>
						</div>

						<c:forEach items="${questionList }" var="question">
							<a class="magain_top"
								href="to_answer?question=${question.quesId }">
								<div class="me_question_two">
									<div class="the_ask_question_left">
										<img class="the_ask_question_left_one" alt=""
											src="${question.questioner.userHead }">
									</div>
									<div class="the_ask_question_rigth">
										<div class="the_ask_question_rigth_one">
											<a target="_blank">${question.quesTitle }</a>
										</div>
										<div class="the_ask_question_rigth_two">
											<span> 提问者 &nbsp;</span><a class="ask_people">${question.questioner.userNick }</a><span>&nbsp;&nbsp;
											</span><a>Lv.${question.questioner.userLevel }</a><span
												class="ask_date"> &nbsp;${question.quesFollow} </span>
										</div>
										<!-- 问题的主要内容 -->
										<div class="the_ask_question_rigth_three">${question.quesMes }</div>
										<div class="the_ask_question_rigth_four">


											<div class="question_1">
												<!-- 关键字分解 -->
												<c:set var="split"
													value='${d }'></c:set>

												<c:forEach items="${split }" var="sp">
													<a class="question_title">${sp }</a>
												</c:forEach>
											</div>
											<div class="question_11">
												<a class="to_question"> 回答</a>
											</div>
										</div>
									</div>

								</div>
							</a>
						</c:forEach>
						<c:if test="${questionList.size() == 0 }">
							<div class="me_question_two"></div>

						</c:if>





					</div>
					<div class="me_question_1"></div>
				</div>


				<!--我的提问-->
				<div class="my_question hide my_ask me101">
					<div class="my_question_one">
						<a class="my_question_one_11"> 所有问题 </a> <a
							class="my_question_one_11"> 等待处理 </a> <a
							class="my_question_one_11">已完成问题 </a> <a
							class="my_question_one_11"> 被删除问题</a>
					</div>
					<div class="my_question_two">
						<a class="my_question_two111">想去北京有什么好玩的</a>
					</div>
					<div class="my_question_three" >&nbsp;&nbsp; &nbsp;&nbsp; 2个回答
						&nbsp;&nbsp; 4小时前</div>
					<div class="my_question_four">
						&nbsp;&nbsp; &nbsp;&nbsp;<a class="my_question_four111">北京</a>
					</div>
					<hr class="hr_one">
				</div>



				<!--我的回答-->
				<div class="my_answer hide me101">
					<div class="my_answer_one">
						<a class="my_answer_11"> 所有回答 </a> <a class="my_answer_11">
							金牌回答 </a> <a class="my_answer_11"> 问题被采纳 </a> <a class="my_answer_11">
							回答被点赞 </a> <a class="my_answer_11"> 已解决 </a> <a class="my_answer_11">

							等待采纳</a>
					</div>
				</div>

				<!--我的关注-->
				<div class="my_answer hide mylook me101">
					<div class="my_answer_one">
						<a class="my_answer_11"> 已解决 </a> <a class="my_answer_11"> 未解决
						</a>

					</div>
				</div>
			</div>


		</div>

	</div>


	<!--************************************* 顶部-->


	<link href="css/myQUestionAndanser/footer.css" rel="stylesheet"
		type="text/css" />

	<div id="footer">
		<div class="ft-content">
			<div class="ft-copyright">
				<div class="ft-safety">
					<a class="s-a" target="_blank"
						href="https://search.szfw.org/cert/l/CX20140627008255008321"
						id="___szfw_logo___"></a> <a class="s-b"
						href="https://ss.knet.cn/verifyseal.dll?sn=e130816110100420286o93000000&ct=df&a=1&pa=787189"
						target="_blank" rel="nofollow"></a> <a class="s-c"
						href="http://www.itrust.org.cn/Home/Index/itrust_certifi/wm/1669928206.html"
						target="_blank" rel="nofollow"></a>
				</div>
				<a href="http://www.mafengwo.cn"><i class="ft-mfw-logo"></i></a>
				<p>
					© 2016 Mafengwo.cn <a href="http://www.miibeian.gov.cn/"
						target="_blank" rel="nofollow">京ICP备11015476号</a>
					京公网安备110105013401号 京ICP证110318号
				</p>
				<p>
					新出网证(京)字242号 全国统一客服电话：<span class="highlight">4006-345-678</span><a
						target="_blank" href="http://www.mafengwo.cn/s/sitemap.html"
						class="highlight m_l_10">网站地图</a>
				</p>
			</div>
		</div>
	</div>


	<!--返回顶部的代码-->

	<!--************************************* 返回顶部-->


	<!--返回顶部的代码-->
	<link href="css/myQUestionAndanser/toolbar.css" rel="stylesheet"
		type="text/css" />

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
			<!--<div class="wx-official-pop"><img src="http://images.mafengwo.net/images/qrcode-weixin.gif"><i class="_j_closeqrcode"></i></div>-->
		</div>
		<div class="toolbar-item-down">
			<a role="button" class="btn _j_gobottom"> <i class="icon_down"></i>
				<em>页面底部</em>
			</a>
		</div>
	</div>


	<script language="javascript" type="text/javascript">
		if (typeof M !== "undefined" && typeof M.loadResource === "function") {
			M
					.loadResource("http://js.mafengwo.net/js/cv/js+AHeaderWo:js+mSnsShare:js+M+module+dialog+Layer:js+M+module+dialog+DialogBase:js+M+module+dialog+Dialog:js+M+module+dialog+alert:js+qa+DoShare:js+qa+qa_module+PreLoadImgs:js+jquery.tmpl:js+qa+Docommon:js+M+module+Storage:js+jquery.jgrowl.min:js+AMessage:js+M+module+FrequencyVerifyControl:js+M+module+FrequencySystemVerify:js+ALogin:js+M+module+ScrollObserver:js+M+module+QRCode:js+AToolbar:js+ACnzzGaLog:js+ARecruit:js+ALazyLoad^Z1ZR^1471923715.js");
		}
	</script>
</body>
</html>