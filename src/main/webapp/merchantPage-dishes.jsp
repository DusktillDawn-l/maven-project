<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>商家界面</title>
    <link rel="stylesheet" href="./resource/bootstrap-3.3.7/css/bootstrap.css">
    <link rel="stylesheet" href="./resource/bootstrap-3.3.7/css/bootstrap-theme.css">
    <link rel="stylesheet" href="./css/merchantPage.css">
</head>
<body>
<div id="topBar">
    <p style="display: inline;line-height: 50px;font-weight: bolder;color: whitesmoke;margin-left: 22px; font-size: 25px">网上订餐</p>
    <a class="topBarContent" href="login.jsp">登出</a>
</div>
<div id = leftBar>
    <a class="leftBarContent" href="merchantPage-dishes.jsp"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-fill" viewBox="0 0 16 16">
        <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
    </svg> 菜品管理</a>
    <a class="leftBarContent" href="merchantPage-statistics.jsp"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-people-fill" viewBox="0 0 16 16">
        <path d="M7 14s-1 0-1-1 1-4 5-4 5 3 5 4-1 1-1 1H7zm4-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
        <path fill-rule="evenodd" d="M5.216 14A2.238 2.238 0 0 1 5 13c0-1.355.68-2.75 1.936-3.72A6.325 6.325 0 0 0 5 9c-4 0-5 3-5 4s1 1 1 1h4.216z"/>
        <path d="M4.5 8a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5z"/>
    </svg> 统计数据</a>
</div>
<div class="middleContent">
    <div class="title">菜品信息</div>
    <div class="listHead">
        <div class="listHeadContent">
            菜品名
        </div>
        <div class="listHeadContent">
            单价
        </div>
        <button type="button" id="add" class="btn el-button--primary" data-toggle="modal" data-target="#setDishes">
            添加菜品
        </button>
    </div>
    <ul class="list">
        <li >
            <div class="listContent">
                宫保鸡丁
            </div>
            <div class="listContent">
                30
            </div>
        </li>
        <li >
            <div class="listContent">
                水煮鱼
            </div>
            <div class="listContent">
                80
            </div>
<!--            <form action="#" method="post" enctype="multipart/form-data">-->
<!--                <label for="file">文件名：</label>-->
<!--                <input id="file" name="file" type="file">-->
<!--                <input type="submit" name="submit" value="提交">-->
<!--            </form>-->
        </li>
    </ul>
</div>
<!--模态框-->
<!-- Modal -->
<div class="modal fade" id="setDishes" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">添加菜品</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body" style="text-align: center">
                <div>
                    菜品名称：
                    <input id="category" style="width: 450px;display: inline-block;" class="form-control" type="text" placeholder="请输入菜品名称">
                </div>
                <div>
                    菜品单价：
                    <input id="price" style="width: 450px;display: inline-block;" class="form-control" type="text" placeholder="请输入菜品单价">
                </div>
                <div class="form-group">
                    <label>图片</label>
                    <img src="" alt="" id="img" />
                    <input type="file" name="file" id="uploadImage" onchange="postData()">
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button id="submit"type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="error" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="errorLabel">添加菜品</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body" style="text-align: center">
                菜品信息不全
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>
<script src="./resource/JQuery/jquery.min.js"></script>
<script src="./resource/JQuery/jquery.js"></script>
<script src="./resource/bootstrap-3.3.7/js/bootstrap.js"></script>
<script>
    $("#submit").click(function ()
    {
        var category = $("#category").val();
        var price = $("#price").val();
        if(category&&price){
            $('#setDishes').modal('hide');
            $(".list").append("<li ><div class=\"listContent\">" + category+ "</div><div class=\"listContent\">" + price + "</div></li>")
        }
        else{
            $("#error").modal('show');
        }
    })
    function postData() {
        var formData = new FormData();
        formData.append("file", $("#uploadImage")[0].files[0]);
        $.ajax({
            url: basePath + "/upload.action",
            type: "post",
            data: formData,
            processData: false, // 告诉jQuery不要去处理发送的数据
            contentType: false, // 告诉jQuery不要去设置Content-Type请求头
            dataType: 'text',
            success: function(data) {
                var params = JSON.parse(data)
                $("#img").attr("src", params);
            },
            error: function(data) {

            }
        });
    }
    //赋值变量
    var basePath = getContextPath();
    // 获取项目路径
    function getContextPath() {
        var pathName = window.document.location.pathname;
        var projectName = pathName.substring(0, pathName.substr(1).indexOf(
            '/') + 1);
        return projectName;
    }
</script>
</body>
</html>