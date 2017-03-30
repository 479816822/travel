<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Title</title>
<link href="css/show_travels/show_travels.css" rel="stylesheet"
	type="text/css">


<!-- 引用图片上传的插件的js和css -->
<script type="text/javascript" src="js/jquery-1.7.2.js"></script>

<link rel="stylesheet"
	href="publicity/zyupload/skins/zyupload-1.0.0.min.css " type="text/css">
<script type="text/javascript"
	src="publicity/zyupload/zyupload-1.0.0.min.js"></script>


<script language="javascript" src="css/myhome/myhome.js"
	type="text/javascript"></script>

<script type="text/javascript">
	$(function() {

		var url;
		//发表回复
		$(".post_reply").click(function() {
			//使用ajax进行数据传输
			var reply = {
				"id" : $(".user_travel_id").html(),
				"replyMsg" : $(".text_area").val()
			};
			url = "replyNote"
			ajax(reply);
		});

		//ajax公用的方法
		function ajax(reply) {
			$.ajax({
				type : "POST",
				url : url,
				data : JSON.stringify(reply),
				contentType : 'application/json; charset=utf-8',
				dataType : 'json',
				success : function(msg) {
					fun(msg.replyInfo);
				},
				error : function(msg) {
					//提示输需要入的信息

				}
			});
		}

		//处理游记的回复的内容
		function fun(reply) {
			//复制显示的div
			var $newnode = $model1.clone(true);
			//进行数据的插入
			$(".text_area").val("");
			var num;
			num=$(".answer_msg").length;
			num=num+1;
			

			$newnode.children().eq(0).children().eq(0).children().attr("src",
					reply.user.userHead);
			$newnode.children().eq(0).children().eq(1).children().eq(1)
					.children().html(reply.user.userNick);
			
			$newnode.children().eq(0).children().eq(2).html(""+num+"#");

			$newnode.children().eq(0).children().eq(1).children().eq(0)
					.children().html("LV" + reply.user.userLevel);

			var i=0;
			if (reply.replyImg != null) {
				$newnode.children().eq(1).children().eq(0).attr("src",
						reply.replyImg);
				i=1;
			} else {
				$newnode.children().eq(1).children().eq(0).remove();
			}

			if (reply.replyMsg != null) {
				$newnode.children().eq(1).children().eq(i).html(reply.replyMsg);
			} else {
				$newnode.children().eq(1).children().eq(1).remove();
			}

			
			$newnode.children().eq(2).children().eq(0).html(reply.replyDate);

			$(".page_page").before($newnode);
			$newnode.show();

		}

		var $model1 = $(".only_travel_write").detach();

	});
</script>

