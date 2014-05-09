<%-- 
    Document   : mostrarventas
    Created on : 08-05-2014, 11:31:37 PM
    Author     : Javier
--%>
<%@ page import ="java.sql.*" %>
<%
    String Codigo = request.getParameter("ID");
    Statement st = null;
    Class.forName("oracle.jdbc.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:XE",
            "BD", "BD");
    st = con.createStatement();
    ResultSet Venta = st.executeQuery("SELECT * FROM VentasClientes WHERE id_cliente LIKE '"+Codigo+"'");
    String RUT;
    String IdProducto;
    String NombreProducto;
        
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ver Ventas</title>
    </head>
    <body>
        <h5><%=session.getAttribute("userid")%> <a href='logout.jsp'>Log out</a> </h5>
        <h6></h6>
        <h5><a href='administrador.jsp'>Volver al Menu</a></h5>
        <h3>Ver Ventas</h3>
    <table border="1">
        <thead>
            <tr>
                <th>Código</th>
                <th>Nombre</th>
                <th>Rut Cliente</th>
            </tr>
        </thead>
        <tbody>
            <%
               int i = 0;
               while(Venta.next()){
                   RUT = Venta.getString("rut");
                   IdProducto = Venta.getString("id_producto");
                   NombreProducto = Venta.getString("nombre");                   
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

