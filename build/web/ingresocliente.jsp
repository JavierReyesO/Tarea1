<%-- 
    Document   : ingresocliente
    Created on : 25-04-2014, 04:53:02 PM
    Author     : Javier
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ingresar Cliente</title>
    </head>
    <body>
        <form method="post" action="cliente.jsp">
            <center>
            <table border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Ingrese informacion del Cliente</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Nombre</td>
                        <td><input type="text" name="nombre" value="" /></td>
                    </tr>
                    <tr>
                        <td>Rut (12.345.678-9)</td>
                        <td><input type="text" name="rut" value="" /></td>
                    </tr>
                        <td><input type="reset" value="Reset" /></td>
                        <td><input type="submit" value="Finalizar" /></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
    </body>
</html>