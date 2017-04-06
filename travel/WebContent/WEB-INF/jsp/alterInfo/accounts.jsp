<!--帐号安全-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>账号安全</title>
<link href="css/alterInfo/accounts.css" rel="stylesheet" type="text/css" />
<script language="javascript"
	src="https://js.mafengwo.net/js/cv/js+jquery-1.8.1.min:js+global+json2:js+M+Module:js+M+M:js+M+Log:js+m.statistics^ZFw^1489387530.js"
	type="text/javascript"></script>
</head>
<body>
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
			<div class="hd">
				<strong>账号安全</strong> <span> 资料完善度
					<div class="progress">
						<div class="num">30%</div>
						<div class="on" style="width: 30%"></div>
					</div>
				</span>
			</div>

			<!--中部-->
			<div class="userpass">
				<!--密码-->
				<dl class="clearfix">
					<dt>密码：</dt>
					<dd>
						<a href="javascript:;" id="set-pw-btn">修改密码</a>
						<div id="set-pw">
							<div class="ways">
								<a href="/setting/security/password/?by=mobile" class="byphone"><i></i>
								<p>手机验证修改</p></a> <a href="javascript:;" class="bymail disable"><i></i>
								<p>邮箱验证修改</p></a>
							</div>

						</div>
					</dd>
				</dl>
				<!--绑定邮箱-->
				<dl class="clearfix">
					<dt>绑定邮箱：</dt>
					<dd>
						<a href="/setting/security/email/">设置邮箱</a>
					</dd>
				</dl>
				<!--绑定手机-->
				<dl class="clearfix">
					<dt>绑定手机：</dt>
					<dd>
						156****5662<span class="status"><i></i>已绑定 <a
							style="margin-left: 15px;"
							href="/setting/security/mobile/?type=change">更改号码</a></span>
					</dd>
				</dl>

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
		M
				.closure(function(require) {
					var Confirm = require('dialog/confirm');
					$('#set-pw-btn')
							.on(
									'click',
									function() {
										var target = $(this);
										if (target.data("unsafe") == 1) {
											Confirm
													.pop(
															"你的账号存在安全隐患，为了账户安全，请绑定手机后修改密码。<br>绑定手机？",
															function() {
																window.location.href = "/setting/security/mobile/?callback=%2Fsetting%2Fsecurity%2F";
															});
										} else {
											if ($('#set-pw').is(':visible')) {
												$('#set-pw').hide();
											} else {
												$('#set-pw').show();
											}
										}
									});
				});
	</script>


	<script language="javascript" type="text/javascript">
		if (typeof M !== "undefined" && typeof M.loadResource === "function") {
			M
					.loadResource("https://js.mafengwo.net/js/cv/js+Dropdown:js+pageletcommon+pageHeadUserInfoWWWNormal:js+jquery.tmpl:js+M+module+InputListener:js+M+module+SuggestionXHR:js+M+module+DropList:js+M+module+Suggestion:js+M+module+MesSearchEvent:js+SiteSearch:js+AHeader:js+M+module+dialog+Layer:js+M+module+dialog+DialogBase:js+M+module+dialog+Dialog:js+M+module+FrequencyVerifyControl:js+M+module+FrequencySystemVerify:js+ALogin:js+ACnzzGaLog:js+ARecruit:js+M+module+dialog+confirm^Z1ZT^1485230927.js");
		}
	</script>

</body>
</html>
