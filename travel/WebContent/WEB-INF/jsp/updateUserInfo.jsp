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

<link href="css/alterInfo/message.css" rel="stylesheet" type="text/css">

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
	<!--************************************content end ****************************************-->	
	
	<div class="wrapper clearfix">
		<!--aside 左边部分-->
		<div class="aside">
			<a href="/setting/" class="on"><i class="i1"></i>我的信息</a> <a
				href="/setting/avatar/"><i class="i2"></i>我的头像</a> <a
				href="/setting/security/"><i class="i4"></i>账号安全</a> <a
				href="/setting/wallet/"><i class="i10"></i>我的钱包</a>
		</div>

		<!--content 右边部分-->
		<div class="content">
			<!--头部-->
			<div class="hd">
				<strong>我的信息</strong> <span> 资料完善度 <!--进度条-->
					<div class="progress">
						<div class="num">30%</div>
						<div class="on" style="width: 30%"></div>
					</div>
				</span>
			</div>

			<!--中部-->
			<div class="userinfo">
				<form action="" method="post">
					<div
						style="color: #a94442; background-color: #f2dede; border-color: #ebccd1; display: none"></div>

					<!--名号-->
					<dl class="clearfix">
						<dt>名号：</dt>
						<dd>
							<input type="text" name="name" value="安梅花" maxlength="16"
								autocomplete="off" />
						</dd>
					</dl>
					<!--性别-->
					<dl class="clearfix">
						<dt>性别：</dt>
						<dd>
							<label><span class="cssradio"><input type="radio"
									name="gender" value="1" /><span></span></span>男</label> <label><span
								class="cssradio"><input type="radio" name="gender"
									value="0" /><span></span></span>女</label> <label><span
								class="cssradio"><input type="radio" name="gender"
									value="2" checked="true" /><span></span></span>保密</label>
						</dd>
					</dl>
					<!--居住城市-->
					<dl class="clearfix">
						<dt>居住城市：</dt>
						<dd>
							<div class="input-group">
								<input type="text" name="city" value="" autocomplete="off" />
								<ul class="input-suggest"></ul>
							</div>
						</dd>
					</dl>
					<!--出生日期-->
					<dl class="clearfix">
						<dt>出生日期：</dt>
						<dd>
							<input type="text" readonly="true" name="birthday" value=""
								data-verification-name="出生日期" class="" autocomplete="off" />
						</dd>
					</dl>
					<!--个人简介-->
					<dl class="clearfix">
						<dt>个人简介：</dt>
						<dd>
							<textarea name="intro" data-verification-name="个人简介"
								placeholder="例：摄影师/旅居澳洲/潜水爱好者"
								class="verification[maxSize[100]]" maxlength="100"></textarea>
						</dd>
					</dl>
					<!--收货地址-->
					<dl class="clearfix">
						<dt>收货地址：</dt>
						<dd class="myaddress">
							<a href="/setting/address/">新增收货地址</a>
						</dd>
					</dl>
					<!--提示信息-->
					<dl class="clearfix">
						<dt></dt>
						<dd class="tips">
							<p class="title">
								<b>**</b>提示信息<b>**</b>
							</p>
							<p>如果您在蚂蜂窝活动中获得奖品，我们将按照该收货地址发送奖品， 所以请填写 真实有效 的收货信息。</p>
						</dd>
					</dl>
					<!--保存-->
					<div class="btn-sub">
						<button type="submit">保存</button>
					</div>
				</form>
			</div>
		</div>

	</div>




	<script type="text/javascript">
		$(function() {
			$('.aside a').not('.on').on(
					'click',
					function(e) {
						var left, top;
						$('.aside .ripple').removeClass('animate');
						0 === $(this).children('.ripple').size()
								&& $(this).prepend(
										'<span class="ripple"></span>');
						var ripple = $(this).children('.ripple');
						left = e.pageX - $(this).offset().left - ripple.width()
								/ 2, top = e.pageY - $(this).offset().top
								- ripple.height() / 2, ripple.css({
							top : top,
							left : left
						}).addClass('animate');
					});
			$('.content .alert .close').on('click', function() {
				$(this).closest('.alert').fadeOut(500, function() {
					$(this).remove();
				});
			});
		});
	</script>


	<script type="text/javascript">
		$(function() {
			var timer = 0;
			var eventName = ($.browser.msie && parseInt($.browser.version, 10) < 9) ? 'keyup'
					: 'input';
			var success = function(field) {
				field.closest('dl').removeClass('error');
				$(".alert-danger").html("");
				$(".alert-danger").hide();
				console.log('show succ');
				console.log(field);
			};
			var failed = function(field, message) {
				field.closest('dl').addClass('error');
				$(".alert-danger").html(message);
				$(".alert-danger").show();
				console.log('show failed');
				console.log(field);
			};
			$('#_j_form')
					.delegate(
							'[name="city"]',
							eventName,
							function() {
								var self = $(this);
								var word = $.trim(self.val());
								var suggest = self.closest('.input-group')
										.find('.input-suggest');
								clearTimeout(timer);
								if (!word) {
									suggest.empty().hide();
								} else {
									timer = setTimeout(
											function() {
												$
														.getJSON(
																'/home/setting.php/citySuggest?word='
																		+ encodeURIComponent(word),
																function(data) {
																	console
																			.log('here');
																	console
																			.log(data);
																	suggest
																			.empty();
																	if (data.length > 0) {
																		for ( var i in data) {
																			$(
																					'<li><a href="#"><i class="place"></i><span>'
																							+ data[i]
																							+ '</span></a></li>')
																					.appendTo(
																							suggest);
																		}
																		suggest
																				.show();
																	}
																});
											}, 500);
								}
							})
					.delegate(
							'.input-group .input-suggest a',
							'click',
							function(e) {
								e.preventDefault();
								var self = $(this);
								var group = self.closest('.input-group');
								group.find(':text').val(
										self.find('span').text());
								group.find('.input-suggest').empty().hide();
								console.log(group.find(':text'));
								$('#_j_form').verification('verifyField',
										group.find(':text'));
							})
					.verification(
							{
								customFuncs : {
									checkNickname : function(field) {
										var value = $.trim(field.val());
										var len = 0;
										for (var i = 0; i < value.length; i++) {
											if (value.charAt(i).match(
													/[^\x4e00-\x9fa5]/ig)) {
												len += 2;
											} else {
												len++;
											}
										}
										if (len > 16) {
											failed(field,
													'名号不能长于8个汉字长度（或16个英文字符）');
											$.verification.verifyFailed(field);
										} else {
											success(field);
											$.verification.verifySuccess(field);
										}
									},
									checkCity : function(field) {
										$.get('/home/setting.php/checkCity', {
											city : $.trim(field.val())
										}, function(data) {
											if (data) {
												failed(field, '居住城市填写不正确');
												$.verification
														.verifyFailed(field);
											} else {
												success(field);
												$.verification
														.verifySuccess(field);
											}
										});
									}
								},
								success : function(field) {
									success(field);
								},
								failed : function(field, message) {
									failed(field, message);
								}
							});

			$('[name="birthday"]', '#_j_form').datepicker({
				endDate : new Date()
			}).on('changeDate', function() {
				$('#_j_form').verification('verifyField', $(this));
				$(this).datepicker('hide');
			});
		});
	</script>

	<script language="javascript" type="text/javascript">
		if (typeof M !== "undefined" && typeof M.loadResource === "function") {
			M
					.loadResource("https://js.mafengwo.net/js/cv/js+Dropdown:js+pageletcommon+pageHeadUserInfoWWWNormal:js+jquery.tmpl:js+M+module+InputListener:js+M+module+SuggestionXHR:js+M+module+DropList:js+M+module+Suggestion:js+M+module+MesSearchEvent:js+SiteSearch:js+AHeader:js+M+module+dialog+Layer:js+M+module+dialog+DialogBase:js+M+module+dialog+Dialog:js+M+module+FrequencyVerifyControl:js+M+module+FrequencySystemVerify:js+ALogin:js+ACnzzGaLog:js+ARecruit^Z1VQ^1485230927.js");
		}
	</script>
	
	
	
	
</form>
	
	
	<div class="footer">
		<iframe src="IndexFooter" frameborder="0" scrolling="no" marginheight="0"
			marginwidth="0" style="margin: 0px auto;"></iframe>
	</div>

</body>
</html>