<%-- 
    Document   : compra
    Created on : 25-04-2014, 05:21:24 PM
    Author     : Javier
--%>

<%@ page import ="java.sql.*" %>
<%
    String prod = request.getParameter("prod");    
    String cant = request.getParameter("cant");
    String price = request.getParameter("price");
    Statement st = null;
    Class.forName("oracle.jdbc.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:XE",
            "BD", "BD");
    st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("INSERT INTO usuario(rut,contrasena,nombre, tipo, comision) values ('" + rut + "','" + pwd + "','" + name + "','Vendedor', 0)");
    
     
    if (i > 0) {
        //session.setAttribute("userid", user);
        //response.sendRedirect("welcome.jsp");
       out.print("Ingreso Exitoso!"+"<a href='administrador.jsp'>Volver a Menu</a>"+ '\n');
    } else {
        //response.sendRedirect("index.jsp");
        out.print("Ingreso Fallido"+"<a href='vendedor.jsp'>Reintentar</a>");
    }
%>
