<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">


<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>主页</title>

    <link rel="stylesheet" href="../css/style.css" />

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">

    <script>
        function delBook(bookId){
            if (confirm("确认删除吗")){
                location.href="${pageContext.request.contextPath}/book/deleteBook?bookId="+bookId;
            }
        }
    </script>

    <style>
        a {
            color: black;
            font-size: 15px;
        }
        a:hover {
            color: cadetblue;
            text-decoration: none;
            border-radius: 5px;
            background-color: cornflowerblue;
            box-shadow: 0 0 5px rosybrown, 0 0 25px plum, 0 0 50px palegreen, 0 0 100px cornflowerblue;
        }
    </style>
</head>



<body>
<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <ul class="breadcrumb"  >
                <li><a href="${pageContext.request.contextPath}/book/allBook" class="btn btn-primary">主页</a> <span class="divider">  &ensp;&ensp;&ensp; &ensp;</span></li>
                <li><a href="${pageContext.request.contextPath}/loginUI" class="btn btn-primary">登录页</a> <span class="divider"> &ensp; &ensp;&ensp; &ensp;</span></li>
                <li><a href="${pageContext.request.contextPath}/toUpdatePassword" class="btn btn-primary">修改密码</a> <span class="divider">&ensp;&ensp;&ensp; &ensp;</span></li>
                <li><a href="${pageContext.request.contextPath}/logout" class="btn btn-primary">注销</a> <span class="divider">&ensp;&ensp;&ensp; &ensp;</span></li>
            </ul>
            <div class="row-fluid">
                <div class="span4">
                    <a class="btn btn-info" style="font-weight: bold;" href="${pageContext.request.contextPath}/book/toAddBook" >新增书籍</a>
                    <a class="btn btn-info" style="font-weight: bold;" href="${pageContext.request.contextPath}/book/allBook">显示全部书籍</a>
                    <div class="btn-group" style="float: right;">
                        <form class="form-search" action="${pageContext.request.contextPath}/book/findBook">
                                <select class="selectpicker" name="findBook">
                                    <option value="0">--请选择--</option>
                                    <option value="bookId">书籍编号</option>
                                    <option value="bookName">书籍名称</option>
                                    <option value="bookCounts">书籍数量</option>
                                    <option value="detail">书籍详情</option>
                                </select>
                            <input class="input-medium search-query" type="text" name="value"/> <button type="submit" class="border-right">查找</button>
                        </form>
                    </div>
                </div>
            </div>
            <table class="table " >
                <thead>
                <tr>
                    <th bgcolor="#6495ed" >
                        书籍编号
                    </th>
                    <th bgcolor="#6495ed">
                        书籍名称
                    </th>
                    <th bgcolor="#6495ed">
                        书籍数量
                    </th>
                    <th bgcolor="#6495ed">
                        书籍详情
                    </th>
                    <th bgcolor="#6495ed">
                        操作
                    </th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="book" items="${book}">
                    <tr >
                        <td bgcolor="#ffebcd">${book.bookId}</td>
                        <td bgcolor="#add8e6" >${book.bookName}</td>
                        <td bgcolor="#ffebcd" >${book.bookCounts}</td>
                        <td bgcolor="#add8e6">${book.detail}</td>
                        <td bgcolor="#ffebcd">
                            <a href="${pageContext.request.contextPath}/book/toUpdateBook?bookId=${book.bookId}" class="btn bg-olive btn-xs">修改</a>
                            &nbsp;&nbsp;|&nbsp;&nbsp;
                            <a href="javascript:void (0)" onclick="delBook('${book.bookId}')" class="btn bg-olive btn-xs">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

</body>


</html>
