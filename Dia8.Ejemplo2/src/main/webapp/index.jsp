<%-- 
    Document   : index
    Created on : 22 jun. 2020, 19:44:46
    Author     : MarcoHuawei
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta charset=”UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="Ingreso" method="post">
            <table style="margin: auto">
                <tr>
                    <td>Nick</td>
                    <td>
                        <input type="text" name="nick"/>
                    </td>
                </tr>
                <tr>
                    <td>Color</td>
                    <td>
                        <select name="color">
                            <option value="#900">Rojo</option>
                            <option value="#090">Verde</option>
                            <option value="#009">Azul</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center">
                        <input type="submit" value="Enviar Datos"/>
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>