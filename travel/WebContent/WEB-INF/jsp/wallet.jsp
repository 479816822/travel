<!--我的钱包-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>我的钱包</title>
<link href="css/alterInfo/wallet.css" rel="stylesheet" type="text/css" />
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
		<!--aside 左边部分-->
			<div class="aside">
			<a href="updateUserNews" class="on"  style="background-color: white;color: #666;"><i class="i1"></i>我的信息</a> <a
				href="avatar" style="background-color: white;color: #666;"><i class="i2 " ></i>我的头像</a> <a
				href="security" style="background-color: white;color: #666;"><i class="i4"></i>账号安全</a> <a
				href="wallet" style="background-color: #ffa800;color: white;"><i class="i10"></i>我的钱包</a>
		</div>

		<!--content 右边部分-->
		<div class="content">
			<!--头部-->
			<div class="hd">
				<a class="btn-payPassword"
					href="/home/setting.php/setpaypwd?callback=%2Fsetting%2Fwallet%2F"><i></i>设置支付密码</a>
				<strong>我的钱包</strong> <span> 资料完善度
					<div class="progress">
						<div class="num">30%</div>
						<div class="on" style="width: 30%"></div>
					</div>
				</span>
			</div>

			<!--中部-->
			<div class="userwallet">
				<div class="bd">

					<!--提现-->
					<div class="balance clearfix">
						<div class="total">
							<div class="money">
								现金余额<span>￥<em>0.00</em></span> <a class="bind bind-on" href="#"><i
									class="icon-phone"></i>已绑定手机</a>
							</div>
							<div class="honey">
								蜂蜜余额 <span><i class="icon-honey"></i><em>0</em></span>
							</div>
						</div>
						<div class="withdraw jq-show-tips">
							<span class="btn btn-disabled">提现</span><br>
							<span>每次提现最小额度为 ¥100.00</span>
							<div class="pop-tips jq-withdraw-tips hide">
								<div class="pop-info">
									<p>完成以下步骤后才可提现哦</p>
									step1 <a href="#">绑定手机</a><i class="i-success"></i><br>
									step2 <a
										href="/home/setting.php/setpaypwd?callback=%2Fsetting%2Fwallet%2F">设置支付密码</a><i
										class="i-error"></i>
								</div>
							</div>
						</div>
					</div>

					<!--明细-->
					<div class="income">
						<div class="income_t clearfix">
							<ul class="clearfix">
								<li class="jq-nav-switch on" d_type="honey">蜂蜜明细 <span
									class="bar"></span>
								</li>
								<li class="jq-nav-switch " d_type="wallet">现金明细 <span
									class="bar"></span>
								</li>
							</ul>
							<a href="http://www.mafengwo.cn/i/2947856.html" class="link">蜂蜜常见问题</a>
						</div>

						<div class="income-empty">
							<i class="icon-cry"></i>
							<p>您在窝里还没有任何蜂蜜来源哦~</p>
							<br /> <a href="http://www.mafengwo.cn/i/2947856.html"
								class="link">如何赚得蜂蜜？</a>
						</div>
					</div>

				</div>
			</div>

			<!--提现页面-->
			<script id="_j_withdraw_dlg" type="text/x-jquery-tmpl">
    <div class="jq-withdraw-dlg hide">
        <div class="">
            <div class="form-withdraw">
                <div class="item item-money">
                    <div class="label">提现金额</div>
                    <input class="inp-txt jq-w-amt" type="text" placeholder="请输入提现金额">
                    <p>可提现金额：￥0.00，提现最小额度为￥100.00</p>
                </div>
               <div class="item">
            <div class="label">支付宝账号</div>
            <input class="inp-txt jq-w-account" type="text" placeholder="请输入绑定的支付宝账号">
            </div>
            <div class="item">
                <div class="label">收款人姓名</div>
                <input class="inp-txt jq-w-name" type="text" placeholder="请输入收款人姓名">
            </div>
                <div class="item">
                    <div class="label">支付密码</div>
                    <input class="inp-txt jq-w-pwd" type="password" placeholder="请输入6位数字密码">
                </div>
                <div class="alert"><i></i>暂且支付提现至绑定的支付宝账户<br>提现申请提交后3-5个工作日内到账<br>提现申请提交后暂时无法撤销</div>
                <div class="action">
                    <a href="#" class="jq-withdraw-cancel" >取消</a>
                    <a class="btn jq-withdraw-sub enable" href="#">确认提现</a>
                </div>
            </div>
        </div>
    </div>
    </script>

			<!--设置支付密码页面-->
			<script id="_j_setpaypwd_dlg" type="text/x-jquery-tmpl">
    <div class="jq-setpaypwd-dlg hide">
        <div class="">
            <div class="form">
               <h3 class="title">设置支付密码</h3>
                <div class="tips">
                    <p>为了您的资金安全，设定密码前需要手机验证。<br>
                    已绑定手机156****5662<a href="/setting/security/mobile/?type=change&callback=%2Fsetting%2Fwallet%2F">更换号码</a></p>
                    <input class="inp-txt jq-verifycode" type="text">
                    <a class="btn jq-get-verifycode" mobile="156****5662" href="#">获取验证码</a>                </div>
                <h3 class="title">设置支付密码</h3>
                <div class="item">
                    <div class="label">请输入六位数字密码</div>
                    <div class="label jq-pwd-error label-error hide"></div>
                    <input class="inp-txt inp-have jq-pwd" type="password"><i class="jq-pwd-icon"></i>
                </div>
                <div class="item">
                    <div class="label">请确认输入的密码</div>
                    <div class="label jq-againpwd-error label-error hide"></div>
                    <input class="inp-txt jq-again-pwd" type="password"><i class="jq-againpwd-icon"></i>
                </div>
                <div class="alert"><i></i>仅用于现金及蜂蜜支付、提现的数字密码<br>以后凭该密码安全支付，请勿与登录密码一致</div>
                <div class="action">
                    <a href="#" class="jq-setpwd-cancel">取消</a>
                    <a class="btn jq-setpwd-sub" href="#">完成设置</a>
                </div>
            </div>
        </div>
    </div>
    </script>

			<!--更改支付密码页面-->
			<script id="_j_changepaypwd_dlg" type="text/x-jquery-tmpl">
    <div class="jq-changepaypwd-dlg hide">
        <div class="">
            <div class="form">
                <h3 class="title">修改支付密码</h3>
                <div class="item">
                    <div class="label">请输入旧支付密码以验证身份</div>
                    <div class="label jq-oldpwd-error label-error hide">输入的原密码错误</div>
                    <input class="inp-txt jq-old-pwd" type="password"><i class="jq-oldpwd-icon"></i>
                </div>
                <div class="item">
                    <div class="label">请输入六位数字密码</div>
                    <div class="label jq-pwd-error label-error hide"></div>
                    <input class="inp-txt jq-pwd" type="password"><i class="jq-pwd-icon"></i>
                </div>
                <div class="item">
                    <div class="label">请确认输入的密码</div>
                    <div class="label jq-againpwd-error label-error hide"></div>
                    <input class="inp-txt jq-again-pwd" type="password"><i class="jq-againpwd-icon"></i>
                </div>
                <div class="alert"><i></i>仅用于现金及蜂蜜支付、提现的数字密码<br>以后凭该密码安全支付，请勿与登录密码一致</div>
                <div class="action">
                    <a href="#" class="jq-change-cancel" >取消</a>
                    <a class="btn jq-change-sub" href="#">完成设置</a>
                </div>
            </div>
        </div>
    </div>
    </script>

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
					var wallet_balance = "0.00";
					$(function() {
						Alert = require('dialog/alert');
						$('.jq-show-tips').live('mouseenter', function() {
							$('.jq-withdraw-tips').show();
						});
						$('.jq-show-tips').live('mouseleave', function() {
							$('.jq-withdraw-tips').hide();
						});
						$('.jq-setpaypwd')
								.click(
										function() {
											require('jq-tmpl');
											var Dialog = require('dialog/Dialog');
											var payPwdSettingDlg = new Dialog({
												'PANEL_CLASS' : 'pop-wallet',
												'content' : $(
														'#_j_setpaypwd_dlg')
														.tmpl().html(),
												'stackable' : false
											});
											panel = payPwdSettingDlg.getPanel();
											panel.find('.jq-pwd').first().val(
													'');
											panel.find('.jq-again-pwd').first()
													.val('');
											payPwdSettingDlg.show();
											panel
													.on(
															'click',
															'.jq-setpwd-sub',
															function(ev) {
																var _verify_code = panel
																		.find(
																				'.jq-verifycode')
																		.first()
																		.val();
																var _pwd = panel
																		.find(
																				'.jq-pwd')
																		.first()
																		.val();
																var _again_pwd = panel
																		.find(
																				'.jq-again-pwd')
																		.first()
																		.val();
																var _reg = new RegExp(
																		"^[0-9]*$");
																if (_pwd == '') {
																	Alert
																			.pop('支付密码不能为空');
																	return;
																} else if (_pwd.length != 6
																		|| !_reg
																				.test(_pwd)) {
																	Alert
																			.pop('支付密码必须是6位数字');
																	return;
																} else if (_pwd != _again_pwd) {
																	Alert
																			.pop('两次输入的密码不一致');
																	return;
																} else if (_verify_code == '') {
																	Alert
																			.pop('验证码为空');
																	return;
																}

																$
																		.post(
																				"/home/setting.php/setpaypwd",
																				{
																					'pwd' : _pwd,
																					'again_pwd' : _again_pwd,
																					'verify_code' : _verify_code
																				},
																				function(
																						rs) {
																					if (rs.code == 1) {
																						payPwdSettingDlg
																								.close();
																						Alert
																								.tip(
																										'设置成功',
																										function() {
																											window.location
																													.reload();
																										});
																					} else {
																						Alert
																								.pop(rs.data);
																					}
																				},
																				"json");
															})
													.on(
															'blur',
															'.jq-pwd',
															function(ev) {
																var _pwd = panel
																		.find(
																				'.jq-pwd')
																		.first()
																		.val();
																var _reg = new RegExp(
																		"^[0-9]*$");
																if (_pwd == '') {
																	panel
																			.find(
																					'.jq-pwd')
																			.first()
																			.addClass(
																					'inp-error');
																	panel
																			.find(
																					'.jq-pwd-error')
																			.first()
																			.text(
																					'支付密码不能为空')
																			.show();
																	panel
																			.find(
																					'.jq-pwd-icon')
																			.first()
																			.addClass(
																					'icon-error');
																} else if (_pwd.length != 6
																		|| !_reg
																				.test(_pwd)) {
																	panel
																			.find(
																					'.jq-pwd')
																			.first()
																			.addClass(
																					'inp-error');
																	panel
																			.find(
																					'.jq-pwd-error')
																			.first()
																			.text(
																					'支付密码必须是6位数字')
																			.show();
																	panel
																			.find(
																					'.jq-pwd-icon')
																			.first()
																			.addClass(
																					'icon-error');
																} else {
																	panel
																			.find(
																					'.jq-pwd')
																			.first()
																			.removeClass(
																					'inp-error');
																	panel
																			.find(
																					'.jq-pwd-error')
																			.first()
																			.hide();
																	panel
																			.find(
																					'.jq-pwd-icon')
																			.first()
																			.removeClass(
																					'icon-error')
																			.addClass(
																					'icon-success');
																}
															})
													.on(
															'blur',
															'.jq-again-pwd',
															function(ev) {
																var _pwd = panel
																		.find(
																				'.jq-pwd')
																		.first()
																		.val();
																var _again_pwd = panel
																		.find(
																				'.jq-again-pwd')
																		.first()
																		.val();
																var _reg = new RegExp(
																		"^[0-9]*$");
																if (_again_pwd == '') {
																	panel
																			.find(
																					'.jq-again-pwd')
																			.first()
																			.addClass(
																					'inp-error');
																	panel
																			.find(
																					'.jq-againpwd-error')
																			.first()
																			.text(
																					'确认密码不能为空')
																			.show();
																	panel
																			.find(
																					'.jq-againpwd-icon')
																			.first()
																			.addClass(
																					'icon-error');
																} else if (_pwd != _again_pwd) {
																	panel
																			.find(
																					'.jq-again-pwd')
																			.first()
																			.addClass(
																					'inp-error');
																	panel
																			.find(
																					'.jq-againpwd-error')
																			.first()
																			.text(
																					'两次输入的支付密码不一致')
																			.show();
																	panel
																			.find(
																					'.jq-againpwd-icon')
																			.first()
																			.addClass(
																					'icon-error');
																} else {
																	panel
																			.find(
																					'.jq-again-pwd')
																			.first()
																			.removeClass(
																					'inp-error');
																	panel
																			.find(
																					'.jq-againpwd-error')
																			.first()
																			.hide();
																	panel
																			.find(
																					'.jq-againpwd-icon')
																			.first()
																			.removeClass(
																					'icon-error')
																			.addClass(
																					'icon-success');
																}
															})
													.on(
															'click',
															'.jq-get-verifycode:not(disable)',
															function(ev) {
																if ($(this)
																		.hasClass(
																				'disable')) {
																	return;
																}
																$
																		.post(
																				"/home/setting.php/sendverifycode",
																				{},
																				function(
																						rs) {
																					if (panel
																							.find(
																									'.jq-get-verifycode')
																							.first()
																							.attr(
																									'mobile').length == 4) {
																						Alert
																								.pop('请先绑定手机');
																						return false;
																					}
																					if (rs.code == 1) {
																						var obj = panel
																								.find(
																										'.jq-get-verifycode')
																								.first();
																						obj
																								.addClass(
																										'disable')
																								.html(
																										'60秒后重新获取');
																						var time = 60;
																						b = setInterval(
																								function() {
																									time--;
																									if (time > 0) {
																										obj
																												.html(time
																														+ "秒后重新获取")
																									} else {
																										obj
																												.removeClass(
																														"disable")
																												.html(
																														"重新获取验证码");
																										clearInterval(b)
																									}
																								},
																								1000);
																					} else {
																						Alert
																								.pop(rs.data);
																					}
																				},
																				"json");
															})
													.on(
															'click',
															'.jq-setpwd-cancel',
															function(ev) {
																payPwdSettingDlg
																		.close();
															});
										});

						$('.jq-changepaypwd')
								.click(
										function() {
											require('jq-tmpl');
											var Dialog = require('dialog/Dialog');
											var payPwdChangeDlg = new Dialog({
												'PANEL_CLASS' : 'pop-wallet',
												'content' : $(
														'#_j_changepaypwd_dlg')
														.tmpl().html(),
												'stackable' : false
											});
											panel = payPwdChangeDlg.getPanel();
											panel.find('.jq-pwd').first().val(
													'');
											panel.find('.jq-again-pwd').first()
													.val('');
											payPwdChangeDlg.show();
											panel
													.on(
															'click',
															'.jq-change-sub',
															function(ev) {
																var _old_pwd = panel
																		.find(
																				'.jq-old-pwd')
																		.first()
																		.val();
																var _pwd = panel
																		.find(
																				'.jq-pwd')
																		.first()
																		.val();
																var _again_pwd = panel
																		.find(
																				'.jq-again-pwd')
																		.first()
																		.val();
																var _reg = new RegExp(
																		"^[0-9]*$");
																if (_pwd == '') {
																	Alert
																			.pop('支付密码不能为空');
																	return;
																} else if (_pwd.length != 6
																		|| !_reg
																				.test(_pwd)) {
																	Alert
																			.pop('支付密码必须是6位数字');
																	return;
																} else if (_pwd != _again_pwd) {
																	Alert
																			.pop('两次输入的密码不一致');
																	return;
																}

																$
																		.post(
																				"/home/setting.php/changepaypwd",
																				{
																					'pwd' : _pwd,
																					'again_pwd' : _again_pwd,
																					'old_pwd' : _old_pwd
																				},
																				function(
																						rs) {
																					if (rs.code == 1) {
																						payPwdChangeDlg
																								.close();
																						Alert
																								.tip(rs.data);
																					} else {
																						Alert
																								.pop(rs.data);
																					}
																				},
																				"json");
															})
													.on(
															'blur',
															'.jq-old-pwd',
															function(ev) {
																var _old_pwd = panel
																		.find(
																				'.jq-old-pwd')
																		.first()
																		.val();
																$
																		.post(
																				"/home/setting.php/verifyPwd",
																				{
																					'pwd' : _old_pwd
																				},
																				function(
																						rs) {
																					if (rs.code == 1) {
																						panel
																								.find(
																										'.jq-oldpwd-error')
																								.first()
																								.hide();
																						panel
																								.find(
																										'.jq-old-pwd')
																								.first()
																								.removeClass(
																										'inp-error');
																						panel
																								.find(
																										'.jq-oldpwd-icon')
																								.first()
																								.addClass(
																										'icon-success')
																								.removeClass(
																										'icon-error');
																					} else {
																						panel
																								.find(
																										'.jq-oldpwd-error')
																								.first()
																								.html(
																										rs.data)
																								.show();
																						panel
																								.find(
																										'.jq-old-pwd')
																								.first()
																								.addClass(
																										'inp-error');
																						panel
																								.find(
																										'.jq-oldpwd-icon')
																								.first()
																								.addClass(
																										'icon-error');
																					}
																				},
																				"json");
															})
													.on(
															'blur',
															'.jq-pwd',
															function(ev) {
																var _pwd = panel
																		.find(
																				'.jq-pwd')
																		.first()
																		.val();
																var _reg = new RegExp(
																		"^[0-9]*$");
																if (_pwd == '') {
																	panel
																			.find(
																					'.jq-pwd')
																			.first()
																			.addClass(
																					'inp-error');
																	panel
																			.find(
																					'.jq-pwd-error')
																			.first()
																			.text(
																					'支付密码不能为空')
																			.show();
																	panel
																			.find(
																					'.jq-pwd-icon')
																			.first()
																			.addClass(
																					'icon-error');
																} else if (_pwd.length != 6
																		|| !_reg
																				.test(_pwd)) {
																	panel
																			.find(
																					'.jq-pwd')
																			.first()
																			.addClass(
																					'inp-error');
																	panel
																			.find(
																					'.jq-pwd-error')
																			.first()
																			.text(
																					'支付密码必须是6位数字')
																			.show();
																	panel
																			.find(
																					'.jq-pwd-icon')
																			.first()
																			.addClass(
																					'icon-error');
																} else {
																	panel
																			.find(
																					'.jq-pwd')
																			.first()
																			.removeClass(
																					'inp-error');
																	panel
																			.find(
																					'.jq-pwd-error')
																			.first()
																			.hide();
																	panel
																			.find(
																					'.jq-pwd-icon')
																			.first()
																			.removeClass(
																					'icon-error')
																			.addClass(
																					'icon-success');
																}
															})
													.on(
															'blur',
															'.jq-again-pwd',
															function(ev) {
																var _pwd = panel
																		.find(
																				'.jq-pwd')
																		.first()
																		.val();
																var _again_pwd = panel
																		.find(
																				'.jq-again-pwd')
																		.first()
																		.val();
																var _reg = new RegExp(
																		"^[0-9]*$");
																if (_again_pwd == '') {
																	panel
																			.find(
																					'.jq-again-pwd')
																			.first()
																			.addClass(
																					'inp-error');
																	panel
																			.find(
																					'.jq-againpwd-error')
																			.first()
																			.text(
																					'确认密码不能为空')
																			.show();
																	panel
																			.find(
																					'.jq-againpwd-icon')
																			.first()
																			.addClass(
																					'icon-error');
																} else if (_pwd != _again_pwd) {
																	panel
																			.find(
																					'.jq-again-pwd')
																			.first()
																			.addClass(
																					'inp-error');
																	panel
																			.find(
																					'.jq-againpwd-error')
																			.first()
																			.text(
																					'两次输入的支付密码不一致')
																			.show();
																	panel
																			.find(
																					'.jq-againpwd-icon')
																			.first()
																			.addClass(
																					'icon-error');
																} else {
																	panel
																			.find(
																					'.jq-again-pwd')
																			.first()
																			.removeClass(
																					'inp-error');
																	panel
																			.find(
																					'.jq-againpwd-error')
																			.first()
																			.hide();
																	panel
																			.find(
																					'.jq-againpwd-icon')
																			.first()
																			.removeClass(
																					'icon-error')
																			.addClass(
																					'icon-success');
																}
															})
													.on(
															'click',
															'.jq-change-cancel',
															function(ev) {
																payPwdChangeDlg
																		.close();
															});
										});

						$('.jq-withdraw')
								.click(
										function() {
											require('jq-tmpl');
											var Dialog = require('dialog/Dialog');
											var withdrawDlog = new Dialog({
												'PANEL_CLASS' : 'pop-wallet',
												'content' : $(
														'#_j_withdraw_dlg')
														.tmpl().html(),
												'stackable' : false
											});
											panel = withdrawDlog.getPanel();
											panel.find('.jq-pwd').first().val(
													'');
											panel.find('.jq-again-pwd').first()
													.val('');
											withdrawDlog.show();
											panel
													.on(
															'click',
															'.jq-withdraw-sub',
															function(ev) {
																if ($(this)
																		.hasClass(
																				'enable')) {
																	var _pwd = panel
																			.find(
																					'.jq-w-pwd')
																			.first()
																			.val();
																	var _amount = panel
																			.find(
																					'.jq-w-amt')
																			.first()
																			.val();
																	var _name = panel
																			.find(
																					'.jq-w-name')
																			.first()
																			.val();
																	var _account = panel
																			.find(
																					'.jq-w-account')
																			.first()
																			.val();
																	var _reg = new RegExp(
																			"^[0-9]*$");
																	if (_amount == '') {
																		Alert
																				.pop('提现金额不能为空');
																		return;
																	}

																	if (_account == '') {
																		Alert
																				.pop('支付宝账户不能为空');
																		return;
																	}

																	if (_name == '') {
																		Alert
																				.pop('收款人姓名不能为空');
																		return;
																	}

																	if (_pwd == '') {
																		Alert
																				.pop('支付密码不能为空');
																		return;
																	} else if (_pwd.length != 6
																			|| !_reg
																					.test(_pwd)) {
																		Alert
																				.pop('支付密码必须是6位数字');
																		return;
																	}
																	$(this)
																			.removeClass(
																					'enable');
																	$
																			.post(
																					"/home/setting.php/withdraw",
																					{
																						'pwd' : _pwd,
																						'amount' : _amount,
																						'name' : _name,
																						'account' : _account
																					},
																					function(
																							rs) {
																						panel
																								.find(
																										'.jq-withdraw-sub')
																								.first()
																								.addClass(
																										'enable');
																						if (rs.code == 1) {
																							withdrawDlog
																									.close();
																							Alert
																									.tip(
																											rs.data,
																											function() {
																												window.location
																														.reload();
																											});
																						} else {
																							Alert
																									.pop(rs.data);
																						}
																					},
																					"json");
																}
															})
													.on(
															'keyup',
															'.jq-w-amt',
															function(ev) {
																$(this)
																		.val(
																				$(
																						this)
																						.val()
																						.replace(
																								/[^0-9\.]+/,
																								''));
															})
													.on(
															'click',
															'.jq-withdraw-cancel',
															function(ev) {
																withdrawDlog
																		.close();
															});
										});

						$('.jq-nav-switch')
								.click(
										function() {
											var _d_type = $(this)
													.attr('d_type');
											window.location.href = '/setting/wallet/?d_type='
													+ _d_type;
										});
					});
				});
	</script>
	
			<div class="footer" style="	clear: both;
	height: 480px;">
		<iframe src="IndexFooter" frameborder="0" scrolling="no" marginheight="0"
			marginwidth="0" style="margin: 0px auto;	width: 100%;
	height: 480px;"></iframe>
	</div>
</body>
</html>
