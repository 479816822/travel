<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>${travelInfos.mdTheme }</title>
<link href="css/show_travels/show_travels.css" rel="stylesheet"
	type="text/css">
	<script type="text/javascript" src="js/jquery-3.1.0.min.js"></script>


<!-- 引用图片上传的插件的js和css -->
<link rel="stylesheet"
	href="pluing/publicity/zyupload/skins/zyupload-1.0.0.min.css "
	type="text/css">
<script type="text/javascript"
	src="pluing/publicity/zyupload/zyupload-1.0.0.min.js"></script>
<script type="text/javascript">
	$(function() {

		var url;
		//发表回复
		$(".post_reply").click(function() {
			//使用ajax进行数据传输
			var reply = {
				"mdTravelId" : $(".user_travel_id").html(),//被评游记
				"mdCommentContent" :$(".text_area").val(),
				"mdRefId":$(".people_info_recid").html()
			};
			url = "replyTravel"
			ajax(reply);
		});
		
		//2.ajax进行顶的数据同步更新
		$(".praise_1").click(function() {
			var travel = {
				"mdRecid" : $(".praise_oness").html(),
				"mdStdname" : $(".the_number").html()
			}
			url = "updatePraise"
			ajax1($(this), travel);
		});

		//ajax公用的方法
		function ajax(reply) {
			$.ajax({
				type : "POST",
				url : url,
				data : reply,
				dataType : 'json',
				success : function(msg) {
					fun(msg.replyInfo);
				},
				error : function(msg) {
					//提示输需要入的信息

				}
			});
		}

		
		//ajax公用的方法
		function ajax1(p, travel) {
			var num=$(".the_number").html();
			if(num==null)
				num="0";
			var n=parseInt(num);
			$.ajax({
				type : "POST",
				url : url,
				data : travel,
				dataType : 'json',
				success : function(msg) {
					//更新数据
					if(url=="updatePraise"&&msg>0){
						n=n+1;
					$(".the_number").html(n);
					}
				},
				error : function(msg) {
					//提示输需要入的信息

				}
			});
		}
		
		//点击播放
		$(".museic_cl").click(function(){
			$(this).hide();
			$(".hid_musci").show();
			  var myAudio = document.getElementById('audio1');
			  myAudio.play();

		});
		
		//暂停播放
		$(".hid_musci").click(function(){
			$(".museic_cl").show();
			$(this).hide();
			  var myAudio = document.getElementById('audio1');
			  myAudio.pause();

		})
		
		//处理游记的回复的内容
		function fun(reply) {
			//复制显示的div
			var $newnode = $model1.clone(true);
			//进行数据的插入
			$(".text_area").val("");
			var num;
			num = $(".answer_msg").length;
			num = num + 1;

			$newnode.children().eq(0).children().eq(0).children().attr("src",
					reply.user.userHeadImg);
			$newnode.children().eq(0).children().eq(1).children().eq(1)
					.children().html(reply.user.mdUserName);

			$newnode.children().eq(0).children().eq(2).html("" + num + "#");

			$newnode.children().eq(0).children().eq(1).children().eq(0)
					.children().html("LV" + reply.user.mdLevel);

			var i = 0;
			if (reply.mdImg != null) {
				$newnode.children().eq(1).children().eq(0).attr("src",
						reply.mdImg);
				i = 1;
			} else {
				$newnode.children().eq(1).children().eq(0).remove();
			}

			if (reply.mdCommentContent != null) {
				$newnode.children().eq(1).children().eq(i).html(reply.mdCommentContent);
			} else {
				$newnode.children().eq(1).children().eq(1).remove();
			}

			$newnode.children().eq(2).children().eq(0).html(reply.commentDate);
			$newnode.children().eq(3).html(reply.mdRefId);

			$(".page_page").before($newnode);
			$newnode.show();
			$(".people_info_recid").hide();

		}

		var $model1 = $(".only_travel_write").detach();

	});
</script>

</head>
<body>


