<%-- 
    Document   : productoDatos
    Created on : 6 jul. 2020, 21:09:18
    Author     : MarcoHuawei
--%>

<%@page import="com.ctpconsultores.tienda.dto.ProductoDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript">
            function fn_regresar()
            {

                window.location.href = "ProductoServlet?accion=listar";

            }

        </script>
    </head>
    <body>
        <h1>Datos de producto</h1>
        <% ProductoDTO prod = (ProductoDTO) request.getAttribute("producto");%>
        <form action="ProductoServlet" method="post">
            <table border="0">
                <tbody>
                    <tr>
                        <td>Nombre</td>
                        <td>
                            <input type="text" name="txtNombreProducto"
                                   value="<%= prod.getNombre()%>"
                                   required/>
                        </td>
                    </tr>
                    <tr>
                        <td>Precio</td>
                        <td>
                            <input type="text" name="txtPrecio" 
                                   value="<%= prod.getPrecio()%>"
                                   required />
                        </td>
                    </tr>
                    <tr>
                        <td>Descuento</td>
                        <td>
                            <input type="number" name="txtDescuento" 
                                   value="<%= prod.getDescuento()%>"
                                   required />
                        </td>
                    </tr>
                    <tr>
                        <td>Categoría</td>
                        <td>
                            <select name="cmbCategoria">
                                <option value="1" <%= prod.getIdcategoria() == 1 ? "selected" : ""%>>Tecnología</option>
                                <option value="2" <%= prod.getIdcategoria() == 2 ? "selected" : ""%>>Audifonos</option>
                                <option value="3" <%= prod.getIdcategoria() == 3 ? "selected" : ""%>>Laptops</option>
                                <option value="4" <%= prod.getIdcategoria() == 4 ? "selected" : ""%>>Smartphone</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>Imagen</td>
                        <td>
                            <input type="text" 
                                   value="<%= prod.getImagen()%>"
                                   name="txtImagen" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <input type="submit" value="Grabar" />&nbsp;&nbsp;
                            <input type="button" value="Cancelar" 
                                   onclick="fn_regresar();" />
                        </td>                 
                    </tr>
                </tbody>
            </table>
            <input type="hidden" name="accion" value="insGrabar" />
        </form>

        <%= request.getAttribute("msgError") == null ? "" : request.getAttribute("msgError")%>

    </body>
</html>
