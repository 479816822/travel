<!--账户安全/设置邮箱页面-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>设置邮箱</title>
<link href="css/alterInfo/accounts.css" rel="stylesheet" type="text/css" />
</head>
<body>

    <div class="header" style=" width: 100%;
 height:60px;;background: red;">
 	<iframe src="VisitHead" frameborder="0" scrolling="no" marginheight="0"
			marginwidth="0" style="margin: 0px auto; 	width: 100%;
	height: 60px;
	margin: 0 auto;
	position: fixed;
	z-index: 999;
	border-bottom: 2px solid #eee;"></iframe>
	 </div>

	<div class="wrapper clearfix">
			<div class="aside">
			<a href="updateUserNews" class="on"  style="background-color: white;color: #666;"><i class="i1"></i>我的信息</a> <a
				href="avatar" style="background-color: white;color: #666;"><i class="i2 " ></i>我的头像</a> <a
				href="security" style="background-color: white;color: #666;"><i class="i4"></i>账号安全</a> <a
				href="wallet" style="background-color: #ffa800;color: white;"><i class="i10"></i>我的钱包</a>
		</div>

		<div class="content">
			<div class="hd">
				<strong>设置邮箱</strong> <span> 资料完善度
					<div class="progress">
						<div class="num">60%</div>
						<div class="on" style="width: 60%"></div>
					</div>
				</span>
			</div>

			<div class="setmail">
				<!--setMail-->
				<div class="navtag">
					<a class="step1 on" href=""><i></i>输入邮箱</a><a class="step2 "
						href=""><i></i>前往邮箱验证</a><a class="step3 " href=""><i></i>完成绑定</a>
				</div>
				<div class="set-mail">
					<dl class="clearfix">
						<dt>新的邮箱：</dt>
						<dd>
							<input type="text" id="email" value="">
						</dd>
					</dl>
					<div class="tips">我们将向该邮箱发送验证邮件，点击该邮件中的链接完成验证。</div>
					<div class="btns">
						<a class="btn-sub" id="verify" href="javascript:;">发送验证邮件</a> <a
							class="btn-exit" href="/setting/security/">取消</a>
					</div>
				</div>
				<!--setMail end-->
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


	<script>
		$(function() {
			M.closure(function(require) {
				var Alert = require('dialog/alert');
				$('#verify').on(
						'click',
						function() {
							var email = $.trim($('#email').val());
							if (!email) {
								Alert.pop('请填写邮箱');
							} else {
								var data = {
									'active_mail' : email,
									'__ctk__' : window.Env.CSTK
								};
								$.post('/home/mail/sendVerifyMail', data,
										function(res) {
											if (res.ret != 1) {
												Alert.pop(res.msg);
											} else {
												window.location.reload();
											}
										}, 'json');
							}
						});
				$('#resendEmail').on('click', function() {
					var email = '';
					var data = {
						'active_mail' : email,
						'__ctk__' : window.Env.CSTK
					};
					$.post('/home/mail/sendVerifyMail', data, function(res) {
						console.log(res);
						if (res.ret != 1) {
							Alert.pop(res.msg);
						} else {
							Alert.pop('已重发验证邮件');
						}
					}, 'json');
				});
				$('#changeBtn').on('click', function() {
					$('#verifyEmail').hide();
					$('#changeEmail').show();
				});
			});
		});
	</script>


	<script language="javascript" type="text/javascript">
		if (typeof M !== "undefined" && typeof M.loadResource === "function") {
			M
					.loadResource("https://js.mafengwo.net/js/cv/js+Dropdown:js+pageletcommon+pageHeadUserInfoWWWNormal:js+jquery.tmpl:js+M+module+InputListener:js+M+module+SuggestionXHR:js+M+module+DropList:js+M+module+Suggestion:js+M+module+MesSearchEvent:js+SiteSearch:js+AHeader:js+M+module+dialog+Layer:js+M+module+dialog+DialogBase:js+M+module+dialog+Dialog:js+M+module+FrequencyVerifyControl:js+M+module+FrequencySystemVerify:js+ALogin:js+ACnzzGaLog:js+ARecruit:js+M+module+dialog+alert^Z1db^1485230927.js");
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
