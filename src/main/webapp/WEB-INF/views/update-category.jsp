
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <title>Update Category</title>
</head>
<body>
<div class = "container">
    <form action="/${userId}/update-category" method="post" class="center-block">
        <div class="mb-3">
            <span>Update Category</span>
        </div>
        <div class="mb-3">
            <label for="name" class="form-label">Name category</label>
            <input type="hidden" name="id" value="${id}">
            <input type="text" class="form-control" name = "name" id="name" aria-describedby="emailHelp" value="${name}">
        </div>
        <button type="submit" class="btn btn-primary">Update</button>
    </form>
</div>
</body>
</html>
