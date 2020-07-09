<%-- 
    Document   : productoLista
    Created on : 6 jul. 2020, 19:56:51
    Author     : MarcoHuawei
--%>

<%@page import="java.util.List"%>
<%@page import="com.ctpconsultores.tienda.dto.ProductoDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tienda Cibertec</title>
    </head>
    <body>
        <h1>Mantenimiento de Productos</h1>
        <table border="1">
            <caption>Productos</caption>
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Nombre</th>
                    <th>Precio</th>
                    <th>Descuento</th>
                    <th>Id categoría</th>
                    <th>Imagen</th>
                </tr>
            </thead>
            <tbody>
                <% List<ProductoDTO> listaProductos = (List<ProductoDTO>) request.getAttribute("listaProductos");
                    for (ProductoDTO producto : listaProductos) {%>
                <tr>
                    <td><%= producto.getIdproducto()%></td>
                    <td><a href="ProductoServlet?accion=mod&id=<%= producto.getIdproducto()%>">
                            <%= producto.getNombre()%></a>
                    </td>
                    <td><%= producto.getPrecio()%></td>
                    <td><%= producto.getDescuento()%></td>
                    <td><%= producto.getIdcategoria()%></td>
                    <td><img src="<%= "img/" + producto.getImagen()%>" height="60" width="60" /></td>
                </tr>
                <%  }%>
            </tbody>
        </table>
        <input type="button" value="Crear nuevo" onclick="fn_insertar();" />
    </body>

    <script type="text/javascript">

        function fn_insertar()
        {
            window.location.href = "ProductoServlet?accion=ins";
        }
    </script>

</html>
