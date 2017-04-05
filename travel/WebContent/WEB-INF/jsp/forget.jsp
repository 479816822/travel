<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- 找回密码页面 -->
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>找回密码-爱旅U</title>
<link href="css/reglog.css" rel="stylesheet" type="text/css">
<script src="js/jquery-3.1.0.min.js"></script> <script>
	$(function() {
		var i = Math.floor(Math.random() * 11 + 1);
		$("body").css({"backgroundImage" : "url(syste_img/img/reglog/back" + i + ".jpg)","backgroundSize" : "100% "});
		
		
		
		//ajax异步验证码验证
		$("input[name='code']").blur(function() {
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
		
		//改变找回密码的方式
		
		$(".found_pass").click(function(){
			var value=$(this).html();
			if(value=="使用手机号码找回"){
				$(this).html("使用邮箱找回")
				 $("#imput_name").attr('placeholder','您的手机号')
			}else{
				$(this).html("使用手机号码找回")
				$("#imput_name").attr('placeholder','您的邮箱')
			}
		});
		
		
	})
</script>
</head>
<body>
	<div class="wrapper">
		<div class="container">
			<a href="" title="返回首页" class="logo">爱旅U</a>
			<div class="signup-forms">
				<div class="signup-box" id="_j_forget_box">
					<div class="add-info">
						<div class="hd">找回密码</div>
						<form action="/Travel/forgets" method="post" id="_j_forget_form">
							<input type="hidden" name="token"
								value="0975cc7cc85599d3dc6776e9511aeb29" />
							<div class="form-field">
								<input name="passport" type="text" placeholder="您的邮箱" id="imput_name"
									autocomplete="off" data-type="email"
									data-verification-name="邮箱"
									class="verification[required,maxSize[50],custom[email]]"
									value="" />
								<div class="err-tip"></div>
							</div>
							<div class="form-link">
								<a href="#" class="found_pass">使用手机号码找回</a>
							</div>
							<div class="form-field">
								<div class="clearfix">
									<a href="#" class="vcode-send verify-code-send" id="changeCode"><img id="imgObj"
										alt="验证码" src="code.html"/></a> <input
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