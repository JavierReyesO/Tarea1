<%-- 
    Document   : administrarproductos
    Created on : 25-04-2014, 04:53:22 PM
    Author     : Javier
--%>

<%@ page import ="java.sql.*" %>
<%
    Statement st = null;
    Class.forName("oracle.jdbc.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:XE",
            "BD", "BD");
    st = con.createStatement();
    ResultSet Productos = st.executeQuery("SELECT id_producto, nombre, stock FROM PRODUCTO");
    String Cantidad;
    String Codigo;
    String Nombre;
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Administrar Productos</title>
    </head>
    <body>
        <form method="post" action="modificarproducto.jsp">
        <h3>Administrar Productos</h3>
        <h4><input type="text" name="buscar" value="" />
    <table border="1">
        <thead>
            <tr>
                <th>Código</th>
                <th>Nombre</th>
                <th>Cantidad</th>
                <th>Seleción</th>
            </tr>
        </thead>
        <tbody>
            <%
               int i = 0;
               while(Productos.next()){
                   Codigo = Productos.getString("id_producto");
                   Nombre = Productos.getString("nombre");
                   Cantidad = Productos.getString("stock");                   
            %>
            <tr>
                <td><%= Codigo%></td>
                <td><%= Nombre%></td>
                <td><%= Cantidad%></td>
                <td><input type="checkbox" name=ProdCode id="CheckBox<%= ++i %>" value=<%= Codigo%> /></td>
            </tr>
            <% } %>
        </tbody>
    </table>
        <a href="agregarproducto.jsp"> 
            <button type="button" value="agregar" name="agregar">Agregar </button></a>
        
            <button type="submit" value="Modificar" name="modificar" >Modificar</button>
        </form>
    </body>
</html>