</head>
<body>

	<!-- 这是隐藏的 -->

	<div class="answer_msg only_travel_write" style="display: none;">
		<div class="answer_people">
			<div class="people_info">
				<img src="" class="people_info">
			</div>
			<div class="people_info1">
				<div class="name">
					<a class="name"></a>
				</div>
				<div class="level name">
					<a class="level"></a>
				</div>
			</div>
			<div class="floor"></div>
		</div>
		<div class="answer_what">
			<!-- 只支持一张图片的 -->
			<img src="" class="the_img">
			<!-- 文字内容 -->
			<span class="answer_span"> </span>
		</div>
		<div class="answer_date">
			<div class="answer_date_one"></div>
			<div class="answer_date_three">
				<a class="answer_date_three1">回复</a>
			</div>
			<div class="answer_date_two">
				<a>举报</a>
			</div>
		</div>
	</div>



	<div class="header">
		<div class="header1">
			<iframe src="Mheader" frameborder="0" scrolling="no" marginheight="0"
					marginwidth="0" style="margin: 0px auto;"></iframe>
		</div>
	</div>



	<div class="main">

		<!-- 游记的封面图 -->
		<div class="main_header">
			<img src="${travelinfo.mdThemeImg }" class="main_header"> <span
				class="user_travel_id" style="display: none;">${travelinfo.mdRecid }</span>
		</div>

		<div class="mian_one">
			<div class="main_main">
				<div class="main_header_left">
					<div class="main_header_left_one">
						<a class="per_name" href="">${userInfo.userNick} </a>
						<!-- 游记用户的id隐藏 -->
						<span class="it_is_my_id" style="display: none;">${userInfo.mdRecid}</span>
					</div>
					<div class="main_header_left_two">
						<a class="a_one">LV.${userInfo.userLevel} </a>
					</div>
					<div class="main_header_left_three">
						<!-- 更新它的关注的信息 -->
						<a class="a_three"><span>[关注TA]</span> </a>
					</div>
					<div class="main_header_left_four">${travelinfo.mdCreateTime}</div>
					<div class="main_header_left_five"></div>
					<div class="main_header_left_six">${travelinfo}</div>
				</div>
				<div class="main_header_rigth">
					<div class="main_header_rigth_one1">
						<!-- 背景音乐 -->
						<img src="syste_img/img/show_travels/music.gif" height="18px" width="20px"
							class="music_img" alt="">
					</div>
					<div class="main_header_rigth_one">
						<div class="one_one1"></div>
						<div class="one_two1">43分享</div>
					</div>
					<div class="main_header_rigth_two">
						<div class="one_one"></div>
						<div class="one_two">238收藏</div>
					</div>
				</div>
			</div>
		</div>

		<!--中间的主要内容-->
		<div class="main_center">
			<div class="center">
				<div class="center_left">
					<div class="left_one">
						<ul>
							<li class="time">出发时间<span>/</span>2015-10-17<i></i></li>
							<li class="day">出行天数<span>/</span>5 天
							</li>
							<li class="people">人物<span>/</span>小两口
							</li>
							<li class="cost">人均费用<span>/</span>6000RMB
							</li>
						</ul>
					</div>
					<!-- ***************游记的主要内容**************** -->
					<div class="div_two">
						<!--这里根据内容选择图片的div和文字的div-->

						<c:forEach items="${travelDetailsList}" var="travelDetail">
							<c:choose>
								<c:when test="${travelDetail.traImg != null }">
									<div class="show_img ">
										<img class="img_imgs" src="${travelDetail.traImg}">
									</div>
								</c:when>

								<c:when test="${travelDetail.traMsg != null }">
									<div class="show_font ">${travelDetail.traMsg}</div>
								</c:when>
							</c:choose>
						</c:forEach>

						<!--这里根据内容选择图片的div和文字的div-->


						<!--文字-->
						<!--消息的回复-->
						<c:set var="replyNum" value="0"></c:set>
						<c:forEach items="${replyList}" var="reply">
							<c:set var="replyNum" value="${replyNum+1}"></c:set>
							<div class="answer_msg">
								<!--回复人-->
								<div class="answer_people">
									<div class="people_info">
										<img src="${reply.user.userHead}" class="people_info">
									</div>
									<div class="people_info1">
										<div class="name">
											<a class="name">${reply.user.userNick}</a>
										</div>
										<div class="level name">
											<a class="level">LV${reply.user.userLevel}</a>
										</div>
									</div>
									<div class="floor">${replyNum}#</div>
								</div>
								<!--回复的内容-->
								<div class="answer_what">
									<!-- 只支持一张图片的 -->
									<c:if test="${reply.replyImg != null }">
										<img src="${reply.replyImg}" class="the_img">
									</c:if>

									<c:if test="${reply.replyMsg !=null}">
										<!-- 文字内容 -->
										<span class="answer_span"> ${reply.replyMsg} </span>
									</c:if>


								</div>
								<!--回复的时间-->
								<div class="answer_date">
									<div class="answer_date_one">${reply.replyDate}</div>
									<div class="answer_date_three">
										<a class="answer_date_three1">回复</a>
									</div>
									<div class="answer_date_two">
										<a>举报</a>
									</div>
								</div>
							</div>
						</c:forEach>



						<!--回复内容的分页-->
						<!-- 最后实现 -->
						<!--回复内容的分页-->
						<div class="page_page"></div>
						<!--回复内容的分页-->



						<!--回复内容的输入-->
						<!--回复内容的输入-->
						<div class="write_msg ">


							<div class="write_msg_left">
								<div class="write_msg_left_img">
									<!--输入用户的用户的头像-->
									<img class="write_msg_left_img" src="${user.userHead }">
								</div>
							</div>
							<div class="write_msg_rigth">
								<div class="write_msg_rigth_one">
									<div class="li_1">
										<a class="to_answer">回复游记</a>
									</div>
									<div class="up_1">
										<a>关于举牌</a>
									</div>
									<div class="up_1">
										<a>关于打赏</a>
									</div>

								</div>
								<div class="write_msg_rigth_two">
									<div class="face_write">
										<!--表情输入-->
										<div class="div_face"></div>
										<div class="div_face1"></div>
										<div class="div_face3"></div>
										<div class="div_face4"></div>
										<div class="div_face5"></div>
									</div>
									<!--文本输入区域-->
									<div class="text_div">
										<textarea class="text_area"></textarea>
									</div>
									<div class="true_input post_reply">
										<a class="reply-submit">发表回复</a>
									</div>
								</div>

							</div>

						</div>
					</div>

				</div>


				<div class="center_rigth">
					<!--推荐的地址-->
					<div class="center_rigth1">
						<!--相关的地址-->
						<div class="center_rigth1_address">
							<span class="span_one">相关目的地：</span> <a> 印度尼西亚 </a>
						</div>
						<div class="center_rigth1_img">
							<img src="syste_img/img/show_travels/img_1.jpeg" class="class_2010" alt="巴布亚省">
							<strong class="strong1">巴布亚省</strong>
						</div>
						<div class="center_rigth1_img_num">
							<div class="show_num">
								有<span class="show_num1">686</span>张照片
							</div>
							<div class="show_rigth">
								<a class="a_a11" href=""> > </a>
							</div>
						</div>
					</div>
					<!--相关的游记-->
					<div class="center_rigth2">
						<dl>
							<dt>
								<img class="img_111" src="syste_img/img/show_travels/img_12.jpeg">
							</dt>
							<dd class="dl_dd">2016年3月3日 蜂首纪念</dd>
						</dl>
					</div>
					<!--游记的段落-->
					<div class="center_rigth3">
						<div class="center_paragraph">游记目录</div>
						<div class="center_paragraph11">
							<div class="paragraph">
								<!-- 循环显示用户的游记的段落 -->
								<c:set var="num" value="0"></c:set>
								<c:forEach items="${travelDetailsList}" var="travel">
									<c:if test="${travel.paragraphName!=null }">
										<c:set var="num" value="${num+1}"></c:set>
										<div class="paragraph_main">
											<span class="span_span">${num}/0</span><a>
											${travel.paragraphName} </a>
										</div>
									</c:if>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>



			</div>
		</div>
	</div>


	<div id="footer">
		<div class="footer1">
			<iframe src="IndexFooter" frameborder="0" scrolling="no" marginheight="0"
					marginwidth="0" style="margin: 0px auto;"></iframe>
		</div>
	</div>
</body>
</html>