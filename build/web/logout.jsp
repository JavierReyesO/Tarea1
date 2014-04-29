<%-- 
    Document   : logout
    Created on : 24-04-2014, 08:39:17 PM
    Author     : Javier
--%>
<%
session.setAttribute("userid", null);
session.invalidate();
response.sendRedirect("index.jsp");
%>
