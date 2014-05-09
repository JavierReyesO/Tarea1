<%-- 
    Document   : compra
    Created on : 25-04-2014, 05:21:24 PM
    Author     : Javier
--%>
<%@page import="oracle.net.aso.i"%>
<%@ page import="java.io.*"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat"%>
<%  
    
    
    
    java.util.Date utilDate = new java.util.Date();
    long lnMilsec = utilDate.getTime();
    java.sql.Date date = new java.sql.Date(lnMilsec);
    java.sql.Time hour = new java.sql.Time(lnMilsec);

    String prod = request.getParameter("prod");    
    String cant = request.getParameter("cant");
    String price = request.getParameter("price");
        
    int precio = Integer.parseInt(price);
    int cantidad = Integer.parseInt(cant);
    int product = Integer.parseInt(prod);
    
    Class.forName("oracle.jdbc.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:XE","BD", "BD");
    Statement st = con.createStatement();
    Statement st2 = con.createStatement();
    Statement st3 = con.createStatement();
    Statement st4 = con.createStatement();
    Statement st5 = con.createStatement();
    Statement st6 = con.createStatement();
        
    String consulta1 = "select * from producto where id_producto ="+product;
    
    String consulta2 = "insert into compra(monto_total, fecha, hora) values("+ cantidad*precio +",'"+date+"','"+hour+"')";
    st2.executeQuery(consulta2);

    ResultSet ciclo = st.executeQuery(consulta1);
    ResultSet productus = st.executeQuery(consulta1);
    productus.next();
    int pricex = Integer.parseInt(price);
    int total_price = pricex*cantidad;
    
    String consulta3= "select MAX(id_compra) from compra";
    ResultSet max_id_buy = st3.executeQuery(consulta3);
    max_id_buy.next();
    int id_compra = max_id_buy.getInt("max(id_compra)");
    String consulta4 = "insert into detalle_compra(id_compra, id_producto,cantidad,precio) values("+id_compra+","+product+","+cantidad+","+total_price+")";
            
    st4.executeQuery(consulta4);
    out.println("<select name='id_p'>");
    while (ciclo.next()){
        int id = ciclo.getInt("id_producto");
        out.println("<option value="+id+">"+cant+" $"+precio+"</option>");  
        }
    out.println("</select>");
                    
                %>
        
    }
    
    
    //ResultSet rs;
    
   
%>