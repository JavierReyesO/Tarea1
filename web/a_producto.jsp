<%-- 
    Document   : a_producto
    Created on : 30-04-2014, 01:48:02 AM
    Author     : Javier
--%>

<%@ page import ="java.sql.*" %>
<%
    String Cod = request.getParameter("cod");
    String Nombre = request.getParameter("nombre");
    String Desc = request.getParameter("desc");
    String Cate = request.getParameter("cate");
    String Cant = request.getParameter("cant");
    String Price = request.getParameter("price");
    Statement st = null;
    Class.forName("oracle.jdbc.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:XE",
            "BD", "BD");
    st = con.createStatement();
    int i = 0;
    
    i = st.executeUpdate("INSERT INTO producto values ('"+ Cod +"','" + Cant + "','" + Desc + "','" + Cate + "','" + Price + "','" + Nombre + "')");
     
    if (i > 0) {
        
       out.print("Ingreso Exitoso!"+"<a href='administrador.jsp'>Volver a Menu</a>"+ '\n');
    } else {
        
        out.print("Ingreso Fallido"+"<a href='vendedor.jsp'>Reintentar</a>");
    }
%>