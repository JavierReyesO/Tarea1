<%-- 
    Document   : succes
    Created on : 24-04-2014, 08:38:24 PM
    Author     : Javier
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Administrador</title>
    </head>
    <body>
        <ul> 
            <li>Menu
                <ul>
                    <li><a href="ingresovendedor.jsp">Ingresar Vendedor</a></li> 
                    <li><a href="ingresocliente.jsp">Ingresar Cliente</a></li> 
                    <li><a href="ingresarcompra.jsp">Ingresar Compra</a></li>
                    <li><a href="ingresarventa.jsp">Ingresar Venta</a></li>
                </ul> 
            </li>
            <li>Otros
                <ul>
                    <li><a href="administrarproductos.jsp">Administrar Productos</a></li> 
                    <li><a href="VerVentasACliente.jsp">Ver ventas a clientes</a></li> 
                </ul> 
            </li> 
        </ul>
        <ul> <li><%=session.getAttribute("userid")%> <a href='logout.jsp'>Log out</a> </li></ul>
    </body>       
</html>