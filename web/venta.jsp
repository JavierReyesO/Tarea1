<%-- 
    Document   : venta
    Created on : 25-04-2014, 05:21:35 PM
    Author     : Javier
--%>
<%@ page import="java.io.*"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.Date" %>

<%
    String nombre = (String) session.getAttribute("userid");
    String name;
    String rut;
    java.util.Date utilDate = new java.util.Date(); //fecha actual
    long lnMilisegundos = utilDate.getTime();
    java.sql.Date date = new java.sql.Date(lnMilisegundos);
    java.sql.Time hour = new java.sql.Time(lnMilisegundos);

    String msg_error = "<p>&nbsp;</p>";
    
    if (request.getParameter("submit") != null) {

        String cliente = request.getParameter("cliente");
        String prod = request.getParameter("prod");
        String cant = request.getParameter("cant");

        int producto = Integer.parseInt(prod);
        int cantidad = Integer.parseInt(cant);

        Connection con = null;
        try {
            Class.forName("oracle.jdbc.OracleDriver");
            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "BD", "BD");
            
            Statement st0 = con.createStatement();
            Statement st1 = con.createStatement();
            Statement st2 = con.createStatement();
            Statement st3 = con.createStatement();
            Statement st4 = con.createStatement();
            
            
            String consulta0 = "select * from cliente";
            ResultSet clientes = st0.executeQuery(consulta0);
            
            while(clientes.next()){
                name  = clientes.getString("nombre");
                rut = clientes.getString("rut");
            }
            

            String consulta1 = "select max(id_venta) from venta";
            ResultSet max_id_sell = st1.executeQuery(consulta1);
            max_id_sell.next();
            int id_sell = max_id_sell.getInt("max(id_venta)");
            if (id_sell != 0) {
                id_sell = id_sell + 1;
            }

            String consulta2 = "select max(id_detalle) from detalle_venta";
            ResultSet max_id_detail = st2.executeQuery(consulta2);
            max_id_detail.next();
            int id_detail = max_id_detail.getInt("max(id_detalle)");
            if (id_detail != 0) {
                id_detail = id_detail + 1;
            }

            String consulta3 = "select id_cliente from cliente where nombre=" + cliente;
            ResultSet id_cliente_rs = st3.executeQuery(consulta3);
            id_cliente_rs.next();
            int id_cliente = id_cliente_rs.getInt("id_cliente");

            String consulta4 = "select id_usuario from usuario where nombre="+ nombre ;
            ResultSet id_usuario_rs = st4.executeQuery(consulta4);
            id_usuario_rs.next();
            int id_usuario = id_usuario_rs.getInt("id_usuario");

            String consulta5 = "INSERT INTO venta VALUES ('" + id_cliente + "','" + id_usuario + "','" + producto * cantidad + "','" + date + "','" + hour + "')";
            con.createStatement().execute(consulta5);
            
            String consulta6 = "INSERT INTO detalle_venta VALUES("+id_sell+"," + prod +"," + cant + "')";
            con.createStatement().execute(consulta6);

        } catch (SQLException ex) {
            msg_error = "Exception: " + ex.getMessage();
        } finally {
            if (con != null) {
                con.close();
            }
        }
    }
%>