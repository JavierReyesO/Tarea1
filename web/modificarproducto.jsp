<%-- 
    Document   : modificarproducto
    Created on : 26-04-2014, 06:38:28 PM
    Author     : Javier
--%>

<%@ page import ="java.sql.*" %>
<%
    String Codigo = request.getParameter("ProdCode");
    String CodigoBuscado = request.getParameter("buscar");
    Statement st = null;
    Class.forName("oracle.jdbc.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:XE",
            "BD", "BD");
    st = con.createStatement();
    if(null == Codigo){
        Codigo = CodigoBuscado;
    }
    ResultSet Producto = st.executeQuery("SELECT * FROM producto WHERE id_producto LIKE '"+Codigo+"'");
    if(Producto.next()){
        String Stock = Producto.getString("stock");
        String Desc = Producto.getString("descripcion");
        String Price = Producto.getString("precio");
        String Nombre = Producto.getString("nombre");
        String Cate = Producto.getString("categoria");
        session.setAttribute("Code", Codigo);
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Producto</title>
    </head>
    <body>
        <form action="proc_modificar.jsp">
            <center>
            <table border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Modificar Producto</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Codigo</td>
                        <td><%= Codigo%></td>
                    </tr>
                    <tr>
                        <td>Nombre</td>
                        <td><%= Nombre%></td>
                    </tr>
                    <tr>
                        <td>Cantidad</td>
                        <td><%= Stock%></td>
                    </tr>
                    <tr>
                        <td>Descripcion</td>
                        <td><input type="text" name="desc" value="<%= Desc%>" /></td>
                    </tr>
                    <tr>
                        <td>Categoria</td>
                        <td><input type="text" name="cat" value="<%= Cate%>" /></td>
                    </tr>
                    <tr>
                        <td>Precio</td>
                        <td><input type="text" name="price" value="<%= Price%>" /></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="Guardar Cambios" ></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
    </body>
    <% } %>
</html>
