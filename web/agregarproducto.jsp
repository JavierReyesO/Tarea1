<%-- 
    Document   : agregarproducto
    Created on : 26-04-2014, 06:40:47 PM
    Author     : Javier
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ingresar Producto</title>
    </head>
    <body>
        <form method="post" action="a_producto.jsp">
            <center>
            <table border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Ingresar Producto</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Código</td>
                        <td><input type="text" name="cod" value="" /></td>
                    </tr>
                    <tr>
                        <td>Nombre</td>
                        <td><input type="text" name="nombre" value="" /></td>
                    </tr>
                    <tr>
                        <td>Descripción</td>
                        <td><input type="text" name="desc" value="" /></td>
                    </tr>
                    <tr>
                        <td>Categoría</td>
                        <td><input type="text" name="cate" value="" /></td>
                    </tr>
                    <tr>
                        <td>Cantidad</td>
                        <td><input type="text" name="cant" value="" /></td>
                    </tr>
                    <tr>
                        <td>Precio</td>
                        <td><input type="text" name="price" value="" /></td>
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