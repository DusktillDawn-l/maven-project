<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>注册</title>
    <link rel="stylesheet" href="./resource/index.css">
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
        <div id="app">
                <div id="small-caption">
                    注册
                </div>
            <div>
                <div class="form-group">
                    <input id="nickname" type="text" class="form-control" placeholder="请输入昵称" maxlength="10">
                </div>
                <div class="form-group">
                    <input id="name" type="text" class="form-control" placeholder="请输入姓名" maxlength="10">
                </div>
                <div class="form-group">
                    <input id="idNumber" type="text" class="form-control" placeholder="请输入身份证号" maxlength="10">
                </div>
                <div class="form-group">
                    <input id="account" type="text" class="form-control" placeholder="请输入帐号" maxlength="10">
                </div>
                <div class="form-group">
                    <input id="password1" type="password" class="form-control" placeholder="请输入密码" maxlength="10">
                </div>
                <div class="form-group">
                    <input id="password2" type="password" class="form-control" placeholder="请确认密码" maxlength="10">
                </div>
            </div>
            <div>
                <button class="btn el-button--primary" id="register" style="margin:0 0 3px 50px;color: #ffffff; background-color:#409EFF; width:298px;">注册</button><br>
            </div>
            <div class="registerLinkArea">
                <a class="registerLink" href="login.jsp">登录</a>
            </div>
        </div>
    </div>
    <script src="./resource/JQuery/jquery.min.js"></script>
    <script src="./resource/JQuery/jquery.js"></script>
    <script src="./resource/bootstrap-3.3.7/js/bootstrap.js"></script>
    <script src="./swiper-7.2.0/swiper/swiper-bundle.min.js"></script>
    <script>
        var swiper = new Swiper(".mySwiper", {  //轮播图
            autoplay: {
                delay: 1000,//1秒切换一次
            },
            navigation: {
                nextEl: ".swiper-button-next",
                prevEl: ".swiper-button-prev",
            },
        });
        var oRegister = document.getElementById("register");
        oRegister.onclick = function () {
            if ($(".password1").val() === $(".password2").val()) {
                var oNickname = $(".nickname").val();
                var oName = $(".name").val();
                var oidNumber = $(".idNumber").val();
                var oAccount = $(".account").val();
                var oPassword = $(".password1").val();
                $.ajax ({
                    url: "http://localhost:8081/registerandlogin/user-table/register",
                    type: "POST",
                    dataType: "json",
                    contentType: 'application/json',
                    data: JSON.stringify ({
                        nickname: oNickname,
                        name:oName,
                        idNumber:oidNumber,
                        accountNo: oAccount,
                        password: oPassword
                    }),
                    success: function (res) {
                        if (res.code === 0) {
                            alert("注册成功");
                            window.location.href = 'login.jsp';
                        }
                        else {
                            alert(res.msg);
                        }
                    },
                    error: function () {
                        alert("注册失败");
                    }
                });
            }
            else {
                alert("两次密码输入不相同");
            }
        }
    </script>
</body>
</html>