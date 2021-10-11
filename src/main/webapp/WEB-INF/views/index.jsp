<!DOCTYPE html>
<html lang="en">
<head>
    <title>Login V4</title>
    <meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body>
<div class="limiter">
    <div class="container-login100" style="background-image: url('images/bg-01.jpg');">
        <div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
            <form class="px-4 py-3" method="post" action="/login">
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
                <button type="submit" class="btn btn-primary">Sign in</button>
                <a href="/register" class="btn btn-success">
                    Sign Up
                </a>
            </form>

<%--            <form class="login100-form validate-form" method="post" action="/login">--%>
<%--<span class="login100-form-title p-b-49">--%>
<%--Login--%>
<%--</span>--%>
<%--                <div class="wrap-input100 validate-input m-b-23" data-validate="Username is reauired">--%>
<%--                    <span class="label-input100">Username</span>--%>
<%--                    <input class="input100" type="text" name="username" placeholder="Type your username">--%>
<%--                    <span class="focus-input100" data-symbol="&#xf206;"></span>--%>
<%--                </div>--%>
<%--                <div class="wrap-input100 validate-input" data-validate="Password is required">--%>
<%--                    <span class="label-input100">Password</span>--%>
<%--                    <input class="input100" type="password" name="password" placeholder="Type your password">--%>
<%--                    <span class="focus-input100" data-symbol="&#xf190;"></span>--%>
<%--                </div>--%>
<%--                <div class="container-login100-form-btn">--%>
<%--                    <div class="wrap-login100-form-btn">--%>
<%--                        <div class="login100-form-bgbtn"></div>--%>
<%--                        <button class="login100-form-btn">--%>
<%--                            Login--%>
<%--                        </button>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                    <a href="/register" class="txt2">--%>
<%--                        Sign Up--%>
<%--                    </a>--%>
<%--                </div>--%>
<%--            </form>--%>
        </div>
    </div>
</div>
</body>
</html>
