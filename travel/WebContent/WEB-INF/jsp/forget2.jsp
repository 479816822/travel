<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- 设置新密码页面 -->
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>设置新密码-爱旅U</title>
<link href="css/reglog.css" rel="stylesheet" type="text/css">
<script src="js/jquery-3.1.0.min.js"></script>
<script>
	$(function() {
		 $(".hide_code").css("visibility","hidden");
		var code;
		var i = Math.floor(Math.random() * 11 + 1);
		$("body").css({
			"backgroundImage" : "url(syste_img/img/reglog/back" + i + ".jpg)",
			"backgroundSize" : "100% 100%"
		});
		
		//确认密码
		$("input[name='rpassword']").blur(
				function() {
					if ($(this).val() != $("input[name='mdPassword']").val()) {
						$(this).val("两次密码不相同，重新输入");
					}
				});
		
		//确认验证码
		
		//确认密码
		$("input[name='smscode']").blur(
				function() {
					if ($(this).val() != $(".hide_code").html()) {
						$(this).val("两次密码不相同，重新输入");
					}
				});

		//再次发送密码
		$(".alert").click(function() {
			var mdTelephone=$("#sendCode").val();
			$.ajax({
				type : "POST",
				url : "sendCode",
				async : false,
				data : {
					mdTelephone : mdTelephone
				},
				dataType : "json",
				success : function(msg) {
						$(".hide_code").html(msg);
				},
				error : function(msg) {
					alert("验证码发送失败");
				}
			})
		})
	})
</script>
</head>
<body>

  <div "display:none" class="hide_code">${code}</div> 
	<div class="wrapper">
		<div class="container">
			<a href="http://www.mafengwo.cn" title="返回首页" class="logo">蚂蜂窝</a>
			<div class="signup-forms">
				<div class="signup-box">
					<div class="add-info">
						<div class="hd">设置新密码</div>
						<div class="alert alert-info">
							短信验证码已下发，如果未收到，请<a href="#">点击重新获取</a>。
						</div>
						<form action="/Travel/foundPass" method="post"
							id="_j_forget_mobile_form">
							<input id="sendCode" name="passport" value="${user.passport }"
								type="hidden">
							<div class="form-field">
								<input name="mdPassword" placeholder="您的密码" autocomplete="off"
									data-verification-name="密码"
									class="verification[required,minSize[6],maxSize[50]]"
									type="password">
								<div class="err-tip"></div>
							</div>
							<div class="form-field">
								<input name="rpassword" placeholder="确认密码" autocomplete="off"
									data-verification-name="密码"
									class="verification[equals[password]]" type="password">
								<div class="err-tip"></div>
							</div>
							<div class="form-field">
								<input name="smscode" placeholder="短信验证码" autocomplete="off"
									data-verification-name="短信验证码"
									class="verification[required,funcCall[checkSMSCode]]"
									type="text">
								<div class="err-tip"></div>
							</div>
							<div class="submit-btn">
								<button type="submit">完成</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="photoby">
		&lt;&nbsp;<a href="http://www.mafengwo.cn/i/3294125.html"
			target="_blank">2015年雨季重游巴厘岛，囊括罗..</a>&nbsp;&gt;&nbsp;by&nbsp;<a
			href="http://www.mafengwo.cn/u/63461564.html" target="_blank">Gritty</a>
	</div>
</body>
</html>