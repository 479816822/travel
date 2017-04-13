<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>sak-question</title>

<link href="css/ask_question/ask_question.css" rel="stylesheet"
	type="text/css">


<script language="javascript" src="js/jquery-3.1.0.min.js"
	type="text/javascript"></script>
<script language="javascript" src="js/jquery-validation-1.15.1.js"
	type="text/javascript"></script>

<script type="text/javascript">
	$(function() {

		//把选择了的标签添加到隐藏的text中去
		$("._qa_tag").click(function() {
			var str = $(this).children().html();
			$(this).addClass("background11");
			var str1 = $(this).parent().children().eq(0).val();
			if (str1 != null) {
				str1 = str1 + ";" + str;
			} else {
				str1 = str;
			}
			$(this).parent().children().eq(0).val(str1);

		})

	});
</script>

</head>
<body>

	<!--************************************* 头部-->
		<div class="header" style=" z-index: 200;
    height: 46px;
    width: 100%;
    background-color: rgba(34, 35, 36, 0.95);
    background-color: #2d2e2f \9; position: fixed;
    top: 0;
    left: 0;
    clear: both;">
		<div class="header1" style="    width: 100%;
    height: 100%;
    margin: 0 ;">
			<iframe src="Mheader" frameborder="0" scrolling="no" marginheight="0"
					marginwidth="0" style="margin: 0px auto;    z-index: -990;
    width: 100%;
    height: 410px;" ></iframe> </div>
	</div>




	<!--************************************主要的内容**************************8-->
	<!--************************************主要的内容**************************8-->
	<!--************************************主要的内容**************************8-->
	<form action="ask_questions" method="post">

		<div class="main">
			<div class="main_mian">
				<div class="main_center">

					<div class="center_left">

						<!--****************8提问的主要问题**************-->
						<div class="qt-main">

							<!-- 面包屑导航 -->
							<div class="crumb">
								<a href="goIndex">旅游问答</a> &gt; <span>我要提问</span>
							</div>


							<!-- 问题标题 -->
							<div class="qt-tit _qa_block" id="_qa_title">
								<h5>问题标题</h5>
								<div class="qt-con _j_word">
									<input type="text" placeholder="标题不小于10字哦" data-min_num="10"
										name="quesTitle" data-max_num="80" class="_qa_title_input">
									<span class="count"><span class="_j_word_num">0</span>/80
										字</span>
								</div>
							</div>

							<!-- 问题详细内容 -->
							<div class="qt-details _qa_block" id="_qa_detail">
								<h5>
									<a title="添加问答内容" class="icon" id="_qa_show_question_detail"></a>问题详细内容
								</h5>
								<div class="qt-con _j_word" id="_js_answerText">
									<div class="qt-details-box _js_forFixTitle">
										<textarea name="quesMes" class="_j_content _j_answer_suggest"
											id="_js_editorText" placeholder=""></textarea>
									</div>
								</div>
							</div>

							<!-- 选择目的地 -->
							<div class="qt-mdd _qa_block" id="_qa_mdd">
								<h5>输入目的地</h5>
								<div class="qt-con _qa_select" id="_qa_select_mdds">
									<input type="text" placeholder="" class="_qa_select_input"
										name="keyWord">
									<ul
										class="mdds_search_list _qa_select_content _qa_mdds_search_list hide"></ul>
									<div class="qt-mdd-option _qa_select_content"></div>
								</div>
							</div>

							<!-- 标签分类 -->
							<div class="qt-tags _qa_block" id="_qa_tags">
								<h5>标签分类</h5>
								<div class="qt-con">
									<input type="text" value="" style="display: none;"
										name="keyWord">
									<div class="tag _qa_tag" >
										<span>行程</span>
									</div>
									<div class="tag _qa_tag" >
										<span>景点</span>
									</div>
									<div class="tag _qa_tag" >
										<span>美食</span>
									</div>
									<div class="tag _qa_tag" >
										<span>住宿</span>
									</div>
									<div class="tag _qa_tag" >
										<span>交通</span>
									</div>
									<div class="tag _qa_tag" >
										<span>购物</span>
									</div>
									<div class="tag _qa_tag" >
										<span>签证</span>
									</div>
									<div class="tag _qa_tag" >
										<span>通讯</span>
									</div>
									<div class="tag _qa_tag" >
										<span>当地体验</span>
									</div>
									<div class="tags-add _qa_add_tag"></div>
								</div>
							</div>

							<!-- 悬赏 -->
							<div class="qt-reward _qa_block" id="_qa_reward">
								<h5>悬赏</h5>
								<div class="qt-con clearfix">
									<div class="sel-money _qa_select" id="_qa_select_honey">
										<div class="_qa_select_input">
											<input type="text" class="_qa_honey_input" placeholder="0蜂蜜"
												value="" readonly="readonly"> <i></i> <em></em>
										</div>
										<ul class="sel-option _qa_select_content _qa_honey_list">
											<li class="none">0蜂蜜</li>
											<li>1蜂蜜</li>
											<li>2蜂蜜</li>
											<li>5蜂蜜</li>
											<li>10蜂蜜</li>

										</ul>
									</div>
								</div>
							</div>

							<!-- 通知 -->
							<div class="qt-notice _qa_block" id="_qa_notice">
								<input type="checkbox" class="checkbox _qa_check active"
									name="isAnswered">
								<p>
									收到答案时短信通知我 <a class="_qa_change_mobile" data-bind="1">183****6327（更改）</a>
								</p>
							</div>

							<!-- 发布按钮 -->
							<div class="publish_question">
								<input class="qt-post-btn _j_publish"
									type="submit" value="发布问题">
							</div>

						</div>


					</div>
					<div class="center_rigth">

						<div class="qt-sider">
							<div class="qts-tit">提问的正确姿势</div>
							<div class="qts-con">
								<p class="qt-sider_p">1.问题要【具体】【真实】【诚恳】，问题较多，需全面阐述时，可以添加问题补充。结伴/交易/与旅行无关的提问将被删除。</p>
								<p class="qt-sider_p">2.给问题添加目的地，并打上正确的标签将有助于更快地获得回答。</p>
								<p class="qt-sider_p">3.蜂蜜悬赏可以让你的问题更容易得到回答哦！</p>
							</div>
						</div>

					</div>


				</div>
			</div>
		</div>
		<!--************************************主要的内容**************************8-->
		<!--************************************主要的内容**************************8-->
		<!--************************************主要的内容**************************8-->

	</form>


	<div id="footer">		<div class="footer1">
		<iframe src="IndexFooter.html" frameborder="0" scrolling="no" marginheight="0"
				marginwidth="0" style="margin: 0px auto;"></iframe>
	</div></div>


</body>
</html>