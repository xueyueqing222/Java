<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>修改密码</title>

    <link rel="stylesheet" href="../css/A.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <style>
        a {
            color: black;
            font-size: 15px;
        }
        a:hover {
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            background-color: #03e9f4;
            box-shadow: 0 0 5px #03e9f4, 0 0 25px #03e9f4, 0 0 50px #03e9f4, 0 0 100px #03e9f4;
        }
    </style>
    <script src="js/jquery-3.5.1.js"></script>
    <script>

        function check() {
            $.post({
                url: "${pageContext.request.contextPath}/checkOldPassword",
                data: {
                    'oldPassword': $("#oldPassword").val()
                },
                success: function(data) {
                    console.log(data);
                    // alert(data);
                    if(data==="√")
                        $("#state").attr("src","images/y.png");
                    else
                        $("#state").attr("src","images/n.png");

                }
            })
        }
        $(function(){
            $("#newPassword").bind("blur",function(){
                if($("#newPassword").val().length>=6){
                    $("#state1").attr("src","images/y.png");
                }else
                    $("#state1").attr("src","images/n.png");
            });

            $("#password").bind("blur",function(){
                if($("#password").val()===$("#newPassword").val()){
                    $("#state2").attr("src","images/y.png");
                }else
                    $("#state2").attr("src","images/n.png");
            });
            $("#sb").bind("click",function(){
                if($("#state").attr("src")!="images/y.png"){
                    $("#state").focus();
                }
                else if($("#state1").attr("src")!="images/y.png"){
                    $("#state1").focus();
                }
                else if($("#state2").attr("src")!="images/y.png"){
                    $("#state2").focus();
                }else{
                    if(confirm("是否确认提交数据")){
                        $("#actionForm").submit();
                    }
                }
            });

        });

    </script>
</head>

<body>
<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <ul class="breadcrumb">
                <li><a href="${pageContext.request.contextPath}/book/allBook" class="btn btn-primary">主页</a> <span class="divider">/</span></li>
            </ul>
            <div class="form-group" style="width: 500px; position: absolute; left: 50%;margin-left: -250px;">
                <form action="${pageContext.request.contextPath}/updatePassword" method="POST" name="actionForm" id="actionForm">
                    <fieldset>
                        <legend>修改密码</legend>
                        <label for="oldPassword">旧密码</label></br>
                        <div class="row">
                            <div class="col-sm">
                                <input id="oldPassword" type="text" class="form-control" name="oldPassword" onblur="check()" required>
                            </div>
                            <div class="col-sm">
                                <img src="images/n.png" id="state" style="width: 25px;height: 25px;"> </br>
                            </div>
                        </div>
                        <label for="newPassword">新密码</label></br>
                        <div class="row">
                            <div class="col-sm">
                                <input id="newPassword" type="text" class="form-control" name="newPassword" required>
                            </div>
                            <div class="col-sm">
                                <img src="images/n.png" id="state1" style="width: 25px;height: 25px;"> </br>
                            </div>
                        </div>
                        <label for="password">确认密码</label></br>
                        <div class="row">
                            <div class="col-sm">
                                <input id="password" type="text" class="form-control" name="password" onblur="check2()" required>
                            </div>
                            <div class="col-sm">
                                <img src="images/n.png" id="state2" style="width: 25px;height: 25px;"> </br>
                            </div>
                        </div>
                        <div class="start">
                            <a href="#">
                                <input class="ABtn" type="button" value="提交" id="sb">
                                <span></span>
                                <span></span>
                                <span></span>
                                <span></span>
                            </a>
                        </div>
                    </fieldset>
                </form>
            </div>
        </div>
    </div>
</div>
</body>

</html>
