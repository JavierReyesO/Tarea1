<%-- 
    Document   : cliente
    Created on : 25-04-2014, 05:21:51 PM
    Author     : Javier
--%>

<%@ page import ="java.sql.*" %>
<%
    String name = request.getParameter("nombre");
    String rut = request.getParameter("rut");
    Statement st = null;
    Class.forName("oracle.jdbc.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:XE",
            "BD", "BD");
    st = con.createStatement();
    int i = 0;
    
    i = st.executeUpdate("INSERT INTO cliente(rut,nombre) values ('" + rut + "','" + name + "')");
     
    if (i > 0) {
        
       out.print("Ingreso Exitoso!"+"<a href='administrador.jsp'>Volver a Menu</a>"+ '\n');
    } else {
        
        out.print("Ingreso Fallido"+"<a href='vendedor.jsp'>Reintentar</a>");
    }
%>
