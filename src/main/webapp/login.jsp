<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>登录</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1"/>
    <link rel="stylesheet" href="./resource/bootstrap-3.3.7/css/bootstrap.css">
    <link rel="stylesheet" href="./resource/bootstrap-3.3.7/css/bootstrap-theme.css">
    <link rel="stylesheet" href="./css/register&login.css">
    <link rel="stylesheet" href="./swiper-7.2.0/swiper/swiper-bundle.min.css"/>
</head>
<body background="./img/tree.jpg">
    <div id="total">
        <div id="caption">
            <div id="topTitle">网上订餐</div>
            <div id="topTitle2">送啥都快</div>
            <div class="swiper mySwiper">
                <div class="swiper-wrapper">
                    <div class="swiper-slide"><img src="./img/ads1.jpg"></div>
                    <div class="swiper-slide"><img src="./img/ads2.jpg"></div>
                </div>
                <div class="swiper-button-next"></div>
                <div class="swiper-button-prev"></div>
            </div>
        </div>
        <div id="app" style="margin: 199px 12% 0 0;">
            <div id="small-caption">
                登录
            </div>
            <div>
                <div class="form-group">
                    <input id="account" type="text" class="form-control" placeholder="请输入帐号" maxlength="10">
                </div>
                <div class="form-group">
                    <input id="password" type="password" class="form-control" placeholder="请输入密码" maxlength="10">
                </div>
            </div>
            <div>
                <button class="btn el-button--primary" id="login" style="margin:0 0 3px 50px;color: #ffffff; background-color:#409EFF; width:298px;display: block;">登录</button>
            </div>
            <div class="registerLinkArea">
                <a class="registerLink" href="register.jsp">用户注册</a>
                <a class="registerLink" href="register-merchant.jsp">饭店认证</a>
                <a class="registerLink" href="manage-user.jsp">管理员登录</a>
            </div>
        </div>
    </div>
    <script src="./resource/JQuery/jquery.min.js"></script>
    <script src="./resource/JQuery/jquery.js"></script>
    <script src="./resource/bootstrap-3.3.7/js/bootstrap.js"></script>
    <script src="./swiper-7.2.0/swiper/swiper-bundle.min.js"></script>
    <script>
        var swiper = new Swiper(".mySwiper", {
            autoplay: {
                delay: 1000,//1秒切换一次
            },
            navigation: {
                nextEl: ".swiper-button-next",
                prevEl: ".swiper-button-prev",
            },
        });
        var oLogin = document.getElementById("login");
        oLogin.onclick = function () {
            var oAccount = document.getElementById("account").value;
            var oPassword = document.getElementById("password").value;
            window.oAccount = oAccount;
            $.ajax ({
                url: "http://localhost:8080/registerandlogin/user-table/login",
                type: "POST",
                dataType: "json",
                contentType: 'application/json',
                data: JSON.stringify ({
                    accountNo: oAccount,
                    password: oPassword
                }),
                success: function(res) {
                    if (res.code === 0) {
                        localStorage.setItem ("Account",oAccount);
                        alert ("登录成功");
                        window.location.href="friend-list.jsp";
                    }
                    else {
                        alert (res.msg);
                    }
                },
                error: function () {
                    alert ("登录失败");
                }
            });
        }
    </script>
</body>
</html>