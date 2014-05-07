<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : proc_modificar
    Created on : 01-05-2014, 01:43:15 PM
    Author     : Javier
--%>

<%@page import="java.sql.*"%>
<%
    int PCodigo = Integer.valueOf((String)session.getAttribute("Code"));
    String Desc = request.getParameter("desc");
    String Cat = request.getParameter("cat");
    int Precio = Integer.parseInt(request.getParameter("price"));
    Statement st = null;
    Class.forName("oracle.jdbc.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:XE",
            "BD", "BD");
    st = con.createStatement();
    int i = st.executeUpdate("UPDATE producto SET descripcion='"+Desc+"', "
            + "categoria='"+Cat+"', precio="+Precio+" "
            + "WHERE id_producto="+PCodigo+"");

    if (i > 0) {
        
       out.print("Modificado Exitoso!"+"<a href='administrarproductos.jsp'>Volver a Menu</a>"+ '\n');
    } else {
        
        out.print("Modificado Fallido"+"<a href='modificarproducto.jsp'>Reintentar</a>");
    }
    
%>
