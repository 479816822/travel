<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- 第二个注册页面 -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>帐号注册2</title>
    <link href="reg&log.css" rel="stylesheet" type="text/css">
    <script src="js/jquery-3.1.0.min.js"></script>
    <script>
        $(function(){
            var i = Math.floor(Math.random() * 11 + 1);
            $("body").css({"backgroundImage": "url(img/reg&log/back" + i + ".jpg)","backgroundSize":"100%"});
        })
    </script>
</head>
<body>
<div class="wrapper">
    <div class="container">
        <a href="http://www.mafengwo.cn" title="返回首页" class="logo">蚂蜂窝</a>
        <div class="signup-forms">
            <div class="signup-box">
                <div class="add-info">
                    <div class="hd">帐号注册</div>
                    <form action="/regist/mobile" method="post"
                          id="_j_signup_mobile_form">
                        <input name="mobile" value="15662455662" type="hidden">
                        <div class="form-field m-t-10">
                            <input name="name" placeholder="您的名号" autocomplete="off"
                                   data-verification-name="名号" class="verification[required]"
                                   type="text">
                            <div class="err-tip"></div>
                        </div>
                        <div class="form-field">
                            <input name="password" placeholder="您的密码" autocomplete="off"
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
                            <div class="clearfix">
                                <a href="#" class="vcode-send verify-code-send"><img
                                        data-src="/api.php/superCode" src="/api.php/superCode"></a>
                                <input name="code" placeholder="验证码" autocomplete="off"
                                       data-verification-name="验证码"
                                       class="vcode-input verification[required,funcCall[checkSuperCode]]"
                                       type="text">
                            </div>
                            <div class="err-tip clearfix"></div>
                        </div>
                        <div class="form-field">
                            <div class="clearfix">
                                <a href="#" class="vcode-send sms-code-send">免费获取验证码</a> <input
                                    name="smscode" placeholder="短信验证码" autocomplete="off"
                                    data-verification-name="短信验证码"
                                    class="vcode-input verification[required,funcCall[checkSMSCode]]"
                                    type="text">
                            </div>
                            <div class="err-tip clearfix"></div>
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
		&lt;&nbsp;
	<a href="http://www.mafengwo.cn/i/3257017.html" target="_blank">第二个夏天——带着闺蜜去旅行..</a>&nbsp;&gt;&nbsp;by&nbsp;
	<a href="http://www.mafengwo.cn/u/193656.html" target="_blank">小A</a>
	</div>

</body>
</html>