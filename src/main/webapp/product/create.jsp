<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 9/29/2021
  Time: 7:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Product</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
</head>
<body>
<h1>Create Product</h1>
<a class="btn btn-primary" href="/products" role="button">Back to products</a>
<form method="post" action="products?action=create">
    <div class="mb-3">
        <label for="name" class="form-label">Product name</label>
        <input type="text" name="name" placeholder="Product name" id="name">
    </div>
    <div class="mb-3">
        <label for="price" class="form-label">Product price</label>
        <input type="number" name="price" placeholder="Enter price" id="price">
    </div>
    <div class="mb-3">
        <label for="note" class="form-label">Product description</label>
        <input type="text" name="note" placeholder="Description" id="note">
    </div>
    <div class="mb-3">
        <label for="image" class="form-label">Image link</label>
        <input type="text" name="image" placeholder="Link image" id="image">
    </div>
    <button>Create</button>
</form>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ"
        crossorigin="anonymous"></script>
</body>
</html>
