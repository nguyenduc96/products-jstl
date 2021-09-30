<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 9/30/2021
  Time: 8:12 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit product</title>
</head>
<body>
<h1>Edit product</h1>
<form method="post">
    <table>
        <tr>
            <td>Name :</td>
            <td><input type="text" value="${requestScope["product"].getName()}"></td>
        </tr>
        <tr>
            <td>Price : </td>
            <td><input type="number" value="${requestScope["product"].getPrice()}"></td>
        </tr>
        <tr>
            <td>Note : </td>
            <td><input type="text" value="${requestScope["product"].getNote()}"></td>
        </tr>
    </table>
</form>
</body>
</html>
