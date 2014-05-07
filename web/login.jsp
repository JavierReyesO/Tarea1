<%-- 
    Document   : login
    Created on : 24-04-2014, 08:36:01 PM
    Author     : Javier
--%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%
    String userid = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    String type1 = "Administrador";
    String type2 = "Vendedor";
    Statement st = null;
    Class.forName("oracle.jdbc.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:XE",
            "BD", "BD");
    st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("SELECT * FROM BD.USUARIO WHERE NOMBRE='"+userid+"' AND CONTRASENA='"+pwd+"'");
    if (rs.next()) {
        session.setAttribute("userid", userid);
        String Tipo = rs.getString("TIPO");
        session.setAttribute("tipo", Tipo);
        if(type1.equals(Tipo)){
            response.sendRedirect("administrador.jsp");
        }
        if(type2.equals(Tipo)){
            response.sendRedirect("vendedor.jsp");
        }
    } else {
        out.println("Usuario/Contraseña Inválida <a href='index.jsp'>Reintentar</a>");
    }
%>
