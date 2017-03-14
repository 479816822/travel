<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- 找回密码页面 -->
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>找回密码-爱旅U</title>
<link href="reg&log.css" rel="stylesheet" type="text/css">
<script src="js/jquery-3.1.0.min.js"></script>
<script>
	$(function() {
		var i = Math.floor(Math.random() * 11 + 1);
		$("body").css({
			"backgroundImage" : "url(img/reg&log/back" + i + ".jpg)",
			"backgroundSize" : "100% 100%"
		});
	})
</script>
</head>
<body>
	<div class="wrapper">
		<div class="container">
			<a href="http://www.mafengwo.cn" title="返回首页" class="logo">蚂蜂窝</a>
			<div class="signup-forms">
				<div class="signup-box" id="_j_forget_box">
					<div class="add-info">
						<div class="hd">找回密码</div>
						<form action="/forget" method="post" id="_j_forget_form">
							<input type="hidden" name="token"
								value="0975cc7cc85599d3dc6776e9511aeb29" />
							<div class="form-field">
								<input name="passport" type="text" placeholder="您的邮箱"
									autocomplete="off" data-type="email"
									data-verification-name="邮箱"
									class="verification[required,maxSize[50],custom[email]]"
									value="" />
								<div class="err-tip"></div>
							</div>
							<div class="form-link">
								<a href="#">使用手机号码找回</a>
							</div>
							<div class="form-field">
								<div class="clearfix">
									<a href="#" class="vcode-send verify-code-send"><img
										data-src="/api.php/verifyCode" src="/api.php/verifyCode" /></a> <input
										name="code" type="text" placeholder="验证码" autocomplete="off"
										data-verification-name="验证码"
										class="vcode-input verification[required,funcCall[checkCode]]">
								</div>
								<div class="err-tip clearfix"></div>
							</div>
							<div class="submit-btn">
								<button type="submit">立即找回</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="photoby">
		&lt;&nbsp;
	<a href="http://www.mafengwo.cn/i/3257017.html" target="_blank">第二个夏天——带着闺蜜去旅行..</a>&nbsp;&gt;&nbsp;by&nbsp;
	<a href="http://www.mafengwo.cn/u/193656.html" target="_blank">小A</a>
	</div>
</body>
</html>