<!DOCTYPE html>
<html lang="en">
<head>
    <title>Đăng ký</title>
    <meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body>
<div class="limiter">
    <div class="container-login100" >
        <div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
            <form class="login100-form validate-form" method="post" action="/register">
<span class="login100-form-title p-b-49">
Register
</span>
                <form class="px-4 py-3" method="post" action="/register">
                    <div class="mb-3">
                        <label for="exampleDropdownFormEmail1" class="form-label">Username</label>
                        <input type="text" name="username"  class="form-control" id="exampleDropdownFormEmail1" placeholder="email@example.com">
                    </div>
                    <div class="mb-3">
                        <label for="exampleDropdownFormPassword1" class="form-label">Password</label>
                        <input type="password" name="password" class="form-control" id="exampleDropdownFormPassword1" placeholder="Password">
                    </div>
                    <div class="mb-3">
                    </div>
                    <button type="submit" class="btn btn-primary">Register</button>
                    <a href="/login" class="btn btn-success">
                        Sign in
                    </a>
                </form>

    </div>
</div>
</div>
</body>
</html>
