<%-- 
    Document   : ingresovendedor
    Created on : 25-04-2014, 04:52:43 PM
    Author     : Javier
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ingresa </title>
    </head>
    <h> <%=session.getAttribute("userid")%><a href='logout.jsp'>Log out</a></h>
    <h></h>
    <h><a href='administrador.jsp'>Volver a Menu</a></h>
    <body>
        <form method="post" action="ingvendedor.jsp">
            <center>   
            <table border="1" width="30%" cellpadding="5">
                <thead>
                    
                    <tr>
                        <th colspan="2">Ingrese informacion del Vendedor</th>
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
                    <tr>
                        <td>Contraseña</td>
                        <td><input type="password" name="contra" value="" /></td>
                    </tr>
                    <tr>
                        <td>Repetir Contraseña</td>
                        <td><input type="password" name="contraRepe" value="" /></td>
                    </tr>
                    <tr>
                        <td><input tyt" value="Reset" /></td>
                        <td><input type="submit" value="Finalizar" /></td>
                    </tr>
                </tbody>  
            </table>  
            </center>
        </form>
    </body>
</html>
