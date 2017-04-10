<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>我的信息</title>
<link href="css/alterInfo/message.css" rel="stylesheet" type="text/css">



   <script type="text/javascript" src="js/jquery-3.1.0.min.js"></script>

    <link href="css/jquery-ui.css" rel="stylesheet">
    <script type="text/javascript" src="js/jquery-1.8.1.js"></script>
    <script type="text/javascript" src="js/jquery-ui.js"></script>
    <script type="text/javascript" src="js/dateinput-ch-ZN.js"></script>
    <link href="css/red-datepicker.css" rel="stylesheet">

    <script>
        $(document).ready(function() {

            $('#popupDatepicker').datepicker(); //绑定输入框
            
            
          //确定信息更新
    		$(".buttonss").click(function(){
    			$(".a1000").html($("input[name='mdUserName']").val())
    			$(".a1001").html($("input[name='mdSex']").val())
    			$(".a1002").html($("input[name='mdAddress']").val())
    			$(".a1003").html($("input[name='mdAlertDate']").val())
    			$(".a1004").html($("#mdSignature").val())
    			mdUserName =$(".a1000").html();
    			mdSex = $(".a1001").html();
    			mdAddress = $(".a1002").html();
    			mdAlertDate = $(".a1003").html(); 
    			mdSignature = $(".a1004").html(); 
    			user ={
    					mdUserName : mdUserName,
    					mdSex : mdSex,
    					mdAddress : mdAddress,
    					mdAlertDate : mdAlertDate,
    					mdSignature : mdSignature 
    					};
    			
    			var objArray = new Array();
    			objArray[0]=mdUserName;
    			objArray[1]=mdSex;
    			objArray[2]=mdAddress;
    			objArray[3]=mdAlertDate;
    			objArray[4]=mdSignature;
    			
    			
    			
    			$.ajax({
    				type : "POST",
    				url : "userinfo",
    				data : JSON.stringify(objArray),
    				contentType : 'application/json; charset=utf-8',
    				dataType : 'json',
    				success : function(msg) {
    					alert("fdd")
    					//成功了
    				},
    				error : function(msg) {
    				}
    			});
    		});
    		

        });
    </script>
</head>
<body>

<div class="a1000" style="display: none;"></div>
<div class="a1001" style="display: none;"></div>
<div  class="a1002" style="display: none;"></div>
<div class="a1003" style="display: none;"></div>
<div class="a1004" style="display: none;"></div>



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
			<a href="updateUserNews" class="on"><i class="i1"></i>我的信息</a> <a
				href="avatar"><i class="i2"></i>我的头像</a> <a
				href="security"><i class="i4"></i>账号安全</a> <a
				href="wallet"><i class="i10"></i>我的钱包</a>
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
				<form action="" method="post" >
					<div
						style="color: #a94442; background-color: #f2dede; border-color: #ebccd1; display: none"></div>

					<!--名号-->
					<dl class="clearfix">
						<dt>名号：</dt>
						<dd>
							<input type="text" name="mdUserName" value="${user.mdUserName }" maxlength="16"
								autocomplete="off" />
						</dd>
					</dl>
					<!--性别-->
					<dl class="clearfix">
						<dt>性别：</dt>
						<dd>
							<label><span class="cssradio"><input type="radio"
									name="mdSex" value="男" /><span></span></span>男</label> <label><span
								class="cssradio"><input type="radio" name="mdSex"
									value="女" /><span></span></span>女</label> <label><span
								class="cssradio"><input type="radio" name="mdSex"
									value="保密" checked="true" /><span></span></span>保密</label>
						</dd>
					</dl>
					<!--居住城市-->
					<dl class="clearfix">
						<dt>居住城市：</dt>
						<dd>
							<div class="input-group">
								<input type="text" name="mdAddress" value="${user.mdAddress }" autocomplete="off" />
								<ul class="input-suggest"></ul>
							</div>
						</dd>
					</dl>
					<!--出生日期-->
					<dl class="clearfix">
						<dt>出生日期：</dt>
						<dd>
							<input type="text" readonly="readonly" name="mdAlertDate" value="${user.mdAlertDate }"
								data-verification-name="出生日期" class="" autocomplete="off" id="popupDatepicker" readonly/>
						</dd>
					</dl>
					<!--个人简介-->
					<dl class="clearfix">
						<dt>个人简介：</dt>
						<dd>
							<textarea name="mdSignature" data-verification-name="个人简介" id="mdSignature"
								placeholder="例：摄影师/旅居澳洲/潜水爱好者"
								class="verification[maxSize[100]]" maxlength="100">${user.mdSignature }</textarea>
						</dd>
					</dl>
					<!--收货地址-->
					<dl class="clearfix">
						<dt>收货地址：</dt>
						<dd class="myaddress">
							<a href="address">新增收货地址</a>
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
					
					<button type="/" class="buttonss">保存</button>
						
					</div>
				</form>
			</div>
		</div>

	</div>

  	<div class="footer" style="	clear: both;
	height: 480px;">
		<iframe src="IndexFooter" frameborder="0" scrolling="no" marginheight="0"
			marginwidth="0" style="margin: 0px auto;	width: 100%;
	height: 480px;"></iframe>
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