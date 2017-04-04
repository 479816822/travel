<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>爱旅游U首页</title>
<link href="css/index.css" rel="stylesheet">
<link href="css/shezhi.css" rel="stylesheet" type="text/css" />
	<!-- 引用图片上传的插件的js和css -->
<script type="text/javascript" src="js/jquery-3.1.0.min.js"></script>

<link rel="stylesheet"
		  href="pluing/publicity/zyupload/skins/zyupload-1.0.0.min.css " type="text/css">
<script type="text/javascript"
			src="pluing/publicity/zyupload/zyupload-1.0.0.min.js"></script>
<script language="javascript" src="js/jquery-validation-1.15.1.js"></script>

<script type="text/javascript">
	
$(function() {

	function fun1() {
		$("#zyupload").zyUpload(
				{
					width : "300px", // 宽度
					height : "300px", // 宽度
					itemWidth : "200px", // 文件项的宽度
					itemHeight : "200px", // 文件项的高度
					url : "upload", // 上传文件的路径
					fileType : [ "jpeg","JPG","jpg", "png","JPEG" ,"txt", "js", "exe" ],// 上传文件的类型
					fileSize : 51200000000000, // 上传文件的大小
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
						fun($(this), response);
						console.info(file.name);
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
	function fun(p, str) {
		$("#zyupload").remove();
		var str1 = str.length;
		var n = str1 - 2;
		var str2 = str.substring(2, n);
		$(".img_img101").attr("src", str2);
//		$(".10101").val(str2);
	}

	//1.用户的信息信息进行更换基本信息显示
	$(".user_new").click(function() {
		$(this).addClass("on");
		$(".user_head").removeClass("on");
		$(".user_news_101").show();
		$(".user_headers").hide();

	});

	//2.头像信息显示
	$(".user_head").click(function() {
		$(this).addClass("on");
		$(".user_new").removeClass("on");
		$(".user_news_101").hide();
		$(".user_headers").show();

	});


	//提交更改的数据
	$(".choose_img").click(function(){
		var $newnode = $model.clone(true);
		$(this).parent().append($newnode)
		fun1();
	})

	var $model = $("#zyupload").detach();

});
	
</script>
</head>
<body>


	<div class="mfw-header" style="background: red">
	<div class="header">
		<iframe src="VisitHead" frameborder="0" scrolling="no" marginheight="0"
			marginwidth="0" style="margin: 0px auto;"></iframe>
	</div>
	</div>
	

<form action="update" method="POST">	
<div class="user_heads">
	<!--************************************content begin ****************************************-->
	<div class="wrapper clearfix">
		<!--content 右-->
		<div class="aside">
			<a class="on user_new" ><i class="i1"></i>我的信息</a> 
			<a class="user_head"><i class="i2 " ></i>我的头像</a> 
			<a href=""><i class="i3"></i>绑定设置</a> <a href=""><i class="i4"></i>账号安全</a> <a href=""><i
				class="i8"></i>我的窝设置</a> <a href=""><i class="i9"></i>黑名单管理</a> <a
				href=""><i class="i10"></i>我的钱包</a>
		</div>

		<!-- ******************************用户的基本信息***************************** -->
		<!--content 左-->
		<div class="content user_news_101">
			<div class="hd">
				<strong>我的信息</strong> <span> 资料完善度
					<div class="progress">
						<div class="num">30%</div>
						<div class="on" style="width: 30%"></div>
					</div>
				</span>
			</div>

			<div class="userinfo">
					<div class="alert alert-danger"
						style="color: #a94442; background-color: #f2dede; border-color: #ebccd1; display: none"></div>
					<dl class="clearfix">
						<dt>名号：</dt>
						<dd>
							<input type="text" name="userNick" value="${user.mdUserName}" maxlength="16"
								autocomplete="off" />
						</dd>
					</dl>

					<!-- 用来存用户的头像的地址 -->
					<input type="text" name="userHead" value="${user.userHeadImg}" class="hide 10101"/>
					<dl class="clearfix">
						<dt>性别：</dt>
						<dd>
							<label><span class="cssradio"><input type="radio"
									name="userGender" value="男" /><span></span></span>男</label> <label><span
								class="cssradio"><input type="radio" name="userGender"
									value="女" /><span></span></span>女</label> <label><span
								class="cssradio"><input type="radio" name="gender"
									value="2" checked="true" /><span></span></span>保密</label>
						</dd>
					</dl>

					<dl class="clearfix">
						<dt>居住城市：</dt>
						<dd>
							<div class="input-group">
								<input type="text" name="city" value="" autocomplete="off"
									data-verification-name="居住城市" class="" />
								<ul class="input-suggest"></ul>
							</div>
						</dd>
					</dl>

					<dl class="clearfix">
						<dt>出生日期：</dt>
						<dd>
							<input type="text" readonly="true" name="birthday" value=""
								data-verification-name="出生日期" class="" autocomplete="off" />
						</dd>
					</dl>

					<dl class="clearfix">
						<dt>个人简介：</dt>
						<dd>
							<textarea name="userResume" data-verification-name="个人简介"
								placeholder="例：摄影师/旅居澳洲/潜水爱好者" maxlength="100"></textarea>
						</dd>
					</dl>

					<dl class="clearfix">
						<dt>收货地址：</dt>
						<dd class="myaddress">
							<a href="">新增收货地址</a>
						</dd>
					</dl>

					<dl class="clearfix">
						<dt></dt>
						<dd class="tips">
							<p class="title">
								<b>**</b>提示信息<b>**</b>
							</p>
							<p>如果您在蚂蜂窝活动中获得奖品，我们将按照该收货地址发送奖品， 所以请填写 真实有效 的收货信息。</p>
						</dd>
					</dl>

					<div class="btn-sub">
						<button type="submit">保存</button>
					</div>
			</div>
		</div>

		<!-- --------------***************************** 我的头像*************************** -->

		<div class="content user_headers hide">
		<!-- 这是上传图片的div不上传时是隐藏着 -->
		<div id="zyupload" class="zyupload the_img"></div>
		
			<div class="hd">
				<strong>我的头像</strong> <span> 资料完善度
					<div class="progress">
						<div class="num">30%</div>
						<div class="on" style="width: 30%"></div>
					</div>
				</span>
			</div>

			<div class="userlogo">
				<div class="avatar" id="_j_avatar_box">
					<img src="${user.userHeadImg}" width="120" class="img_img101"
						height="120" border="0">
					<div class="progress" id="percentContent" style="display: none;">
						<div class="bar">
							<div class="num" id="percentNum">0%</div>
							<div class="on" style="width: 0%" id="uploadPercent"></div>
						</div>
					</div>
				</div>
				<div class="btn-sub choose_img">
					<div class="btn" id="_j_upload">选择图片</div>
					支持jpg、png、jpeg、bmp，图片大小5M以内
				</div>
				<div class="editor" id="_j_crop_box">
					<div class="clearfix">
						<div class="plan">
							<img src="http://file.mafengwo.net/images/pp600.gif">
						</div>
						<div class="preview">
							<p>预览</p>
							<dl class="large">
								<dt>
									<img src="http://file.mafengwo.net/images/pp600.gif">
								</dt>
								<dd>120*120</dd>
							</dl>
							<dl class="normal">
								<dt>
									<img src="http://images.mafengwo.net/images/pp600.gif">
								</dt>
								<dd>48*48</dd>
							</dl>
							<dl class="small">
								<dt>
									<img src="http://images.mafengwo.net/images/pp600.gif">
								</dt>
								<dd>16*16</dd>
							</dl>
						</div>
					</div>
					<div class="btns">
						<a href="#" class="btn1">保存</a> <a href="#" class="btn2">取消</a>
					</div>
				</div>
			</div>

		</div>
	</div>
</div>	

	<!--************************************content end ****************************************-->	
</form>
	
	
	<div class="footer">
		<iframe src="IndexFooter" frameborder="0" scrolling="no" marginheight="0"
			marginwidth="0" style="margin: 0px auto;"></iframe>
	</div>

</body>
</html>