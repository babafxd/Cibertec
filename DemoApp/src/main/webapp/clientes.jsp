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
                        <h1 class="h2">Clientes</h1>
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
                        <table id="tblClientes" class="table table-striped table-sm">
                            <thead>
                                <tr>
                                    <th>RUC</th>
                                    <th>Nombre</th>
                                    <th>Sector</th>
                                    <th>Direccion</th>
                                    <th>Web</th>
                                    <th>Contactos</th>
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
                    url: "Clientes",
                    success: function (data) {

                        var tr = [];
                        var clientes = $.parseJSON(data);

                        //var option = "";
                        for (var indice in clientes) {

                            var cliente = clientes[indice];
                            tr.push('<tr>');
                            tr.push("<td>" + cliente.RUC + "</td>");
                            tr.push("<td>" + cliente.Nombre + "</td>");
                            tr.push("<td>" + cliente.Sector + "</td>");
                            tr.push("<td>" + cliente.Direccion + "</td>");
                            tr.push("<td>" + cliente.Web + "</td>");
                            tr.push("<td><button onclick='return fn_CargarContacto();' type='button' class='btn btn-primary' data-toggle='modal' data-target='#exampleModalLong'>Ver</button></td>");
                            tr.push('</tr>');
                        }

                        $('#tblClientes tbody').append($(tr.join('')));

                    }
                });
            });

            function fn_CargarContacto()
            {

                $('#tblContacto tbody').html('');
                $.ajax({
                    url: "Contacto",
                    success: function (data) {

                        var tr = [];
                        $(data).find('contacto').each(function () {

                            console.log($(this).find('nombre').text());
                            console.log($(this).find('telefono').text());
                            console.log($(this).find('correo').text());
                            console.log($(this).find('cargo').text());


                            tr.push('<tr>');
                            tr.push("<td>" + $(this).find('nombre').text() + "</td>");
                            tr.push("<td>" + $(this).find('telefono').text() + "</td>");
                            tr.push("<td>" + $(this).find('correo').text() + "</td>");
                            tr.push("<td>" + $(this).find('cargo').text() + "</td>");
                            tr.push('</tr>');

                        });

                        $('#tblContacto tbody').append($(tr.join('')));




                    }
                });
                return false;

            }

        </script>




        <!-- Modal -->
        <div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLongTitle">Contacto de la empresa</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">

                        <div class="table-responsive">

                            <table id="tblContacto" class="table table-striped table-sm">
                                <thead>
                                    <tr>                                     
                                        <th>Nombre</th>
                                        <th>Telefono</th>
                                        <th>Correo</th>
                                        <th>Cargo</th>                                      
                                    </tr>
                                </thead>
                                <tbody>
                                </tbody>
                            </table>
                        </div>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Save changes</button>
                    </div>
                </div>
            </div>
        </div>


    </body>



</html>
