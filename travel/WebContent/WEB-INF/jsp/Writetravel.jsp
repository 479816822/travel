<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>write travels</title>
<link href="../../css/write_travels/writertravels.css" rel="stylesheet"
	type="text/css">
<!-- 引用图片上传的插件的js和css -->
<script type="text/javascript" src="../../js/jquery-3.1.0.min.js"></script>

<link rel="stylesheet"
	href="../../pluing/publicity/zyupload/skins/zyupload-1.0.0.min.css " type="text/css">
<script type="text/javascript"
	src="../../pluing/publicity/zyupload/zyupload-1.0.0.min.js"></script>

<!-- 初始化文件上传 -->
<script type="text/javascript">
	$(function() {
		// 初始化插件
		function fun1(p) {
			$("#zyupload").zyUpload(
					{
						width : "800px", // 宽度
						height : "700px", // 宽度
						itemWidth : "800px", // 文件项的宽度
						itemHeight : "700px", // 文件项的高度
						url : "upload", // 上传文件的路径
						fileType : ["jpeg", "JPG","JPEG","jpg", "png", "txt", "js", "exe" ],// 上传文件的类型
						fileSize : 51200000000, // 上传文件的大小
						multiple : true, // 是否可以多个文件上传
						dragDrop : true, // 是否可以拖动上传文件
						tailor : true, // 是否可以裁剪图片
						del : true, // 是否可以删除文件
						finishDel : true, // 是否在上传文件完成后删除预览
						/* 外部获得的回调接口 */
						onSelect : function(selectFiles, allFiles) { // 选择文件的回调方法  selectFile:当前选中的文件  allFiles:还没上传的全部文件
							console.info("当前选择了以下文件：");
							console.info(selectFiles);
						},
						onDelete : function(file, files) { // 删除一个文件的回调方法 file:当前删除的文件  files:删除之后的文件
							console.info("当前删除了此文件：");
							console.info(file.name);
						},
						onSuccess : function(file, response) { // 文件上传成功的回调方法
							console.info("此文件上传成功：");
							console.info(file.name);
							console.info("此文件上传到服务器地址：");
							console.info(response);
							$("#uploadInf").append(
									"<p style='display:none' class='img_only_id'>"
											+ response + "</p>");
							fun($(this), response, p);
							//	$(".close_div").hide();
						},
						onFailure : function(file, response) { // 文件上传失败的回调方法
							console.info("此文件上传失败：");
							console.info(file.name);
						},
						onComplete : function(response) { // 上传完成的回调方法
							console.info("文件上传完成");
							console.info(response);
						}
					});
		}

		//把图片加载到相应的位置进行显示
		function fun(p, str, t) {
			$(".close_div").remove();
			var str1 = str.length;
			var n = str1 - 2;
			var str2 = str.substring(2, n)
			t.attr("src", str2);
		}
		//插件初始化成功
		//加载封面的图片
		$(".img_float_img").click(function() {
			var $newnode = $model5.clone(true);
			$(this).parent().append($newnode);
			fun1($(".main_header"))
			$(".close_div").show();
		})

		//这是需要动态的创建节点实现相应的功能

		//添加文字
		$(".add_the_content").click(function() {
			//创建节点
			var $newnode = $model1.clone(true);
			$newnode.removeClass("hide_div");
			fun1($(".main_header"))
			$(this).parent().parent().after($newnode);
		})



		//隐藏
		$(".click_cl").click(function() {
			if($(this).next().hasClass("div_div_ttt")){
				$(this).next().show();
				$(this).next().addClass("div_div_tt");
				$(this).next().removeClass("div_div_ttt");
			}else if($(this).next().hasClass("div_div_tt")){
				$(this).next().addClass("div_div_ttt");
				$(this).next().removeClass("div_div_tt");
				$(this).next().hide();
			}
		})

		//上传照片
		$(".add_the_phote").click(function() {
			var $newnode = $mode4.clone(true);
			$newnode.removeClass("hide_div");
			$(this).parent().parent().after($newnode);
			
			var $newnode11 = $model5.clone(true);
			$(this).parent().parent().before($newnode11);
			
			var $p = $newnode
			$(".close_div").show();
			fun1(($p).children())
			copy_node($p);
		})

		//添加标题
		$(".add_the_title11").click(function() {
			var $newnode = $model2.clone(true);
			$newnode.removeClass("hide_div");
			$(this).parent().parent().after($newnode);
		})

		//点击完成时文字
		$(".save").click(function() {
			//创建节点
			copy_node($(this).parent().parent());
			$(this).hide();
		})

		//点击确定时段落
		$(".base_info_button")
				.click(
						function() {
							//创建节点
							copy_node($(this).parent());
							//在右边添加段落名
							var str = '<li class="li_rigth1"><span> 0/1 &nbsp;</span><span>'
									+ $(this).prev().val() + '</span></li>'
							$node = $(str);
							$(".ul_rigth1").append($node);
							$(this).hide();
						})

		//重修改段落的值
		$(".paragraph_name").blur(function() {
			var str = $(this).val();
		})

		//函数处理相同的地方进行工具的复制
		function copy_node(p) {
			var $newnode = $model.clone(true);
			p.after($newnode);
		}

		//使用ajax进行数据的传送发表游记
		$(".post_three").click(function() {
			//进行数据封装
			var num = $(".content_1010").children().length;
			var $p = $(".content_1010").children();
			var i = 1;
			var j = 0;
			var objArray = new Array();
			while (i < num) {
				if ($p.eq(i).hasClass("add_word_v2")) {
					//这是文字的内容
					objArray[j] = "0" + $p.eq(i).children().val();
				} else if ($p.eq(i).hasClass("img111")) {
					//这是图片
					objArray[j] = "1" + $p.eq(i).children().attr("src");
				} else if ($p.eq(i).hasClass("div_div_div")) {
					//这是段落
					objArray[j] = "2" + $p.eq(i).children().val();
				}
				j = j + 1;
				i = i + 2;
			}
			//最后两项为标题和封面的地址float_input
			objArray[j] = $(".float_input").val();
			objArray[j + 1] = $(".main_header").attr("src");

			//使用ajax进行数据的传送
			$.ajax({
				type : "POST",
				url : "writeTravel",
				data : JSON.stringify(objArray),
				contentType : 'application/json; charset=utf-8',
				dataType : 'json',
				success : function(msg) {
					//成功则转发到首页显示
					location.href = "to_myHome";
				},
				error : function(msg) {
					//提示游记发表失败
					alert("error")
				}
			});



		});

		var $mode4 = $(".img111");
		var $model = $(".content_tool");
		var $model1 = $(".add_word_v2").detach();
		var $model2 = $(".div_div_div").detach();
		
		var $model5 = $(".zyupload").detach();

	});
