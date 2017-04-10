<!--我的信息/新增收货地址-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>收货地址</title>
<link href="css/alterInfo/message.css" rel="stylesheet" type="text/css">
<!--选择所在地区js-->
<script language="javascript"
	src="https://js.mafengwo.net/js/cv/js+jquery-1.8.1.min:js+global+json2:js+M+Module:js+M+M:js+M+Log:js+m.statistics^ZFw^1489387530.js"
	type="text/javascript"></script>

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
			<a href="updateUserNews" class="on"><i class="i1"></i>我的信息</a> <a
				href="avatar"><i class="i2"></i>我的头像</a> <a
				href="security"><i class="i4"></i>账号安全</a> <a
				href="wallet"><i class="i10"></i>我的钱包</a>
		</div>
		<!--content 右边部分-->
		<div class="content">

			<!--头部-->
			<div class="hd">
				<strong>收货地址</strong> <span> 资料完善度
					<div class="progress">
						<div class="num">60%</div>
						<div class="on" style="width: 60%"></div>
					</div>
				</span>
			</div>

			<!--中部-->
			<div class="userinfo">
				<!--setMobile-->
				<div class="set-mobile">
					<form id="addForm">
						<!--UserInfo-->
						<!--姓名-->
						<dl class="clearfix">
							<dt>姓名：</dt>
							<dd>
								<input name="user_name" class="checkEmpty" id="usernameInput"
									data-error="请填写姓名" type="text" value="">
							</dd>
						</dl>
						<!--所在地区-->
						<dl class="clearfix">
							<dt>所在地区：</dt>
							<dd class="item-list" id="locationSelect">
								<input type="hidden" id="addressId" name="address_id" value="0">
								<input type="hidden" id="provinceId" class="checkEmpty"
									data-error="请选择省份" name="province" value=""> <input
									type="text" class="selectBtn" id="provinceInput"
									data-type="province" readonly value="请选择" style="width: 95px;">
								<input type="hidden" id="cityId" class="checkEmpty"
									data-error="请选择城市" name="city" value=""> <input
									type="text" class="selectBtn" id="cityInput" data-type="city"
									readonly value="请选择" style="width: 145px; margin-left: 10px;">
								<input type="hidden" id="countyId" name="county" value="">
								<input type="text" class="selectBtn" id="countyInput"
									data-type="county" readonly value="请选择"
									style="width: 145px; margin-left: 10px; display: none;">
								<i class="citys selectBtn" data-type="province"
									id="provinceSelect"></i> <i class="dists selectBtn"
									data-type="city" id="citySelect"></i> <i
									class="countys selectBtn" data-type="county" id="countySelect"
									style="display: none;"></i>
								<div class="citys-li" id="provinceList">
									<a href="javascript:;" class="selectLi" data-type="province"
										data-pid="16522">安徽省</a> <a href="javascript:;"
										class="selectLi" data-type="province" data-pid="16228">澳门特别行政区</a>
									<a href="javascript:;" class="selectLi" data-type="province"
										data-pid="16646">北京市</a> <a href="javascript:;"
										class="selectLi" data-type="province" data-pid="15150">重庆市</a>
									<a href="javascript:;" class="selectLi" data-type="province"
										data-pid="16663">福建省</a> <a href="javascript:;"
										class="selectLi" data-type="province" data-pid="14333">甘肃省</a>
									<a href="javascript:;" class="selectLi" data-type="province"
										data-pid="15591">广东省</a> <a href="javascript:;"
										class="selectLi" data-type="province" data-pid="15025">广西壮族自治区</a>
									<a href="javascript:;" class="selectLi" data-type="province"
										data-pid="14898">贵州省</a> <a href="javascript:;"
										class="selectLi" data-type="province" data-pid="15426">海南省</a>
									<a href="javascript:;" class="selectLi" data-type="province"
										data-pid="16043">河北省</a> <a href="javascript:;"
										class="selectLi" data-type="province" data-pid="17133">黑龙江省</a>
									<a href="javascript:;" class="selectLi" data-type="province"
										data-pid="15868">河南省</a> <a href="javascript:;"
										class="selectLi" data-type="province" data-pid="15309">湖北省</a>
									<a href="javascript:;" class="selectLi" data-type="province"
										data-pid="15454">湖南省</a> <a href="javascript:;"
										class="selectLi" data-type="province" data-pid="16758">江苏省</a>
									<a href="javascript:;" class="selectLi" data-type="province"
										data-pid="16233">江西省</a> <a href="javascript:;"
										class="selectLi" data-type="province" data-pid="17265">吉林省</a>
									<a href="javascript:;" class="selectLi" data-type="province"
										data-pid="16998">辽宁省</a> <a href="javascript:;"
										class="selectLi" data-type="province" data-pid="14435">内蒙古自治区</a>
									<a href="javascript:;" class="selectLi" data-type="province"
										data-pid="14997">宁夏回族自治区</a> <a href="javascript:;"
										class="selectLi" data-type="province" data-pid="14280">青海省</a>
									<a href="javascript:;" class="selectLi" data-type="province"
										data-pid="16364">山东省</a> <a href="javascript:;"
										class="selectLi" data-type="province" data-pid="17114">上海市</a>
									<a href="javascript:;" class="selectLi" data-type="province"
										data-pid="15738">山西省</a> <a href="javascript:;"
										class="selectLi" data-type="province" data-pid="15191">陕西省</a>
									<a href="javascript:;" class="selectLi" data-type="province"
										data-pid="14549">四川省</a> <a href="javascript:;"
										class="selectLi" data-type="province" data-pid="21250">台湾省</a>
									<a href="javascript:;" class="selectLi" data-type="province"
										data-pid="16879">天津市</a> <a href="javascript:;"
										class="selectLi" data-type="province" data-pid="16345">香港特别行政区</a>
									<a href="javascript:;" class="selectLi" data-type="province"
										data-pid="14199">西藏自治区</a> <a href="javascript:;"
										class="selectLi" data-type="province" data-pid="14085">新疆维吾尔自治区</a>
									<a href="javascript:;" class="selectLi" data-type="province"
										data-pid="14752">云南省</a> <a href="javascript:;"
										class="selectLi" data-type="province" data-pid="16896">浙江省</a>
								</div>
								<div class="dists-li" id="cityList"></div>
								<div class="countys-li" id="countyList"></div>
							</dd>
						</dl>
						<!--详细地址-->
						<dl class="clearfix">
							<dt>详细地址：</dt>
							<dd>
								<textarea name="address" id="addressInput" class="checkEmpty"
									data-error="请填写详细地址"></textarea>
							</dd>
						</dl>
						<!--手机号码-->
						<dl class="clearfix">
							<dt>手机号码：</dt>
							<dd>
								<input type="text" id="mobileInput" name="mobile" value=""
									class="checkEmpty" data-error="请填写手机号码">
							</dd>
						</dl>
						<!--邮政编码-->
						<dl class="clearfix">
							<dt>邮政编码：</dt>
							<dd>
								<input type="text" id="zipcodeInput" name="zipcode" value=""
									class="checkEmpty" data-error="请填写邮政编码">
							</dd>
						</dl>
						<!--设置默认地址-->
						<dl class="clearfix">
							<dd class="set-first">
								<input type="hidden" id="is_default" name="is_default" value="0"><i
									class="radio" name="is_default" id="setDefault"></i>设置为默认收货地址
							</dd>
						</dl>

					</form>
					<!--取消/保存-->
					<dl class="clearfix">
						<dd class="btn-sub">
							<a href="/setting/" class="btn2">取消</a><a href="javascript:;"
								class="btn1" id="saveBtn">保存</a>
						</dd>
					</dl>
					<ul class="address">
						<li class="title">已保存0条地址，还能保存10条</li>
					</ul>
					<!--UserInfoEnd-->
				</div>
				<!--setMobile end-->
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
		M
				.closure(function(require) {
					var Alert = require('dialog/alert');
					var scrollTo = require('/js/jquery.scrollTo.js');
					$(function() {
						$('.selectBtn').on('click', function() {
							var type = $(this).attr('data-type');
							if ($('#' + type + 'List').is(':visible')) {
								$('#' + type + 'Select').removeClass('on');
								$('#' + type + 'List').hide();
							} else {
								$('#' + type + 'Select').addClass('on');
								$('#' + type + 'List').show();
							}
						});
						$('#locationSelect')
								.on(
										'click',
										'.selectLi',
										function() {
											var type = $(this)
													.attr('data-type');
											var name = $(this).text();
											var pid = $(this).attr('data-pid');
											if (type == 'province') {
												var postData = {
													'pid' : pid,
													'type' : 1
												};
												$
														.get(
																'/home/setting.php/cityList',
																postData,
																function(res) {
																	if (res.ret) {
																		$(
																				'#cityList')
																				.html(
																						res.html);
																	}
																}, 'json');
												$('#provinceInput').val(name);
												$('#provinceId').val(pid);
												$('#cityInput').val('请选择');
												$('#cityId').val('');
												$('#countyInput').val('请选择');
												$('#countyId').val('');
												$('#countyId').removeClass(
														'checkEmpty');
												$('#countyInput').hide();
												$('#countySelect').hide();
											} else if (type == 'city') {
												var postData = {
													'pid' : pid,
													'type' : 2
												};
												$
														.get(
																'/home/setting.php/cityList',
																postData,
																function(res) {
																	if (res.ret
																			&& res.html) {
																		$(
																				'#countyList')
																				.html(
																						res.html);
																		//$('#countyId').addClass('checkEmpty');
																		$(
																				'#countyInput')
																				.show();
																		$(
																				'#countySelect')
																				.show();
																	} else {
																		$(
																				'#countyId')
																				.removeClass(
																						'checkEmpty');
																		$(
																				'#countyInput')
																				.hide();
																		$(
																				'#countySelect')
																				.hide();
																	}
																}, 'json');
												$('#cityInput').val(name);
												$('#cityId').val(pid);
												$('#countyInput').val('请选择');
												$('#countyId').val('');
											} else {
												$('#countyInput').val(name);
												$('#countyId').val(pid);
											}
											$('#' + type + 'Select')
													.removeClass('on');
											$('#' + type + 'List').hide();
										});
						$('#setDefault').on('click', function() {
							if ($(this).hasClass('on')) {
								$(this).removeClass('on');
								$('#is_default').val('0');
							} else {
								$(this).addClass('on');
								$('#is_default').val('1');
							}
						});
						$('.delThis')
								.on(
										'click',
										function() {
											var id = $(this).attr('data-id');
											var data = {
												'id' : id
											};
											if (confirm('确认删除？')) {
												$
														.post(
																'/home/setting.php/AddressDel',
																data,
																function(res) {
																	if (!res.error) {
																		Alert
																				.pop(
																						'删除成功',
																						function() {
																							window.location
																									.reload();
																						},
																						3);
																	} else {
																		Alert
																				.pop('删除失败');
																	}
																}, 'json');
											}
										});
						$('#saveBtn')
								.on(
										'click',
										function() {
											var error = '';
											$('.checkEmpty')
													.each(
															function() {
																if (!$.trim($(
																		this)
																		.val())) {
																	error = $(
																			this)
																			.attr(
																					'data-error');
																	return false;
																}
															});
											if (error) {
												Alert.pop(error);
												return false;
											} else {
												var data = $('#addForm')
														.serialize();
												$
														.post(
																'/home/setting.php/AddressSave',
																data,
																function(res) {
																	if (res.success) {
																		Alert
																				.pop(
																						'保存成功',
																						function() {
																							window.location
																									.reload();
																						},
																						3);
																	} else {
																		Alert
																				.pop('保存失败');
																	}
																}, 'json');
											}
										});
						$('.setThisDefault')
								.on(
										'click',
										function() {
											var id = $(this).attr('data-id');
											var data = {
												'id' : id
											};
											$
													.post(
															'/home/setting.php/AddressDefault',
															data,
															function(res) {
																if (!res.error) {
																	Alert
																			.pop(
																					'设置成功',
																					function() {
																						window.location
																								.reload();
																					},
																					3);
																} else {
																	Alert
																			.pop('设置失败');
																}
															}, 'json');
										});
						$('.modifyThis')
								.on(
										'click',
										function() {
											var id = $(this).attr('data-id');
											var data = {
												'id' : id
											};
											$
													.post(
															'/home/setting.php/AddressGet',
															data,
															function(res) {
																if (!res.error) {
																	$(
																			'#usernameInput')
																			.val(
																					res.receipt.content.user_name);
																	$(
																			'#addressInput')
																			.val(
																					res.receipt.content.address);
																	$(
																			'#mobileInput')
																			.val(
																					res.receipt.content.mobile);
																	$(
																			'#zipcodeInput')
																			.val(
																					res.receipt.content.zipcode);
																	$(
																			'#addressId')
																			.val(
																					res.receipt.id);
																	if (res.receipt.is_default) {
																		$(
																				'#is_default')
																				.val(
																						1);
																		$(
																				'#setDefault')
																				.addClass(
																						'on');
																	} else {
																		$(
																				'#is_default')
																				.val(
																						0);
																		$(
																				'#setDefault')
																				.removeClass(
																						'on');
																	}
																	$(
																			'#provinceId')
																			.val(
																					res.receipt.content.province);
																	$(
																			'#provinceInput')
																			.val(
																					res.receipt.province.cname);
																	$(
																			'#provinceList')
																			.html(
																					res.receipt.provinceHtml);
																	$('#cityId')
																			.val(
																					res.receipt.content.city);
																	$(
																			'#cityInput')
																			.val(
																					res.receipt.city.cname);
																	$(
																			'#cityList')
																			.html(
																					res.receipt.cityHtml);
																	if (res.receipt.content.county != '0') {
																		$(
																				'#countyId')
																				.val(
																						res.receipt.content.county);
																		$(
																				'#countyInput')
																				.val(
																						res.receipt.county.cname);
																		$(
																				'#countyList')
																				.html(
																						res.receipt.countyHtml);
																		//$('#countyId').addClass('checkEmpty');
																		$(
																				'#countyInput')
																				.show();
																		$(
																				'#countySelect')
																				.show();
																	} else {
																		$(
																				'#countyId')
																				.val(
																						'');
																		$(
																				'#countyId')
																				.removeClass(
																						'checkEmpty');
																		$(
																				'#countyInput')
																				.val(
																						'请选择');
																		$(
																				'#countyInput')
																				.hide();
																		$(
																				'#countySelect')
																				.hide();
																		$(
																				'#countyList')
																				.hide();
																	}
																	$('body')
																			.scrollTo(
																					'.content',
																					600);
																} else {
																	Alert
																			.pop('地址不存在');
																}
															}, 'json');
										});
					});
				});
	</script>


	<script language="javascript" type="text/javascript">
		if (typeof M !== "undefined" && typeof M.loadResource === "function") {
			M
					.loadResource("https://js.mafengwo.net/js/cv/js+Dropdown:js+pageletcommon+pageHeadUserInfoWWWNormal:js+jquery.tmpl:js+M+module+InputListener:js+M+module+SuggestionXHR:js+M+module+DropList:js+M+module+Suggestion:js+M+module+MesSearchEvent:js+SiteSearch:js+AHeader:js+M+module+dialog+Layer:js+M+module+dialog+DialogBase:js+M+module+dialog+Dialog:js+M+module+FrequencyVerifyControl:js+M+module+FrequencySystemVerify:js+ALogin:js+ACnzzGaLog:js+ARecruit:js+M+module+dialog+alert:js+jquery.scrollTo^Z1FU^1485230927.js");
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
