<%-- 
    Document   : index
    Created on : 22 jun. 2020, 16:44:04
    Author     : MarcoHuawei
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="Marco Saavedra">
        <title>Dashboard  · Cibertec</title>



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
        <!-- Custom styles for this template -->
        <link href="css/dashboard.css" rel="stylesheet">
    </head>
    <body>
 
        
        <%@include file="WEB-INF/jspf/header.jspf" %>

        <div class="container-fluid">
            <div class="row">
                
                
               <%@include file="WEB-INF/jspf/menu.jspf" %>

                <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4">
                    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                        <h1 class="h2">Bienvenido</h1>

                    </div>
                </main>
            </div>
        </div>


        <script src="vendor/jquery/jquery.js"></script>
        <script>window.jQuery || document.write('<script src="../assets/js/vendor/jquery.slim.min.js"><\/script>')</script>


        <script src="webjars/bootstrap/4.5.0/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/feather-icons/4.9.0/feather.min.js"></script>
       
        <script src="js/dashboard.js"></script>
    </body>
</html>
