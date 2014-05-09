<%-- 
    Document   : VerVentasACliente
    Created on : 25-04-2014, 04:57:23 PM
    Author     : Javier
--%>

<%@ page import ="java.sql.*" %>
<%
    Statement st = null;
    Class.forName("oracle.jdbc.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:XE",
            "BD", "BD");
    st = con.createStatement();
    ResultSet Cliente = st.executeQuery("SELECT * FROM cliente");
    String RUT;    
    String NombreCliente;
    String ID;
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ver Clientes</title>
    </head>
    <body>
        <h5><%=session.getAttribute("userid")%> <a href='logout.jsp'>Log out</a> </h5>
        <h6></h6>
        <h5><a href='administrador.jsp'>Volver al Menu</a></h5>
        <form method="post" action="mostrarventas.jsp">
            <h3>Ver ventas a clientes</h3>
    <table border="1">
        <thead>
            <tr>
                <th>Rut</th>
                <th>Nombre</th>
                <th>Seleción</th>
            </tr>
        </thead>
        <tbody>
            <%
               int i = 0;
               while(Cliente.next()){
                   ID = Cliente.getString("id_cliente");
                   RUT = Cliente.getString("rut");
                   NombreCliente = Cliente.getString("nombre");
            %>
            <tr>
                <td><%= RUT%></td>
                <td><%= NombreCliente%></td>
                
                <td><input type="checkbox" name=ID id="Code<%= i++%>" value=<%= ID%>/></td>
            </tr>
            <% } %>
        </tbody>
    </table>
            <button type="submit" value="Ver" name="Ver">Ver</button></a>
        </form>
    </body>
</html>

