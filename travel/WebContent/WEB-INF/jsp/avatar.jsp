<!--我的头像-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>我的头像</title>
<link href="css/alterInfo/avatar.css" rel="stylesheet" type="text/css">
</head>
<body>

    <div class="header" style=" width: 100%;
 height:60px;">
 	<iframe src="VisitHead" frameborder="0" scrolling="no" marginheight="0"
			marginwidth="0" style="margin: 0px auto; 	width: 100%;
	height: 60px;
	margin: 0 auto;
	position: fixed;
	z-index: 999;
	border-bottom: 2px solid #eee;"></iframe>
	 </div>

	<div class="wrapper clearfix">

		<!--aside 左边部分-->
			<div class="aside">
			<a href="updateUserNews" class="on"  style="background-color: white;color: #666;"><i class="i1"></i>我的信息</a> <a
				href="avatar" style="background-color: #ffa800;color: white;"><i class="i2 " ></i>我的头像</a> <a
				href="security" style="background-color: white;color: #666;"><i class="i4"></i>账号安全</a> <a
				href="wallet" style="background-color: white;color: #666;"><i class="i10"></i>我的钱包</a>
		</div>

		<!--content 右边部分-->
		<div class="content">
			<!--头部-->
			<div class="hd">
				<strong>我的头像</strong> <span> 资料完善度
					<div class="progress">
						<div class="num">30%</div>
						<div class="on" style="width: 30%"></div>
					</div>
				</span>
			</div>

			<!--中部-->
			<div class="userlogo">
				<div class="avatar" id="_j_avatar_box">
					<img src="images/avatar.gif" width="120" height="120" border="0">
					<div class="progress" id="percentContent" style="display: none;">
						<div class="bar">
							<div class="num" id="percentNum">0%</div>
							<div class="on" style="width: 0%" id="uploadPercent"></div>
						</div>
					</div>
				</div>
				<div class="btn-sub">
					<div class="btn" id="_j_upload">选择图片</div>
					支持jpg、png、jpeg、bmp，图片大小5M以内
				</div>
				<!--编辑图片-->
				<div class="editor" id="_j_crop_box">
					<div class="clearfix">
						<div class="plan">
							<img src="images/large.gif">
						</div>
						<div class="preview">
							<p>预览</p>
							<dl class="large">
								<dt>
									<img src="images/large.gif">
								</dt>
								<dd>120*120</dd>
							</dl>
							<dl class="normal">
								<dt>
									<img src="images/normal.gif">
								</dt>
								<dd>48*48</dd>
							</dl>
							<dl class="small">
								<dd>16*16</dd>
							</dl>
						</div>
					</div>
					<!--提交 按钮-->
					<div class="btns">
						<a href="#" class="btn1">保存</a> <a href="#" class="btn2">取消</a>
					</div>
				</div>
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
			var boundX = 0, boundY = 0;
			var avatar;
			var avatarBox = $('#_j_avatar_box');
			var cropApi, cropX = 0, cropY = 0, cropWidth = 0, cropHeight = 0;
			var cropBox = $('#_j_crop_box');
			var updatePreview = function(crop) {
				if (parseInt(crop.w) > 0) {
					var largeX = 120 / crop.w;
					var largeY = 120 / crop.h;
					var normalX = 48 / crop.w;
					var normalY = 48 / crop.h;
					var smallX = 16 / crop.w;
					var smallY = 16 / crop.h;

					cropX = crop.x;
					cropY = crop.y;
					cropWidth = crop.w;
					cropHeight = crop.h;

					cropBox.find('.preview .large img').css({
						width : Math.round(largeX * boundX),
						height : Math.round(largeY * boundY),
						marginLeft : -Math.round(largeX * crop.x),
						marginTop : -Math.round(largeY * crop.y)
					});
					cropBox.find('.preview .normal img').css({
						width : Math.round(normalX * boundX),
						height : Math.round(normalY * boundY),
						marginLeft : -Math.round(normalX * crop.x),
						marginTop : -Math.round(normalY * crop.y)
					});
					cropBox.find('.preview .small img').css({
						width : Math.round(smallX * boundX),
						height : Math.round(smallY * boundY),
						marginLeft : -Math.round(smallX * crop.x),
						marginTop : -Math.round(smallY * crop.y)
					});
				}
			};
			var avatarUploader = new plupload.Uploader({
				runtimes : 'html5,flash',
				browse_button : '_j_upload',
				flash_swf_url : '/swf/Moxie.swf',
				multi_selection : false,
				filters : [ {
					title : 'Image files',
					extensions : 'jpg,jpeg,png,gif'
				} ],
				url : '/home/setting.php/uploadAvatar',
				resize : {
					width : 2048,
					quality : 100
				},
				multipart : 'form-data'
			});
			avatarUploader.init();
			avatarUploader.bind('FilesAdded', function() {
				if (typeof cropApi !== 'undefined') {
					cropApi.destroy();
					cropBox.find('.btns a').addClass('disable');
				}
				cropBox.find('.plan img,.preview dl img').removeAttr('style')
						.attr('src',
								'http://images.mafengwo.net/images/pp600.gif');
				cropX = cropY = cropWidth = cropHeight = 0;
				avatarUploader.start();
			});
			avatarUploader.bind('UploadProgress', function(up, file) {
				var data = {
					'width' : file.percent + '%'
				};
				$('#uploadPercent').css(data);
				$('#percentNum').text(file.percent + '%');
			});
			avatarUploader.bind('BeforeUpload', function() {
				avatarUploader.disableBrowse(true);
				$('#_j_upload').text('正在上传..').addClass('disable');
				$('#percentContent').show();
				$('#percentNum').text('0%');
				var data = {
					'width' : '0%'
				};
				$('#uploadPercent').css(data);
			});
			avatarUploader.bind('FileUploaded', function(up, file, response) {
				$('#percentContent').hide();
				var data = $.parseJSON(response.response);
				if (!$.isEmptyObject(data)) {
					avatar = data.id;
					$('<img />').on('load', function() {
						cropBox.slideDown(700);
						cropBox.find('.preview dl img').attr('src', data.url);
						cropBox.find('.plan img').attr('src', data.url).Jcrop({
							boxWidth : 330,
							onChange : updatePreview,
							onSelect : updatePreview,
							aspectRatio : 1
						}, function() {
							cropApi = this;
							var bounds = cropApi.getBounds();
							boundX = bounds[0];
							boundY = bounds[1];

							var X1 = (boundX / 2) - 115;
							var Y1 = (boundY / 2) - 115;
							if (X1 < 0)
								X1 = 0;
							if (Y1 < 0)
								Y1 = 0;
							var X2 = (boundX / 2) + 115;
							var Y2 = (boundY / 2) + 115;
							if (X2 > boundX)
								X2 = boundX;
							if (Y2 > boundY)
								Y2 = boundY;

							if (X2 - X1 > Y2 - Y1) {
								X1 = (boundX / 2) - (Y2 - Y1) / 2;
								X2 = (boundX / 2) + (Y2 - Y1) / 2;
							} else if (X2 - X1 < Y2 - Y1) {
								Y1 = (boundY / 2) - (X2 - X1) / 2;
								Y2 = (boundY / 2) + (X2 - X1) / 2;
							}
							cropApi.animateTo([ X1, Y1, X2, Y2 ]);

							cropBox.find('.btns a').removeClass('disable');
						});
					}).attr('src', data.url);
				} else {
					M.closure(function(require) {
						var Alert = require('dialog/alert');
						Alert.pop('图片上传失败，请稍候再试');
					}, true);
				}
				avatarUploader.disableBrowse(false);
				$('#_j_upload').text('选择图片').removeClass('disable');
			});

			cropBox.delegate(
					'.btns .btn1',
					'click',
					function(e) {
						e.preventDefault();
						var self = $(this);
						if (self.hasClass('disable') || cropWidth == 0
								|| cropHeight == 0) {
							return false;
						}
						cropApi.disable();
						cropBox.find('.btns a').addClass('disable');
						$.post('/home/setting.php/cropAvatar', {
							x : cropX,
							y : cropY,
							width : cropWidth,
							height : cropHeight,
							avatarwidth : boundX,
							avatarheight : boundY,
							avatar : avatar
						}, function(data) {
							if (data) {
								avatarBox.find('img').attr('src', data);
								cropApi.destroy();
								cropBox.slideUp(700);
							} else {
								cropApi.enable();
								cropBox.find('.btns a').removeClass('disable');
								M.closure(function(require) {
									var Alert = require('dialog/alert');
									Alert.pop('头像裁剪失败，请稍候再试');
								}, true);
							}
						});
					}).delegate('.btns .btn2', 'click', function(e) {
				e.preventDefault();
				cropApi.destroy();
				cropBox.slideUp(700);
			});
		});
	</script>

	<script language="javascript" type="text/javascript">
		if (typeof M !== "undefined" && typeof M.loadResource === "function") {
			M
					.loadResource("https://js.mafengwo.net/js/cv/js+Dropdown:js+pageletcommon+pageHeadUserInfoWWWNormal:js+jquery.tmpl:js+M+module+InputListener:js+M+module+SuggestionXHR:js+M+module+DropList:js+M+module+Suggestion:js+M+module+MesSearchEvent:js+SiteSearch:js+AHeader:js+M+module+dialog+Layer:js+M+module+dialog+DialogBase:js+M+module+dialog+Dialog:js+M+module+FrequencyVerifyControl:js+M+module+FrequencySystemVerify:js+ALogin:js+ACnzzGaLog:js+ARecruit^Z1VQ^1485230927.js");
		}
	</script>
	
			<div class="footer" style="	clear: both;
	height: 480px;">
		<iframe src="IndexFooter" frameborder="0" scrolling="no" marginheight="0"
			marginwidth="0" style="margin: 0px auto;	width: 100%;
	height: 480px;"></iframe>
	</div>

</body>
</html>
