<%-- 
    Document   : index
    Created on : 22 jun. 2020, 19:29:53
    Author     : MarcoHuawei
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta charset=”UTF-8">
        <title>Cibertec</title>
        <style type="text/css">
            table { border-collapse: collapse }

            input[type="text"] { text-align: right }

            #cubo, #esfe, #cili {
                border: 1px solid #009;
                width: 120px;
                text-align: center;
                color: #009;
            }
        </style>

        <script src="webjars/jquery/3.5.1/dist/jquery.min.js" type="text/javascript"></script>
        
        
        <script type="text/javascript">
            $(function () {
                $("#bcubo").click(function () {
                    $("#cubo").load("Calcula?accion=CUBO&lado="
                            + $("#tcubo").val());
                });

                $("#besfe").click(function () {
                    $("#esfe").load("Calcula?accion=ESFE&radio="
                            + $("#tesfe").val());
                });

                $("#bcili").click(function () {
                    $("#cili").load("Calcula?accion=CILI&radio="
                            + $("#tcili1").val() + "&altura="
                            + $("#tcili2").val());
                });
            });
        </script>
    </head>
    <body>
        <h3 style="text-align: center">
            Volumen de Figuras Trigonométricas
        </h3>
        <table style="margin: auto">
            <tr>
                <td>
                    <img src="images/cubo.jpg"/>
                </td>
                <td style="padding-left: 20px">lado</td>
                <td>
                    <input type="text" size="6" maxlength="10" id="tcubo"/>
                </td>
                <td>
                    <input type="button" value="ver" id="bcubo"/>
                </td>
                <td><div id="cubo">&nbsp;</div></td>
            </tr>
            <tr>
                <td>
                    <img src="images/esfera.jpg"/>
                </td>
                <td style="padding-left: 20px">radio</td>
                <td>
                    <input type="text" size="6" maxlength="10" id="tesfe"/>
                </td>
                <td>
                    <input type="button" value="ver" id="besfe"/>
                </td>
                <td><div id="esfe">&nbsp;</div></td>
            </tr>
            <tr>
                <td>
                    <img src="images/cilindro.jpg"/>
                </td>
                <td style="padding-left: 20px">radio<br/>altura</td>
                <td>
                    <input type="text" size="6" maxlength="10" id="tcili1"/>
                    <br/>
                    <input type="text" size="6" maxlength="10" id="tcili2"/>
                </td>
                <td>
                    <input type="button" value="ver" id="bcili"/>
                </td>
                <td><div id="cili">&nbsp;</div></td>
            </tr>
        </table>
    </body>
</html>