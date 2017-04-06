<!--我的信息-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>我的信息</title>
<link href="css/alterInfo/message.css" rel="stylesheet" type="text/css">
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

</body>
</html>
