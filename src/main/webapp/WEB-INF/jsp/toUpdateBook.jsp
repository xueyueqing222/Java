<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>修改界面</title>
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
</head>

<body>
<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <ul class="breadcrumb">
                <li><a href="${pageContext.request.contextPath}/book/addBook" class="btn btn-primary">主页</a> <span class="divider"></span></li>
            </ul>
            <div class="form-group" style="width: 500px; position: absolute; left: 50%;margin-left: -250px;">
                <form action="${pageContext.request.contextPath}/book/updateBook" method="POST" name="actionForm">
                    <fieldset>
                        <legend>修改书籍</legend>
                        <input type="hidden" name="bookId" value="${book.bookId}">
                        <label for="bookName">书籍名称</label></br>
                        <input id="bookName" type="text" class="form-control" name="bookName" value="${book.bookName}" required></br>
                        <label>书籍数量</label></br>
                        <input type="text" class="form-control" name="bookCounts" value="${book.bookCounts}" required></br>
                        <label>书籍详情</label></br>
                        <input type="text" class="form-control" name="detail" value="${book.detail}" required></br>
                        <div class="start">
                            <a href="#">
                                <input class="ABtn" type="submit" value="提交" >
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