<audio id="audio1" src="${travelInfos.mdMusic }" autoplay="autoplay" loop="loop">
</audio>

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
		<div class="c" style="display: none;">
				${reply.mdRefId}"
		</div>
	
	</div>

 
		<div class="header1">
			<iframe src="VisitHead" frameborder="0" scrolling="no" marginheight="0"
				marginwidth="0" style="margin: 0px auto;"></iframe>
		</div>



	<div class="mains">
		<div class="travel_user_head" style="height: 100px;width: 100px;border-radius: 50px; position: absolute;margin-top: 430px;margin-left: 18%">
							<!--游记的用户的头像-->
								<a href="toHostHome?userId=${travelInfos.user.mdUserRecid }">	<img style="height: 100px;width: 100px;border-radius: 50px;" class="travel_user_head" src="${travelInfos.user.userHeadImg}">
					</a></div>
					
		<div style="font-size: 25px;color: white;margin-top: 430px;margin-left: 26%;position: absolute;">${travelInfos.mdTheme }</div>		
		
		
			<div class="MDing" style="height: 80px;width: 80px;margin-top: 400px;margin-left: 75%;position: absolute; ">
					<span style="display: none;" class="praise_oness">${travelInfos.mdRecid}</span>
						 <a 
						class="praise_1" data-vote="0" title="顶一下" style=" float:right; vertical-align: middle;height: 34px;width: 40px; 
    background-image: url(http://images.mafengwo.net/images/home_new2015/ico_sprite_v7.png);
    background-position: 0 -90px;
    text-align: center;
    font-size: 18px;
    color: #fff;
    text-shadow: 1px 1px 1px rgba(228, 128, 11, 0.71);
    line-height: 33px;">顶</a>
													<!-- 顶一下更新数据库的内容 -->
			</div>	
			
			<div style="font-size: 25px;color: white;margin-top: 435px;margin-left: 78.5%;position: absolute;">
			
			<span id="topvote5663645" class="the_number" style="color:white;font-size: 15px;width: 50px;height: 30px;">${travelInfos.mdStdname}</span>
			</div>
					
		<!-- 游记的封面图 -->
		<div class="main_header">
			<img src="${travelInfos.mdThemeImg }" class="main_header"> <span
				class="user_travel_id" style="display: none;">${travelInfos.mdRecid }</span>
		</div>


		<div class="mian_onesss" style=" border-bottom: 2px solid #e8e8e6;height: 100px; width: 100%" >
		<div class="main_main">
				<div class="main_header_lefts">
					<div class="main_header_left_one" style="min-width: 20px;height: 50px;line-height: 30px;font-size: 20px;margin-top: 15px;">
						<a class="per_name" style="font-size: 18px;" href="toHostHome?userId=${travelInfos.user.mdUserRecid }">${travelInfos.user.mdUserName} </a>
						<!-- 游记用户的id隐藏 -->
						<span class="it_is_my_id" style="display: none;">${travelInfos.mdRecid}</span>
					</div>
					<div class="main_header_left_two" style="min-width: 30px;height: 50px;line-height: 30px;font-size: 20px;margin-top: 15px;text-align: center;">
						<a style="font-size: 16px;" class="a_one">LV.${travelInfos.mdLevel} </a> </div>
					<div class="main_header_left_three" style="min-width: 30px;height: 50px;line-height: 30px;font-size: 20px;margin-top: 15px;text-align: center;">
						<!-- 更新它的关注的信息 -->
						<a class="a_three"><span>[关注TA]</span> </a>
					</div>
					<div class="main_header_left_four" style="min-width: 30px;height: 50px;margin-top: 23px;text-align: center;">${travelInfos.createDate}</div>
					<div class="main_header_left_five" style="min-width: 20px;height: 20px;line-height: 30px;font-size: 20px;margin-top: 20px;text-align: center;"></div>
					<div class="main_header_left_six" style="min-width: 30px;height: 50px;line-height: 30px;font-size: 20px;margin-top: 16px;text-align: center;">${travelInfos.mdStdname}</div>
				</div>
				<div class="main_header_rigths" style="max-width:360px;min-width:340px;float:right;height: 50px">
		
				<div class="main_header_rigth_one1" style="min-width: 30px;height: 50px;line-height: 30px;
					font-size: 20px;margin-top: 10px;text-align: center;">
						<!-- 背景音乐 -->
						
						<div class="museic_cl music_img div_imgs" style="height:58px; width:58px; margin-top: 20px;background-image: url('syste_img/nn_sprite_v23.png'); background-position: -340px -240px;display: none;"></div>
						
						
						<img  class="hid_musci"  src="syste_img/img/show_travels/music.gif" height="22px" width="25px" class="music_img" alt="" style="margin-top: 14px ;">
						
					</div>
		
					<div class="main_header_rigth_one" style="min-width: 60px;height: 40px;line-height: 30px;font-size: 20px;">
						<div class="one_one1" style="margin-top: 0px"></div>
						<div class="one_two1" style="margin-top: 0px">43分享</div>
					</div>
					
						<div class="main_header_rigth_two" style="min-width: 60px;height: 40px;line-height: 30px;font-size: 20px;">
						<div class="one_one" style="margin-top: 0px"></div>
						<div class="one_two" style="margin-top: 0px">238收藏</div>
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
							<li class="time">出发时间<span>/</span>${travelInfos.startDate}<i></i></li>
							<li class="day">出行天数<span>/</span>${travelInfos.mdDayNumber} 天
							</li>
							<li class="people">人物<span>/</span>${travelInfos.mdTravelPeople}
							</li>
							<li class="cost">人均费用<span>/</span>${travelInfos.mdCostMoney}RMB
							</li>
						</ul>
					</div>
					<!-- ***************游记的主要内容**************** -->
					<div class="div_two">
						<!--这里根据内容选择图片的div和文字的div-->

						<c:forEach items="${travelInfos.listTravlePagragraph}"
							var="travelDetail">
							<c:choose>
								<c:when test="${travelDetail.mdImg != null }">
									<div class="show_img ">
										<img class="img_imgs" src="${travelDetail.mdImg}">
									</div>
								</c:when>

								<c:when test="${travelDetail.mdVideo != null }">
									<div class="show_video ">
									<video src="up${travelDetail.mdVideo}" controls="controls" width="600px" heith="600px">
			your browser does not support the video tag </video>
									</div>
								</c:when> 
								
								<c:when test="${travelDetail.mdContent != null }">
									<div class="show_font ">${travelDetail.mdContent}</div>
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
										<img src="${reply.user.userHeadImg}" class="people_info">
									</div>
									<div class="people_info1">
										<div class="name">
											<a class="name">${reply.user.mdUserName}</a>
										</div>
										<div class="level name">
											<a class="level">LV${reply.user.mdLevel}</a>
										</div>
									</div>
									<div class="floor">${replyNum}#</div>
								</div>
								<!--回复的内容-->
								<div class="answer_what">
									<!-- 只支持一张图片的 -->
									<c:if test="${reply.mdImg != null }">
										<img src="${reply.mdImg}" class="the_img">
									</c:if>

									<c:if test="${reply.mdCommentContent !=null}">
										<!-- 文字内容 -->
										<span class="answer_span"> ${reply.mdCommentContent} </span>
									</c:if>


								</div>
								<!--回复的时间-->
								<div class="answer_date">
									<div class="answer_date_one">${reply.commentDate}</div>
									<div class="answer_date_three">
										<a class="answer_date_three1">回复</a>
									</div>
									<div class="answer_date_two">
										<a>举报</a>
									</div>
								</div>
								<div class="people_info_recid" style="display: none;">
										${reply.mdRefId}"
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
									<img class="write_msg_left_img" src="${user.userHeadImg }">
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
										<textarea class="text_area" ></textarea>
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
							<img src="syste_img/img/show_travels/img_1.jpeg"
								class="class_2010" alt="巴布亚省"> <strong class="strong1">巴布亚省</strong>
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
								<img class="img_111"
									src="syste_img/img/show_travels/img_12.jpeg">
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
								<c:forEach items="${travelInfos.listTravlePagragraph}" var="travel">
									<c:if test="${travel.mdParagraphName!=null }">
										<c:set var="num" value="${num+1}"></c:set>
										<div class="paragraph_main">
											<span class="span_span">${num}/0</span><a>
												${travel.mdParagraphName} </a>
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
			<iframe src="IndexFooter" frameborder="0" scrolling="no"
				marginheight="0" marginwidth="0" style="margin: 0px auto;"></iframe>
		</div>
	</div>
</body>
</html>