<%-- 
    Document   : vendedor
    Created on : 25-04-2014, 03:53:44 PM
    Author     : Javier
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vendedor</title>
    </head>
    <body>
        <ul> 
            <li>Menu
                <ul>
                    <li><a href="ingresocliente.jsp">Ingresar Cliente</a></li> 
                    <li><a href="ingresarventa.jsp">Ingresar Venta</a></li>
                </ul> 
            </li>
            <li>Otros
                <ul>
                    <li><a href="misventas.jsp">Mis Ventas</a></li> 
                    <li><a href="VerVentasACliente.jsp">Ver ventas a cliente</a></li> 
                </ul> 
            </li>
        </ul> 
        <ul> <li><%=session.getAttribute("userid")%> <a href='logout.jsp'>Log out</a> </li></ul>
    </body>
       
</html>