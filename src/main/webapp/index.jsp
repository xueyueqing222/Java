<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>登录页</title>
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">

    <style>
        .bg {
            position: absolute;
            background: url("images/library.png");
            background-attachment: fixed;
            background-position: center;
            background-size: cover;
            width: 100%;
            height: 100%;
        }
        .login{
            padding: 20px;

            width:400px;
            height: 350px;
            /*background:green;*/
            position: absolute;
            left:50%;
            top:50%;
            margin-left:-200px;
            margin-top:-150px;
            border-radius:5px;
            background: white;
            background-color: rgba(0, 0, 0, 0.3);
            box-shadow: 0 15px 25px rgba(0, 0, 0, 0.3);
        }

        .form-group{
            color: #fff;
            background-color: transparent !important;
            outline: none;
            border: none;
            border-bottom: 1px solid #fff;
        }
        .login .form-control{

            color: black;
            background-color: transparent !important;
            outline: none;
            border: none;
            border-bottom: 1px solid #fff;
        }
        .login .Mybutton{
            font-weight: bold;
            text-align: center;
            width: 100%;
            background-color: transparent !important;
        }
    </style>
</head>

<body>

<div class="bg"></div>


<div class="login">
    <form action="${pageContext.request.contextPath}/login" method="POST" name="actionForm">
            <h2 style="text-align: center;color: white;margin-bottom: 20px">书籍管理系统</h2>
            <label style="color: white;" for="UserName">用户名</label></br>
            <input id="UserName" type="text" class="form-control" name="userName" required="required"></br>
            <label style="color: white;" for="Password">密码</label></br>
            <input id="Password" type="text" class="form-control" name="password" required="required"></br>

            <input type="submit" class="btn btn-primary Mybutton" value="进入书籍系统">
    </form>
</div>


</body>

</html>
