window.onload = function () {
    const qqSearchButton = document.getElementById("searchButton");   //获取搜索按钮

    document.getElementById("searchButton").onclick = function () {
        var qqAccount = localStorage.getItem("Account");    //获取当前登录qq号
        var qqSearchAccount = document.getElementById("qqInput").value;     //获取搜索QQvalue
        var qqRemarks = document.getElementById("remarks").value;     //获取备注
        if(qqSearchAccount == qqAccount){
            $('#error').modal('show')
        }
        else if (qqSearchAccount) {
            addNewFriends(qqAccount, qqSearchAccount,qqRemarks);
        }
        else {
            $('#blank').modal('show');
        }
        return qqSearchAccount
    }
}

function addNewFriends(qqAccount, qqSearchAccount,qqRemarks) {
    $.ajax({
        url: "http://localhost:8081/easyqq/user-relationship/add-friend",
        type: "post",
        dataType: "json",
        contentType: 'application/json',
        data: JSON.stringify({
            accountNote: qqRemarks,
            relationAccountNo: qqSearchAccount,
            userAccountNo: qqAccount,
        }),
        success: function (res) {
            // const data = res.data;
            if(res.code == 0) {
                $('#full').modal('show');
            }
            else if(res.code == 1 && res.msg =="该好友已添加")
            {
                $("#added").modal('show');
            }
            else  if(res.code == 1 && res.msg == "该用户不存在")
            {
                $("#undefined").modal('show');
            }

        },
        error: function (res) {
            $("#undefined").modal('show');
            alert(res.msg)
        }
    });
}
