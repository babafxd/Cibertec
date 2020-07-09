<%-- 
    Document   : bienvenida
    Created on : 1 jul. 2020, 21:36:11
    Author     : MarcoHuawei
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>
            Bienvenid@  <%= request.getAttribute("nomCompleto")%>
            <br>
            <a href="ProductoServlet?accion=listar">Mantenimiento de productos</a>
        </h1>
    </body>
</html>
