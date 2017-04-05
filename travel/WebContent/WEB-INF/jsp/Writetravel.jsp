<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>发表游记</title>
<link href="css/write_travels/writertravels.css" rel="stylesheet"
	type="text/css">
<script type="text/javascript" src="js/jquery-3.1.0.min.js"></script>


   <script src="js/jquery-3.1.0.min.js" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" href="css/baseNews.css">


    <link href="css/jquery-ui.css" rel="stylesheet">
    <script type="text/javascript" src="js/jquery-1.8.1.js"></script>
    <script type="text/javascript" src="js/jquery-ui.js"></script>
    <script type="text/javascript" src="js/dateinput-ch-ZN.js"></script>
    <link href="css/red-datepicker.css" rel="stylesheet">

<link rel="stylesheet"
	href="pluing/publicity/zyupload/skins/zyupload-1.0.0.min.css "
	type="text/css">
<script type="text/javascript"
	src="pluing/publicity/zyupload/zyupload-1.0.0.min.js"></script>

<script type="text/javascript">
	$(function() {
		var phote;
		// 初始化插件
		function fun1(p, num) {
			$("#zyupload").zyUpload(
					{
						width : "700px", // 宽度
						height : "1000px", // 宽度
						itemWidth : "140px", // 文件项的宽度
						itemHeight : "140px", // 文件项的高度
						url : "upload", // 上传文件的路径
						fileType : [ "jpeg", "JPG", "JPEG", "jpg", "png",
								"ogg", "mp4", "WebM", "MPEG4","MP3","WMA","MOD","flac" ],// 上传文件的类型
						fileSize : 5120000000000, // 上传文件的大小
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
							fun($(this), response, p, num);
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

		function fun(p, str, t, num) {
			$(".close_div").remove();
			var str1 = str.length;
			var n = str1 - 2;
			var str2 = str.substring(2, n)
			if (num == 1) {
				$(".header_imgs").attr("src", str2);
				$(".img_float").hide();
			} else if (num == 2) {
				var $newnode = $modelvideo.clone(true);
				$newnode.removeClass("hide_div");
				t.parent().parent().after($newnode);

				var $p = $newnode
				copy_node($p);
				($p).children().attr("src", str2);
			}else if (num == 3) {//音乐
				$(".music_two_font").html(str2);
			} else {
				var $newnode = $mode4.clone(true);
				$newnode.removeClass("hide_div");
				t.parent().parent().after($newnode);

				var $p = $newnode
				copy_node($p);
				($p).children().attr("src", str2);
			}
		}

		$(".img_float_img").click(function() {
			var $newnode = $model5.clone(true);
			$(this).parent().parent().parent().prev().append($newnode);
			var num = 1;
			fun1($(".main_header"), num)
			$(".close_div").show();
		})

		$(".add_the_content").click(function() {
			var $newnode = $model1.clone(true);
			$newnode.removeClass("hide_div");
			fun1($(".main_header"))
			$(this).parent().parent().after($newnode);
		})

		//隐藏
		$(".click_cl").click(function() {
			if ($(this).next().hasClass("div_div_ttt")) {
				$(this).next().show();
				$(this).next().addClass("div_div_tt");
				$(this).next().removeClass("div_div_ttt");
			} else if ($(this).next().hasClass("div_div_tt")) {
				$(this).next().addClass("div_div_ttt");
				$(this).next().removeClass("div_div_tt");
				$(this).next().hide();
			}
		})
		
		
		
		//*****************************************************填写信息
		  $('#dp1491376550436').datepicker(); //绑定输入框


            //选择人物
            $("input[name='mdTravelPeople']").blur(function() {
                $(this).next().next().show();
            });

            //获取焦点
            $("._j_personitem").click(function(){
               var values= $(this).children().html();
                var tt=$("input[name='mdTravelPeople']");
                tt.val(values);
                $("input[name='mdTravelPeople']").next().next().hide();
            });
		
		//***********************************************************填写信息

		$(".add_the_phote").click(function() {
			phote = $(this);
			//		var $newnode = $mode4.clone(true);
			//		$newnode.removeClass("hide_div");
			//		phote.parent().parent().after($newnode);

			var $newnode11 = $model5.clone(true);
			$(this).parent().parent().before($newnode11);
			$(".close_div").show();

			fun1($(this))
			//	var $p = $newnode
			//		fun1(($p).children())
			copy_node($p);
		})

		//添加视频
		$(".add_the_video").click(function() {
			var $newnode11 = $model5.clone(true);
			$(this).parent().parent().before($newnode11);
			$(".close_div").show();

			fun1($(this), 2)
			copy_node($p);
		})

		$(".add_the_title11").click(function() {
			var $newnode = $model2.clone(true);
			$newnode.removeClass("hide_div");
			$(this).parent().parent().after($newnode);
		})

		$(".save").click(function() {
			copy_node($(this).parent().parent());
			$(this).hide();
		})

		$(".base_info_button").click(
				function() {
					var numbers = $(".li_rigth1").length;
					numbers = numbers + 1;
					copy_node($(this).parent());
					var str = '<li class="li_rigth1"><span> 0/' + numbers
							+ '&nbsp;</span><span>' + $(this).prev().val()
							+ '</span></li>'
					$node = $(str);
					$(".ul_rigth1").append($node);
					$(this).hide();
					$(this).addClass("noshow");
				})

		$(".paragraph_name").blur(
				function() {
					var numbers = $(".paragraph_name").length;
					if ($(this).next().hasClass("noshow")) {
						numbers = numbers + 1;
						var str = $(this).val();
						var strs = "0/" + numbers + " ";
						numbers = numbers - 1;
						$(".ul_rigth1").children().eq(numbers).children().eq(0)
								.html(strs);
						$(".ul_rigth1").children().eq(numbers).children().eq(1)
								.html(str);
					}
				})

		//选择音乐
		$(".choose_music").click(
				function() {
					var $newnode11 = $model5.clone(true);
					$(this).parent().parent().before($newnode11);
					$(".close_div").show();
					fun1($(this),3)
				})

		function copy_node(p) {
			var $newnode = $model.clone(true);
			p.after($newnode);
		}

		
		//打开信息填写界面
		$(".now_write").click(function(){
			$(".base_new").show();
			$(".base_new").removeClass("base_new_hide_base");
		});
		
		//确定信息更新
		$(".true_true").click(function(){
			$(".a1000").html($("input[name='mdTravelPeople']").val())
			$(".a1001").html($("input[name='mdCostMoney']").val())
			$(".a1002").html($("input[name='mdDayNumber']").val())
			$(".a1003").html($("input[name='mdStartTime']").val())
			mdTravelPeople =$(".a1000").html();
			mdCostMoney = $(".a1001").html();
			mdDayNumber = $(".a1002").html();
			mdStartTime = $(".a1003").html(); 
			travels ={
					mdRecid : $(".travel_id").html(),
					mdTravelPeople : mdTravelPeople,
					mdCostMoney : mdCostMoney,
					mdDayNumber : mdDayNumber,
					mdStartTime : mdStartTime 
					};
			
			var objArray = new Array();
			objArray[0]=$(".travel_id").html();
			objArray[1]=mdTravelPeople;
			objArray[2]=mdCostMoney;
			objArray[3]=mdDayNumber;
			objArray[4]=mdStartTime;
			
			$.ajax({
				type : "POST",
				url : "updateTravelNews",
				data : JSON.stringify(objArray),
				contentType : 'application/json; charset=utf-8',
				dataType : 'json',
				success : function(msg) {
					//成功了
				$("#hideid").hide();
				location.href = "toMyHome";
				//location.href = "toMyHome";
				},
				error : function(msg) {
					$("#hideid").hide();
				}
			});
		});
		
		//取消
		$(".close_close").click(function(){
			$("#hideid").hide();
		})
		
		
		//发表游记
		$(".post_three").click(function() {
			var num = $(".content_1010").children().length;
			var $p = $(".content_1010").children();
			var i = 1;
			var j = 0;
			var objArray = new Array();
			while (i < num) {
				if ($p.eq(i).hasClass("add_word_v2")) {//文字
					objArray[j] = "0" + $p.eq(i).children().val();
				} else if ($p.eq(i).hasClass("img111")) {//图片
					objArray[j] = "1" + $p.eq(i).children().attr("src");
				} else if ($p.eq(i).hasClass("div_div_div")) {//段落名
					objArray[j] = "2" + $p.eq(i).children().val();
				} else if ($p.eq(i).hasClass("add_video")) {//视频
					objArray[j] = "3" + $p.eq(i).children().attr("src");
				}
				j = j + 1;
				i = i + 2;
			}
			objArray[j] = $(".float_input").val();//标题
			objArray[j + 1] = $(".header_imgs").attr("src");//主题图片
			var text= document.getElementById("music").innerHTML; 
			objArray[j+2] = text;//音乐

			$.ajax({
				type : "POST",
				url : "writeTravel",
				data : JSON.stringify(objArray),
				contentType : 'application/json; charset=utf-8',
				dataType : 'json',
				success : function(msg) {
					//成功了
					$(".travel_id").html(msg.id);
					travelSuccess();
				//location.href = "toMyHome";
				},
				error : function(msg) {
					location.href = "toMyHome";
				}
			});

		});
		
		//邮寄发表成功
		function travelSuccess(){
			//隐藏编辑
			//1.游记完成度
			$(".all_live").hide();
			//工具
			$(".content_tool").hide();
			
			//打开信息填写
			$(".hide_base_base").show();
			
		}
		

		var $mode4 = $(".img111");
		var $model = $(".content_tool");
		var $modelvideo = $(".add_video");
		var $model1 = $(".add_word_v2").detach();
		var $model2 = $(".div_div_div").detach();

		var $model5 = $(".zyupload").detach();

	});
</script>

</head>
<body>

<div class="a1000" style="display: none;"></div>
<div class="a1001" style="display: none;"></div>
<div  class="a1002" style="display: none;"></div>
<div class="a1003" style="display: none;"></div>

<div class="travel_id" style="display: none;"></div>

	<div class="header">
		<div class="header1">
			<iframe src="VisitHead" frameborder="0" scrolling="no"
				marginheight="0" marginwidth="0" style="margin: 0px auto;"></iframe>
		</div>
	</div>


		
	<div class="base_new base_new_hide_base" id="hideid">
    <div class="base_one">
        <h2>填写基本信息</h2>
    </div>

     <div class="base_two">
             <dl class="base_info_detail">
                 <dt></dt>
                 <dd class="go_date">
                     <strong class="dd_title">
                         <i class="send_date"></i>出发时间<span>*</span></strong>
                     <div class="dd_select">
                         <input value=""  name="mdStartTime" style="z-index: 551; position: relative;" id="dp1491376550436" type="text">

                         <a role="button" tabindex="0" class="time _j_dateicon"></a>
                     </div>             </dd>             <dd class="go_days">
                 <strong class="dd_title"><i class="send_num"></i>出行天数<span>*</span></strong>
                 <div class="dd_select">
                 <input value="" name="mdDayNumber" class="dayscount" type="text">
                 </div>
                 <span class="dd_unit">天</span>
             </dd>
                 <dd class="go_figure" style="position:relative;z-index:10;(fuck IE7/6)">
                 <strong class="dd_title">
                     <i class="send_peo"></i>人&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;物<span>*</span></strong>
                 <div class="dd_select">                     <input class="_j_personhiddeninput" name="mdTravelPeople0" type="hidden" >
                     <input class="_j_personinput" value="请选择出行人物"  type="text" name="mdTravelPeople">
                     <a role="button" tabindex="0" class="down _j_downarr"></a>
                     <ul class="down_con hidn_news" >
                         <li data-person="1" class="_j_personitem"><a role="button">一个人</a></li>
                         <li data-person="2" class="_j_personitem"><a role="button">小两口</a></li>
                         <li data-person="3" class="_j_personitem"><a role="button">带小孩</a></li>
                         <li data-person="4" class="_j_personitem"><a role="button">家族出游</a></li>
                         <li data-person="5" class="_j_personitem"><a role="button">和朋友</a></li>
                         <li data-person="9" class="_j_personitem"><a role="button">其它</a></li>
                     </ul>                 </div>             </dd>             <dd class="go_money">
                 <strong class="dd_title"><i class="send_cost"></i>人均费用</strong>
                 <div class="dd_select">
                     <input value="" name="mdCostMoney" type="text" class="expense">
                 </div>
                 <span class="dd_unit">元</span>
             </dd>         </dl>
             <div class="base_info_error">请将所有带*号的项目填写完成</div>
              <div class="base_info_buttons">
                 <a  role="button" tabindex="0" class="btn_qx  close_close" title="取消">取消</a>
                 <a role="button" tabindex="0" class="btn_big  true_true" title="确定">确定</a>
             </div>
         </div>
     </div>
  </div>

			
			

	<div class="all_live">

		<div class="all_live_one">
			<a>
				<div class="all_live_one1">游记完成度 ------------------- 20%</div>
			</a>
		</div>

		<div id="zyupload" class="zyupload close_div"></div>


		<div class="all_live_two">
			<span class="all_live_two_one">完成度详情&nbsp;&nbsp;</span> <span
				class="all_live_two_two"> 游记常见问题与解答</span>

		</div>
		<div class="all_live_three">
			<div class="all_live_three_one">保存草稿</div>
			<div class="all_live_three_two">预览</div>
		</div>
	</div>
	
	
	
	

	<div class="mian">

		<div class="img_float head_head_img">
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
				<input type="text" class="float_input" placeholder="填写游记标题"
					maxlength="48">
			</form>
		</div>
		<div class="main_header">
			<img src="syste_img/img/write_travels/page_bg.jpg"
				class="main_header header_imgs">
		</div>


		<div class="main_content">
			<div class="main_content_left">
			
			
			<!-- 填写基本信息 -->
	
			
			
				
		<!-- 填写基本信息 -->
		<div class="base_news hide_base_base"> 
		
            <div class="flt1 ">还差一步，让你的游记更容易被搜出</div>
            <div class="flt2 "><a role="button" tabindex="0"   style="color: orange;" class="now_write">马上填写&gt;&gt;</a></div>
		  </div>
		
		<!-- 展示基本信息 -->
				<div class="left_one hide_base_news">
						<ul>
							<li class="times">出发时间<span>/</span>2015-10-17</li>
							</li>
						</ul>
						<ul>
							<li class="day">出行天数<span>/</span>5 天
							</li>
							<li class="people">人物<span>/</span>小两口
							</li>
							<li class="cost">人均费用<span>/</span>6000RMB
						
						</ul>
				</div>
			
			
			
			
				<div class="content_1010">
					<div class="content_tool">
						<a class="click_cl">
							<div class="l_div_one"></div>
						</a>
						<div class="div_div_ttt hide_show">
							<a class="add_the_content">
								<div class="all_div">
									<div class="l_div_one1"></div>
									<span class="all_font"> 添加文字</span>
								</div>
							</a> <a class="add_the_phote">
								<div class="all_div">
									<div class="l_div_one2"></div>
									<span class="all_font"> 添加照片 </span>
								</div>
							</a> <a class="add_the_video">
								<div class="all_div">
									<div class="l_div_one3"></div>
									<span class="all_font"> 添加视频 </span>
								</div>
							</a> <a class="add_the_title11">
								<div class="all_div">
									<div class="l_div_one4"></div>
									<span class="all_font">添加段落标题 </span>
								</div>
							</a>
						</div>
					</div>
				</div>


				<div class="content_music">
					<div class="music_one">游记音乐</div>
					<div class="music_two">
						<div class="music_two_font" id="music">背景音乐请选择后缀为.mp3的音乐文件</div>
						<div class="choose_music">选择</div>
					</div>
				</div>
				<div class="content_post">
					<div class="post_one">保存草稿</div>
					<div class="post_three">发表游记</div>
					<div class="post_two">预览</div>

				</div>

			</div>
			<div class="main_content_rigth">
				<div class="rigth_one"></div>
				<div class="rigth_one_title">游记目录</div>
				<div class="rigth_main_title">
					<ul class="ul_rigth1">
						<li class="li_rigth1"><span> 0/1</span><span>
								&nbsp;默认段落</span></li>
					</ul>
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




	<!-- 视频 -->
	<div class='add_video hide_div'>
		<video src="" controls="controls" width="600px" heith="600px">
			your browser does not support the video tag
		</video>
	</div>


	<div class='add_word_v2 hide_div'>
		<textarea class='_j_edittxtarea' placeholder='在这儿添加游记文字......'></textarea>
		<div class='5555'>
			<a class='save cancel'>完成</a>
		</div>
	</div>

	<div class="img_div_img img111 hide_div">
		<img src="" class="img_div_img">
	</div>

	<div class="div_div_div hide_div">
		<input type="text" class="title paragraph_name" placeholder="填写段落"
			maxlength="15">
		<div class="base_info_button">
			<a class="btn_big">确定</a>
		</div>
	</div>
</body>
</html>