<%-- 
    Document   : ingresarventa
    Created on : 25-04-2014, 04:56:55 PM
    Author     : Javier
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ingresar Venta</title>
    </head>
    <body>
        <form method="post" action="venta.jsp">
            <center>
            <table border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Ingresar Venta</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Cliente</td>
                        <td><input type="text" name="cliente" value="" /></td>
                    </tr>
                    <tr>
                        <td>Producto</td>
                        <td><input type="text" name="prod" value="" /></td>
                    </tr>
                    <tr>
                        <td>Cantidad</td>
                        <td><input type="text" name="cant" value="" /></td>
                    </tr>
                    <tr>                        
                        <td><input type="reset" value="Reset" /></td>
                        <td><input type="submit" value="Finalizar" /></td>
                    </tr>                    
                </tbody>
            </table>
            </center>
        </form>
    </body>
</html>
