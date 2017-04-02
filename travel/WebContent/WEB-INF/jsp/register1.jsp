<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- 第一个注册页面 -->
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>帐号注册-爱旅U</title>
<link href="../css/reglog.css" rel="stylesheet" type="text/css">
<script src="../js/jquery-3.1.0.min.js"></script>
<script>
	$(function() {
        $(".error-tip").css("visibility","hidden");

		var i = Math.floor(Math.random() * 11 + 1);
		$("body").css({
			"backgroundImage" : "url(../syste_img/img/reglog/back" + i + ".jpg)",
			"backgroundSize" : "100% 100%"
		});

		$("input[name='mdTelephone']").keyup(function() {
			var reg = /^1[3|4|5|7|8]\d{9}$/;
			var mdTelephone = $("input[name='mdTelephone']").val();
			if (!reg.test(mdTelephone)) {
				$("#used").css("visibility", "hidden");
				$("#error").css("visibility", "visible");
			} else {
				$("#error").css("visibility", "hidden");
				$.ajax({
					type : "post",
					url : "checkPhone",
					data : {
						'mdTelephone' : mdTelephone
					},
					dataType : "json",
					success : function(data) {
						if (data == 1) {
							$("#used").show();
						} else {
							$("#used").hide();
						}
					}
				});
			}
		});
	});
</script>
</head>
<body>
	<div class="wrapper">
		<div class="container">
			<a href="http://www.mafengwo.cn" title="返回首页" class="logo">爱旅U</a>
			<div class="signup-forms">
				<div class="signup-box" id="_j_signup_box">
					<div class="inner">
						<form action="/Travel/alu/regists" method="post" id="_j_signup_form">
							<div class="form-field">
								<input name="mdTelephone" placeholder="您的手机号码" autocomplete="off"
									data-type="mobile" data-verification-name="手机号码"
									class="verification[required,maxSize[50],custom[mobile]]"
									value="" type="text">
								<div class="error-tip" id="error">输入有误，请重新填写！</div>
								<div class="error-tip" id="used">此手机号已注册！</div>
							</div>

							<div class="submit-btn">
								<button type="submit">立即注册</button>
							</div>
						</form>
						<div class="agreement">
							注册视为同意<a target="_blank"
								href="ementhttp://www.mafengwo.cn/s/agre.html">《蚂蜂窝用户使用协议》</a>
						</div>
						<div class="connect">
							<p class="hd">用合作网站账户直接登录</p>
							<div class="bd">
								<a href="/weibo" class="weibo"><i></i>新浪微博</a> <a href="/qq"
									class="qq"><i></i>QQ</a> <a href="/wechat" class="weixin"><i></i>微信</a>
								<a href="/renren" class="renren"><i></i>人人网</a>
								<div class="clear"></div>
							</div>
						</div>
					</div>
					<div class="bottom">
						已经注册?<a href="#">马上登录</a>
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