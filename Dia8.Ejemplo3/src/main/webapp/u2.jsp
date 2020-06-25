<%-- 
    Document   : u2
    Created on : 22 jun. 2020, 19:59:41
    Author     : MarcoHuawei
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta charset=”UTF-8">
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
                <iframe src="http://www1.ulima.edu.pe/webulima.nsf"
                        width="100%" height="100%"
                        style="border: none" ></iframe>
            </div>
            <div id="pie"></div>
        </div>
    </body>
</html>