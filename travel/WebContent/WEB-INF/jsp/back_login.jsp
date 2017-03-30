<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>管理员登陆</title>

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
        <div class="signup-forms flip">
            <div class="login-box" id="_j_login_box">
                <div class="inner">
                    <form action="/back_login/" method="post" id="_j_login_form">
                        <div class="form-field">
                            <input name="passport" placeholder="您的用户名" autocomplete="off"
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
                        <div class="submit-btn">
                            <button>登 录</button>
                        </div>
                    </form>
                    <div class="connect">
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>



</body>
</html>