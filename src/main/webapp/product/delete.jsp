<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    <title>Confirm delete</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">

</head>
<style>
    fieldset {
        width: 300px;
        height: 200px;
        text-align: center;
    }

    button {
        min-width: 100px;
        position: relative;
        top: 50%;
        color: blue;
        border-radius: 20px;
    }

    a {
        text-decoration: none;
    }

    #center {
        width: 300px;
        border-radius: 30px;
        border: 2px dotted black;
        position: relative;
        top: 20%;
        left: calc(50% - 150px);
        padding: 20px 0 0 20px;
    }

    #center button {
        margin-left: 20px;
        margin-bottom: 10px;
    }
</style>
<body>
<div id="center">
    <form method="post">
        <fieldset>
            <legend>Are you sure?</legend>
            <table>
                <tr>
                    <td>Name :</td>
                    <td>${requestScope["product"].getName()}</td>
                </tr>
                <tr>
                    <td>Price :</td>
                    <td><fmt:formatNumber value="${requestScope['product'].getPrice()}"></fmt:formatNumber></td>
                </tr>
                <tr>
                    <td>Note :</td>
                    <td>${requestScope["product"].getNote()}</td>
                </tr>
            </table>
        </fieldset>
        <button name="ok">OK</button>
        <button type="button"><a href="/products" role="button">CANCEL</a></button>
    </form>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ"
        crossorigin="anonymous"></script>
</body>
</html>
