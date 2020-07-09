<!DOCTYPE html>
<html>
    <head>
        <title>Start Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1>Tienda online</h1>
        <h3>Login de la aplicación</h3>
        <form action="LoginServlet" method="post" >
            <table border="1">
                <tr>
                    <td>Usuario</td>
                    <td>
                        <input type="text" name="txtUsuario" required />              
                    </td>
                </tr>
                <tr>
                    <td>Clave</td>
                    <td>
                        <input type="password" name="txtPassword" required />              
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="Ingresar"/>          
                    </td>
                </tr>
            </table>
            <input type="hidden" name="accion" value="entrar" />
        </form>
        <%= request.getAttribute("msgError") == null ? "" : request.getAttribute("msgError")%>
    </body>
</html>
