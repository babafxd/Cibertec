<%-- 
    Document   : login.jsp
    Created on : 22 jun. 2020, 16:33:09
    Author     : MarcoHuawei
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="Maco Saavedra">
        <meta name="generator" content="Jekyll v4.0.1">
        <title>Login - Cibertec</title>




        <!-- Bootstrap core CSS -->
        <link href="webjars/bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet">


        <style>
            .bd-placeholder-img {
                font-size: 1.125rem;
                text-anchor: middle;
                -webkit-user-select: none;
                -moz-user-select: none;
                -ms-user-select: none;
                user-select: none;
            }

            @media (min-width: 768px) {
                .bd-placeholder-img-lg {
                    font-size: 3.5rem;
                }
            }
        </style>

        <link href="css/login.css" rel="stylesheet">
    </head>
    <body class="text-center">
        <form  action="Login" method="post" class="form-signin">
            <img class="mb-4" src="image/logo.png" alt="" width="72" height="72">
            <h1 class="h3 mb-3 font-weight-normal">Ingresar</h1>
            <label for="inputEmail" class="sr-only">Email address</label>
            <input type="text" id="usuario" name="usuario" class="form-control" placeholder="Usuario" required autofocus>
            <label for="inputPassword" class="sr-only">Password</label>
            <input type="password" id="password" name="password" class="form-control" placeholder="Contraseña" required>
            <div class="checkbox mb-3">
                <label>
                    <input type="checkbox" value="remember-me"> Recordarme
                </label>
            </div>
            <button class="btn btn-lg btn-primary btn-block" type="submit">Ingresar</button>
            <p class="mt-5 mb-3 text-muted">&copy; 2017-2020</p>
        </form>
    </body>
</html>
