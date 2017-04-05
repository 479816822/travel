<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- 第二个注册页面 -->
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>帐号注册2-爱旅U</title>
<link href="css/reglog.css" rel="stylesheet" type="text/css">
<script src="js/jquery-3.1.0.min.js"></script>
<script>
	$(function() {

		 $(".err-tip").css("visibility","hidden");
		var i = Math.floor(Math.random() * 11 + 1);
		$("body").css({
			"backgroundImage" : "url(syste_img/img/reglog/back" + i + ".jpg)",
			"backgroundSize" : "100% 100%"
		});
		
		//ajax异步验证码验证
		$("input[name='smscode']").blur(function() {
			var $p = $(this);
			var user = {
				"code" : $(this).val()
			};
			$.ajax({
				type : "POST",
				url : "checkCode",
				data : JSON.stringify(user),
				contentType : 'application/json; charset=utf-8',
				dataType : 'json',
				success : function(msg) {
					if(msg.success=="error"){//验证码出错
						$("#code").next().css("visibility", "visible").css(
								"border", "none");
						$(".clearfix").show();
					}else{
						$(".clearfix").hide();
					}

				},
				error : function(msg) {
					//提示输需要入的信息
					$(".clearfix").show();
				}
			})
		});

		$("#changeCode").click(function() {
			var imgSrc = $("#imgObj");
			var src = imgSrc.attr("src");
			imgSrc.attr("src", chgUrl(src));
		});

		//时间戳   
		//为了使每次生成图片不一致，即不让浏览器读缓存，所以需要加上时间戳   
		function chgUrl(url) {
			var timestamp = (new Date()).valueOf();
			url = url.substring(0, 17);
			if ((url.indexOf("&") >= 0)) {
				url = url + "×tamp=" + timestamp;
			} else {
				url = url + "?timestamp=" + timestamp;
			}
			return url;
		}

		$("#form input").focus(function() {
			$("#form input").css("border", "1px solid #d8d8d8");
			$(this).css("border", "1px solid lightblue");
		});

		$("input[name='mdUserName']").blur(
				function() {
					if (!$(this).val()) {
						$(this).next().css("visibility", "visible").css(
								"border", "none");
					} else {
						$(this).next().css("visibility", "hidden");
					}
				});
		$("input[name='mdPassword']").blur(
				function() {
					if ($(this).val().length < 6) {
						$(this).next().css("visibility", "visible").css(
								"border", "none");
					} else {
						$(this).next().css("visibility", "hidden");
					}
				});

		$("input[name='rpassword']").blur(
				function() {
					if ($(this).val() != $("input[name='mdPassword']").val()) {
						$(this).next().css("visibility", "visible").css(
								"border", "none");
					} else {
						$(this).next().css("visibility", "hidden");
					}
				});

		$("input[name='mdEmail']")
				.blur(
						function() {
							var reg = /^[a-z0-9]+([._\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$/;
							if (!reg.test($(this).val())) {
								$(this).next().css("visibility", "visible")
										.css("border", "none");
							} else {
								$(this).next().css("visibility", "hidden");
							}
						});
	})

</script>
</head>
<body>
	<div class="wrapper">
		<div class="container">
			<a href="http://www.mafengwo.cn" title="返回首页" class="logo">爱旅U</a>
			<div class="signup-forms">
				<div class="signup-box">
					<div class="add-info">
						<div class="hd">帐号注册</div>
						<form action="/Travel/register2" method="post" id="_j_signup_mobile_form">
							<div class="form-field" style="display: none;">
							<input name="mdTelephone" value="${mdTelephone }">
							</div>
							<div class="form-field">
								<input name="mdUserName" placeholder="您的名号" type="text">
								<div class="error-tip" style="display: block; border: none;">名号不能为空</div>
							</div>
							<div class="form-field">
								<input name="mdPassword" placeholder="您的密码"
									class="verification[required,minSize[6],maxSize[50]]"
									type="password">
								<div class="err-tip" style="display: block; border: none;">密码至少六位</div>
							</div>
							<div class="form-field">
								<input name="rpassword" placeholder="确认密码" 
									class="verification[equals[password]]" type="password">
									<div class="err-tip" style="display: block; border: none;">两次密码不匹配</div>
							</div>
							<div class="form-field">
							<input name="mdEmail" placeholder="您的邮箱">
							<div class="err-tip" style="display: block; border: none;">格式不正确</div>
						</div>
							<div class="form-field">
								<div class="clear-fix">
									<div class="vcode-send">
										<!--自动获取验证码有数字和字母组成-->
										<a href="#" id="changeCode"><img id="imgObj" alt="验证码"
											src="code.html" /></a>
									</div>
									<input placeholder="验证码" id="code" name="smscode">
									<div class="err-tip clearfix" style="display: none; border: none;">验证码输入错误</div>
								</div>
							</div>
							<div class="submit-btn">
								<button type="submit">完成注册</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="photoby">
		&lt;&nbsp; <a href="http://www.mafengwo.cn/i/3257017.html"
			target="_blank">第二个夏天——带着闺蜜去旅行..</a>&nbsp;&gt;&nbsp;by&nbsp; <a
			href="http://www.mafengwo.cn/u/193656.html" target="_blank">小A</a>
	</div>

</body>
</html>