<!--账户安全/ 修改绑定手机-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>修改绑定手机</title>
<link href="css/alterInfo/accounts.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div class="wrapper clearfix">
		<div class="aside">
			<a href="/setting/" class="on"><i class="i1"></i>我的信息</a> <a
				href="/setting/avatar/"><i class="i2"></i>我的头像</a> <a
				href="/setting/security/"><i class="i4"></i>账号安全</a> <a
				href="/setting/wallet/"><i class="i10"></i>我的钱包</a>
		</div>

		<div class="content">
			<div class="hd">
				<strong>修改绑定手机</strong> <span> 资料完善度
					<div class="progress">
						<div class="num">60%</div>
						<div class="on" style="width: 60%"></div>
					</div>
				</span>
			</div>

			<div id="setmail" class="setmail set-mobile-v2">
				<!--setMobile-->


				<div class="navtag">
					<a class="step1 on" href="javascript:void(0)"><i></i>身份验证</a><a
						class="step2" href="javascript:void(0)"><i></i>修改绑定手机</a><a
						class="step3" href="javascript:void(0)"><i></i>完成修改</a>
				</div>
				<div class="set-mobile">
					<div class="tips">我们将向该手机发送验证码，请在下方输入您看到的验证码</div>
					<dl class="clearfix">
						<dt>验证方式：</dt>
						<dd>
							<div class="sel-way">
								<input type="text" id="sel_option" data-type="1"
									value="使用156****5662验证" readonly="readonly" placeholder="">
								<i></i> <em></em>
								<div class="option _j_sel_option" style="display: none;">
									<a href="javascript:void(0);" data-type="1">使用156****5662验证</a>
								</div>
							</div>
							<a class="btn-code getIdVerifyCode" href="javascript:void(0)">获取验证码</a>
						</dd>
					</dl>
					<dl class="clearfix">
						<dt>验证码：</dt>
						<dd>
							<input id="verifyCode" type="text" value="" placeholder="请输入验证码">
						</dd>
					</dl>
					<div class="btns">
						<a id="id_verify" class="btn-sub" href="javascript:void(0)">提交</a>
					</div>
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


	<script>
		$(function() {
			M
					.closure(function(require) {
						var Alert = require('dialog/alert');
						$('#getCode').on(
								'click',
								function() {
									var mobile = $.trim($('#newMobile').val());
									if ($(this).hasClass('disabled')) {
										return false;
									}
									if (!mobile) {
										Alert.pop('请填写手机号码');
									} else {
										var data = {
											'mobile' : mobile,
										};
										$.get('/home/setting.php/code', data,
												function(res) {
													if (res.code != 201) {
														Alert.pop(res.msg);
													} else {
														Alert.pop(res.msg, '',
																3);
														recode($('#getCode'));
													}
												}, 'json');
									}
								});
						$('#bind')
								.on(
										'click',
										function() {
											var mobile = $.trim($('#newMobile')
													.val());
											var code = $.trim($('#verifyCode')
													.val());
											if (!mobile) {
												Alert.pop('请填写手机号码');
											} else if (!code) {
												Alert.pop('请填写验证码');
											} else {
												var data = {
													'mobile' : mobile,
													'v_code' : code,
													'refer' : ''
												};
												$
														.post(
																'https://passport.mafengwo.cn/home/setting.php/verifyCode',
																data,
																function(res) {
																	if (res.code != 200) {
																		Alert
																				.pop(res.msg);
																	} else {
																		Alert
																				.pop(
																						res.msg,
																						function() {
																							window.location.href = '/setting/security/';

																						},
																						3);
																	}
																}, 'json');
											}
										});
						$('.getIdVerifyCode')
								.on(
										'click',
										function() {
											var that = $(this);
											if ($(this).hasClass('disabled')) {
												return false;
											}
											var data = {
												'type' : $("#sel_option").data(
														"type"),
											};
											$
													.get(
															'/home/setting.php/idVerifyCode',
															data,
															function(res) {
																if (res.code != 201
																		&& res.code != 202) {
																	Alert
																			.pop(res.msg);
																} else {
																	Alert
																			.pop(
																					res.msg,
																					'',
																					3);
																	if (data.type == 1) {
																		recode($('.getIdVerifyCode'));
																	} else {
																		that
																				.html("前往邮箱");
																		that
																				.attr(
																						'href',
																						res.emailsite);
																		that
																				.attr(
																						'target',
																						'_blank');
																		that
																				.unbind('click');
																		that
																				.removeClass("getIdVerifyCode");
																	}
																}
															}, 'json');
											return;
										});
						$("#setmail")
								.delegate(
										'#getChangeCode',
										'click',
										function() {
											var mobile = $.trim($('#newMobile')
													.val());
											if (!mobile) {
												Alert.pop('请填写新手机号码');
											} else {
												var data = {
													'mobile' : mobile,
												};
												$
														.get(
																'/home/setting.php/changeCode',
																data,
																function(res) {
																	if (res.code != 201) {
																		Alert
																				.pop(res.msg);
																	} else {
																		Alert
																				.pop(
																						res.msg,
																						'',
																						3);
																		recode($('#getChangeCode'));
																	}
																}, 'json');
											}
										});
						$(".sel-way input").on('click', function() {
							$("._j_sel_option").toggle();
						});
						$("._j_sel_option a").on(
								'click',
								function() {
									$(".sel-way input").val($(this).html());
									$(".sel-way input").data("type",
											$(this).data('type'));
									$("._j_sel_option").hide();
								});

						$('#id_verify').on(
								'click',
								function() {
									var code = $.trim($('#verifyCode').val());
									if (!code) {
										Alert.pop('请填写验证码');
									} else {
										var data = {
											'v_code' : code,
										};
										$.post('/home/setting.php/verifyId',
												data, function(res) {
													if (res.code != 200) {
														Alert.pop(res.msg);
													} else {
														$('#setmail').html(
																res.html);
													}
												}, 'json');
									}
								});

						$("#setmail")
								.delegate(
										'#change_mobile',
										'click',
										function() {
											var code = $.trim($('#verifyCode')
													.val());
											var mobile = $.trim($('#newMobile')
													.val());
											if (!mobile) {
												Alert.pop('请填写新手机号码');
											} else if (!code) {
												Alert.pop('请填写验证码');
											} else {
												var data = {
													'v_code' : code,
													'mobile' : mobile,
												};
												$
														.post(
																'/home/setting.php/changeMobile',
																data,
																function(res) {
																	if (res.code != 200) {
																		Alert
																				.pop(res.msg);
																	} else {
																		$(
																				'#setmail')
																				.html(
																						res.html);
																	}
																}, 'json');
											}
										});

						$("#setmail").on('click', function(event) {
							var e = event || window.event;
							//console.log(e);
							var element = e.srcElement || e.target;
							//console.log(element);
							while (element) {
								if (element.id == 'sel_option')
									return;
								element = element.parentNode;
							}
							$("._j_sel_option").hide();
						});

						function recode(e) {
							e.addClass('disabled').html('60秒后重新获取');
							var time = 60;
							b = setInterval(function() {
								time--;
								if (time > 0) {
									e.addClass('btn-code-dis');
									e.html(time + "秒后重新获取")
								} else {
									e.removeClass('btn-code-dis');
									e.removeClass("disabled").html("重新获取验证码");
									clearInterval(b)
								}
							}, 1000)
						}
					});
		});
	</script>


	<script language="javascript" type="text/javascript">
		if (typeof M !== "undefined" && typeof M.loadResource === "function") {
			M
					.loadResource("https://js.mafengwo.net/js/cv/js+Dropdown:js+pageletcommon+pageHeadUserInfoWWWNormal:js+jquery.tmpl:js+M+module+InputListener:js+M+module+SuggestionXHR:js+M+module+DropList:js+M+module+Suggestion:js+M+module+MesSearchEvent:js+SiteSearch:js+AHeader:js+M+module+dialog+Layer:js+M+module+dialog+DialogBase:js+M+module+dialog+Dialog:js+M+module+FrequencyVerifyControl:js+M+module+FrequencySystemVerify:js+ALogin:js+ACnzzGaLog:js+ARecruit:js+M+module+dialog+alert^Z1db^1485230927.js");
		}
	</script>

</body>
</html>
