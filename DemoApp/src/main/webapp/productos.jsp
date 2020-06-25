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
                        <h1 class="h2">Productos</h1>
                        <div class="btn-toolbar mb-2 mb-md-0">
                            <div class="btn-group mr-2">
                                <button type="button" class="btn btn-sm btn-outline-secondary">Share</button>
                                <button type="button" class="btn btn-sm btn-outline-secondary">Export</button>
                            </div>
                            <button type="button" class="btn btn-sm btn-outline-secondary dropdown-toggle">
                                <span data-feather="calendar"></span>
                                This week
                            </button>
                        </div>
                    </div>

                    <div class="table-responsive">
                        <table id="tblProductos" class="table table-striped table-sm">
                            <thead>
                                <tr>
                                    <th>Código</th>
                                    <th>Nombre</th>
                                    <th>Stock</th>
                                    <th>Unidad</th>
                                    <th>Precio</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                            </tbody>
                        </table>
                    </div>
                </main>
            </div>
        </div>





        <script src="vendor/jquery/jquery.js" type="text/javascript"></script> 
        <script src="webjars/bootstrap/4.5.0/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/feather-icons/4.9.0/feather.min.js"></script>

        <script src="js/dashboard.js"></script>
        <script type="text/javascript">
            $(function () {
                $.ajax({
                    url: "Productos",
                    success: function (data) {

                        var tr = [];
                        var productos = $.parseJSON(data);

                        //var option = "";
                        for (var indice in productos) {

                            var producto = productos[indice];
                            tr.push('<tr>');
                            tr.push("<td>" + producto.Codigo + "</td>");
                            tr.push("<td>" + producto.Nombre + "</td>");
                            tr.push("<td>" + producto.Stock + "</td>");
                            tr.push("<td>" + producto.Unidad + "</td>");
                            tr.push("<td>" + producto.Precio + "</td>");
                            tr.push("<td><img src='" + producto.Imagen + "' class='img-fluid' alt='Responsive image'>");
                            tr.push('</tr>');
                        }

                        $('#tblProductos tbody').append($(tr.join('')));

                    }
                });
            });
        </script>


    </body>



</html>
