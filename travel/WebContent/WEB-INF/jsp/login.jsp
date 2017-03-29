<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- 登录页面 -->
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>帐号登录</title>
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
        <div class="signup-forms flip">
            <div class="login-box" id="_j_login_box">
                <div class="inner">
                    <form action="/alu/login/" method="post" id="_j_login_form">
                        <div class="form-field">
                            <input name="passport" placeholder="您的邮箱/手机号" autocomplete="off"
                                   data-verification-name="帐号"
                                   class="verification[required,maxSize[50],funcCall[checkShowCode]]"
                                   value="" type="text">
                            <div class="err-tip"></div>
                        </div>
                        <div class="form-field">
                            <input name="password" placeholder="您的密码" autocomplete="off"
                                   data-verification-name="密码"
                                   class="verification[required,minSize[4],maxSize[50]]"
                                   type="password">
                            <div class="err-tip"></div>
                        </div>
                        <div class="form-field hide">
                            <div class="clearfix">
                                <a href="#" class="vcode-send verify-code-send"><img
                                        data-src="/api.php/verifyCode" src="/api.php/verifyCode"></a>
                                <input name="code" placeholder="验证码" autocomplete="off"
                                       data-verification-name="验证码"
                                       class="vcode-input verification[funcCall[checkCode]]"
                                       type="text">
                            </div>
                            <div class="err-tip clearfix"></div>
                        </div>
                        <div class="form-link">
                            <a href="/forget">忘记密码</a>
                        </div>
                        <div class="submit-btn">
                            <button>登 录</button>
                        </div>
                    </form>
                    <div class="connect">
                        <p class="hd">用合作网站账户直接登录</p>
                        <div class="bd">
                            <a href="/weibo" class="weibo"><i></i>新浪微博</a>
                            <a href="/qq"class="qq"><i></i>QQ</a>
                            <a href="/wechat" class="weixin"><i></i>微信</a>
                            <a href="/renren" class="renren"><i></i>人人网</a>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
                <div class="bottom">
                    还没有帐号?<a href="#">马上注册</a>
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