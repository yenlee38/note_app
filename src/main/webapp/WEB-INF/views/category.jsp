
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <title>Category</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
            <a class="navbar-brand" href="/${userId}/home">NOTE-APP</a>
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/${userId}/home">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/${userId}/category">Category</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/login">Logout</a>
                </li>

            </ul>
            <form action="/${userId}/search-category" method="post" class="d-flex">
                <input class="form-control me-2" name = "name" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
        </div>
    </div>
</nav>
<div class="container">
    <div class="panel panel-primary">
        <div class="panel-heading">
            <h3>Danh mục</h3>
        </div>
        <div>
            <a type="button" class="btn btn-primary btn-md" href="/${userId}/add-category">Add Category</a>
        </div>
        <div class="panel-body">
            <table class="table table-striped">
                <thead>
                <tr>
                    <th width="40%">Name</th>
                    <th width="40%">Created date</th>
                    <th width="20%"></th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${categorys}" var="category">
                    <tr>
                        <td>${category.name}</td>
                        <td>${category.created_at}</td>
                        <td><a type="button" class="btn btn-primary"
                               onclick="updateById(${userId}, ${category.id}) ">Update</a>
                            <a type="button" class="btn btn-danger"
                               onclick="deleteById(${userId}, ${category.id}) ">Delete</a></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
<script>
    function deleteById(user_id, category_id) {
        if (confirm("Are you sure delete this category!")) {
            document.location = "/" + user_id + "/delete-category?id=" + category_id;
        }
    }

    function updateById(user_id, category_id) {
        if (confirm("Do you want to update this category!")) {
            document.location = "/" + user_id + "/update-category?id=" + category_id;
        }
    }
</script>

</body>
</html>
