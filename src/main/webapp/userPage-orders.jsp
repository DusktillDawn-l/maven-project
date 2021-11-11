<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>订单界面</title>
    <link rel="stylesheet" href="./resource/bootstrap-3.3.7/css/bootstrap.css">
    <link rel="stylesheet" href="./resource/bootstrap-3.3.7/css/bootstrap-theme.css">
    <link rel="stylesheet" href="./css/infoPage.css">
</head>
<body>
<div id="topBar">
    <p style="display: inline;line-height: 50px;font-weight: bolder;color: whitesmoke;margin-left: 22px; font-size: 25px">网上订餐</p>
    <a class="topBarContent" href="login.jsp">登出</a>
</div>
<div id = leftBar>
    <a class="leftBarContent" href="userPage-menu.jsp"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-fill" viewBox="0 0 16 16">
        <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
    </svg> 网上点餐</a>
    <a class="leftBarContent" href="userPage-orders.jsp"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-people-fill" viewBox="0 0 16 16">
        <path d="M7 14s-1 0-1-1 1-4 5-4 5 3 5 4-1 1-1 1H7zm4-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
        <path fill-rule="evenodd" d="M5.216 14A2.238 2.238 0 0 1 5 13c0-1.355.68-2.75 1.936-3.72A6.325 6.325 0 0 0 5 9c-4 0-5 3-5 4s1 1 1 1h4.216z"/>
        <path d="M4.5 8a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5z"/>
    </svg> 我的订单</a>
<!--    <a class="leftBarContent" href="manage-statistics.jsp"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-video2" viewBox="0 0 16 16">-->
<!--        <path d="M10 9.05a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5Z"/>-->
<!--        <path d="M2 1a2 2 0 0 0-2 2v9a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V3a2 2 0 0 0-2-2H2ZM1 3a1 1 0 0 1 1-1h2v2H1V3Zm4 10V2h9a1 1 0 0 1 1 1v9c0 .285-.12.543-.31.725C14.15 11.494 12.822 10 10 10c-3.037 0-4.345 1.73-4.798 3H5Zm-4-2h3v2H2a1 1 0 0 1-1-1v-1Zm3-1H1V8h3v2Zm0-3H1V5h3v2Z"/>-->
<!--    </svg> 统计信息</a>-->
</div>
<div class="middleContent">
    <div class="title">订单信息</div>
    <div class="listHead">
        <div class="listHeadContent">
            订单号
        </div>
        <div class="listHeadContent">
            总价
        </div>
        <div class="listHeadContent">
            评价信息
        </div>

    </div>
    <ul class="list">
        <li >
            <!--            <input id="account" type="text" class="form-control" placeholder="张三" maxlength="10">-->
            <div class="listContent">
                2021110901
            </div>
            <div class="listContent">
                354
            </div>
            <input class="form-control listContent" type="text" placeholder="请添加评价">
            <button class="btn el-button--primary">提交评价</button>
        </li>
        <li >
            <div class="listContent">
                20110902
            </div>
            <div class="listContent">
                369
            </div>
            <input class="form-control listContent" type="text" placeholder="请添加评价">
            <button class="btn el-button--primary" >提交评价</button>
        </li>
    </ul>
</div>
</body>
</html>