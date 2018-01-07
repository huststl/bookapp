<%--
  Created by IntelliJ IDEA.
  User: stl
  Date: 2018/1/7
  Time: 10:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>登录页面</title>
</head>
<body>
    <h3>登录页面</h3>
    <form action="login" method="post">
        <div color="red">${requestScope.message}</div>
        <table>
            <tr>
                <td><label>登录名:</label></td>
                <td><input type="text" id="loginname" name=""loginname> </td>
            </tr>
            <tr>
                <td><label>密码:</label></td>
                <td><input type="password" id="password" name="password"></td>
            </tr>
            <tr>
                <td><input type="submit" value="登录"></td>
            </tr>
        </table>
    </form>
</body>
</html>
