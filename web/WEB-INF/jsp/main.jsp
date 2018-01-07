<%--
  Created by IntelliJ IDEA.
  User: stl
  Date: 2018/1/7
  Time: 10:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>首页</title>
</head>
<body>
<style type="text/css">
    table{border-collapse:collapse;border-spacing:0;border-left:1px solid #888;border-top:1px solid #888;background:#efefef;}
    th,td{border-right:1px solid #888;border-bottom:1px solid #888;padding:5px 15px;}
    th{font-weight:bold;background:#ccc;}
</style>
</body>
    欢迎[${sessionScope.user.username}]访问
    <br>
    <table border="1">
        <tr>
            <th>封面</th><th>书名</th><th>作者</th><th>价格</th><th>出版社</th>
        </tr>
        <c:forEach items="${requestScope.book_list}" var="book">
            <tr>
                <td><img src="img/${book.image}" height="60"> </td>
                <td>${book.name}</td>
                <td>${book.author}</td>
                <td>${book.price}</td>
                <td>${book.publication}</td>
            </tr>
        </c:forEach>
    </table>
</html>