</script>

</head>
<body>
	<div class="header">
		<div class="header1">
		<iframe src="VisitHead.html" frameborder="0" scrolling="no" marginheight="0"
				marginwidth="0" style="margin: 0px auto;"></iframe>
	</div>
	</div>


	<div class="all_live">

		<div class="all_live_one">
			<a>
				<div class="all_live_one1">游记完成度------------------- 20%</div>
			</a>
		</div>

		<!-- 这是上传图片的div不上传时是隐藏着 -->
		<div id="zyupload" class="zyupload close_div"></div>
		
		<!-- 这是上传图片的div不上传时是隐藏着 -->

		<div class="all_live_two">
			<span class="all_live_two_one">完成度详情&nbsp;&nbsp;</span> <span class="all_live_two_two"> 游记常见问题与解答</span>

		</div>
		<div class="all_live_three">
			<div class="all_live_three_one">保存草稿</div>
			<div class="all_live_three_two">预览</div>
		</div>
	</div>

	<div class="mian">

		<div class="img_float">
			<a target="_self">
				<div class="img_float_img"></div>
			</a>
			<div class="add_img">
				<span class="add_img_one"> 设置游记头图 </span> <span class="add_img_two">
					图片建议选择尺寸大于1680px的高清大图，如相机原图 </span>
			</div>

		</div>
		<div class="search_float">
			<form>
				<input type="text" class="float_input" placeholder="填写游记标题"
					maxlength="48">
			</form>
		</div>
		<!-- 封面的图片 -->
		<div class="main_header">
			<img src="../../syste_img/img/write_travels/page_bg.jpg" class="main_header">
		</div>
		<!--*******************88浮动的标题框************************88-->
		<!--*******************88浮动的标题框************************88-->

		<!--&&&&&&&&&&&&&&&&&&&&&&&&*****************游记的主要内容***************-->

		<div class="main_content">
			<div class="main_content_left">
				<div class="content_1010">
					<!-- 这是添加内容的选项实现图片和段落和文字内容 -->
					<div class="content_tool">
						<a class="click_cl">
							<div class="l_div_one"></div>
						</a>
						<div class="div_div_ttt hide_show">
						<a class="add_the_content">
							<div class="all_div">
								<div class="l_div_one1"></div>
								<span class="all_font"> 添加文字 </span>
							</div>
						</a> <a class="add_the_phote">
							<div class="all_div">
								<div class="l_div_one2"></div>
								<span class="all_font"> 添加照片 </span>
							</div>
						</a> <a>
							<div class="all_div">
								<div class="l_div_one3"></div>
								<span class="all_font"> 添加视频 </span>
							</div>
						</a> <a class="add_the_title11">
							<div class="all_div">
								<div class="l_div_one4"></div>
								<span class="all_font"> 添加段落标题 </span>
							</div>
						</a>
						</div>
					</div>
					<!-- 这里是展示数据的地方 -->
				</div>


				<!-- 音乐 -->
				<div class="content_music">
					<div class="music_one">游记音乐</div>
					<div class="music_two">
						<div class="music_two_font">背景音乐请选择后缀为.mp3的音乐文件</div>
						<div class="choose_music">选择</div>
					</div>
				</div>
				<div class="content_post">
					<div class="post_one">保存草稿</div>
					<!--************* 发表游记使用ajax发表成功跳转到首页显示*************** -->
					<div class="post_three">发表游记</div>
					<div class="post_two">预览</div>

				</div>

			</div>
			<!-- ****************************记录段落的部分***************************** -->
			<!-- ****************************记录段落的部分***************************** -->
			<div class="main_content_rigth">
				<div class="rigth_one"></div>
				<div class="rigth_one_title">游记目录</div>
				<div class="rigth_main_title">
					<ul class="ul_rigth1">
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div id="footer">
		<div class="footer1">
			<iframe src="IndexFooter.html" frameborder="0" scrolling="no" marginheight="0"
					marginwidth="0" style="margin: 0px auto;"></iframe>
		</div>
	</div>



	<div class='add_word_v2 hide_div'>
		<textarea class='_j_edittxtarea' placeholder='在这儿添加游记文字......'></textarea>
		<div class='5555'>
			<a class='save cancel'>完成</a>
		</div>
	</div>

	<!--************** 添加照片************** -->
	<div class="img_div_img img111 hide_div">
		<img src="" class="img_div_img">
	</div>

	<!-- 添加标题 -->
	<div class="div_div_div hide_div">
		<input type="text" class="title paragraph_name" placeholder="填写段落"
			maxlength="15">
		<div class="base_info_button">
			<a class="btn_big">确定</a>
		</div>
	</div>
</body>
</html>