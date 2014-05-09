<%-- 
    Document   : misventas
    Created on : 25-04-2014, 05:05:34 PM
    Author     : Javier
--%>

<%@ page import ="java.sql.*" %>
<%
    String idUsuario = String.valueOf(session.getAttribute("ID"));
    Statement st = null;
    Class.forName("oracle.jdbc.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:XE",
            "BD", "BD");
    st = con.createStatement();
    ResultSet Ventas = st.executeQuery("SELECT * FROM VentasVendedor WHERE id_usuario = '"+idUsuario+"'");
    String RUT;
    String IdProducto;
    String NombreProducto;
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mis Ventas</title>
    </head>
    <body>
        <h5><%=session.getAttribute("userid")%> <a href='logout.jsp'>Log out</a> </h5>
        <h6></h6>
        <h5><a href='vendedor.jsp'>Volver al Menu</a></h5>
        <h3>Mis Ventas</h3>     
    <table border="1">
        <thead>
            <tr>
                <th>Código Producto</th>
                <th>Nombre</th>
                <th>Rut Usuario</th>
            </tr>
        </thead>
        <tbody>
            <%
               while(Ventas.next()){
                   IdProducto = Ventas.getString("id_producto");
                   NombreProducto = Ventas.getString("nombre");
                   RUT = Ventas.getString("stock");                   
            %>
            <tr>
                <td><%= IdProducto%></td>
                <td><%= NombreProducto%></td>
                <td><%= RUT%></td>
            </tr>
            <% } %>
        </tbody>
    </table>
    </body>
</html>
