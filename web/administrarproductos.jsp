<%-- 
    Document   : administrarproductos
    Created on : 25-04-2014, 04:53:22 PM
    Author     : Javier
--%>

<%@ page import ="java.sql.*" %>
<%
    session.setAttribute("userid", null);
    session.setAttribute("pwd", null);
    String buscado = request.getParameter("buscar");
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
               while(Productos.next()){
                   Codigo = Productos.getString("id_producto");
                   Nombre = Productos.getString("nombre");
                   Cantidad = Productos.getString("stock");                   
            %>
            <tr>
                <td><%= Codigo%></td>
                <td><%= Nombre%></td>
                <td><%= Cantidad%></td>
                <td><input type="checkbox" name="Select" value="ON" /></td>
            </tr>
            <% } %>
        </tbody>
    </table>
        <a href="agregarproducto.jsp"> 
            <button type="button" value="agregar" name="agregar">Agregar </button></a>
        <input type="submit" value="modificar" name="modificar" />
    </body>
</html>
