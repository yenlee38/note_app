
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <title>${user.getUsername()}</title>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
            <a class="navbar-brand" href="/home">NOTE-APP</a>
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/home">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/${user.id}/category">Category</a>
                </li>

            </ul>
            <form class="d-flex">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
        </div>
    </div>
</nav>
    <div class="container">
        <div>
            <a type="button" class="btn btn-primary btn-md" href="/${user.id}/add-note">Add Todo</a>
        </div>
        <br>
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3>Danh sách note</h3>
            </div>
            <div class="panel-body">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th width="40%">Description</th>
                        <th width="40%">Target Date</th>
                        <th width="20%"></th>
                    </tr>
                    </thead>
<%--                    <tbody>--%>
<%--                    <c:forEach items="${todos}" var="todo">--%>
<%--                        <tr>--%>
<%--                            <td>${todo.description}</td>--%>
<%--                            <td><fmt:formatDate value="${todo.targetDate}"--%>
<%--                                                pattern="dd/MM/yyyy" /></td>--%>
<%--                            <td><a type="button" class="btn btn-success"--%>
<%--                                   href="/update-todo?id=${todo.id}">Update</a>--%>
<%--                                <a type="button" class="btn btn-warning"--%>
<%--                                   href="/delete-todo?id=${todo.id}">Delete</a></td>--%>
<%--                        </tr>--%>
<%--                    </c:forEach>--%>
<%--                    </tbody>--%>
                </table>
            </div>
        </div>

    </div>
</body>
</html>
