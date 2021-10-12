<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <title>Add Note</title>
</head>
<body>
<div class = "container">
    <form:form method="post" class="center-block" modelAttribute="note">
        <div class="mb-3">
            <span>Add note</span>
        </div>
        <div class="mb-3">
            <label for="name" class="form-label">Name Note</label>
            <form:input path="name" type="text" class="form-control" name = "name" id="name" aria-describedby="emailHelp"  required="required"/>
            <label  class="form-label">Content Note</label>
            <form:input path="content" type="text" class="form-control" name = "content" id="content" aria-describedby="emailHelp"  required="required"/>
            <label class="form-label">Category Note</label>
            <form:select class="form-select" aria-label="Default select example" action = "select" path="category_id">
                <c:forEach var = "category" items="${categorys}"  >
                    <option value="${category.getId()}">${category.getName()}</option>
                </c:forEach>

            </form:select>
        </div>
        <button type="submit" class="btn btn-primary">Add</button>
    </form:form>
</div>
</body>
</html>
