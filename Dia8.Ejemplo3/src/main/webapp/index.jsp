<%-- 
    Document   : index
    Created on : 22 jun. 2020, 19:59:01
    Author     : MarcoHuawei
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/main.css" type="text/css" rel="stylesheet"/>
        <link href="css/menu.css" type="text/css" rel="stylesheet"/>
    </head>
    <body>
        <div id="main">
            <div id="menu">
                <%@include file="WEB-INF/jspf/menu.jspf" %>
            </div>



            <div id="data">
                <iframe src="http://www.upc.edu.pe/" 
                        width="100%" height="100%"
                        style="border: none" ></iframe>
            </div>

            <div id="pie"></div>
        </div>
    </body>
</html>