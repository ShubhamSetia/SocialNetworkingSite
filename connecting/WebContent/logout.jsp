<%@page import="java.util.*" %>

<%session.invalidate();%>
You have logged out. 
<% response.sendRedirect("index.html");%>