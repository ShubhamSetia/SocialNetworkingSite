<%@page import="java.util.*" %>

<!--<%session.invalidate();%>-->

<% request.getSession().invalidate();%>

You have logged out. 
<% response.sendRedirect("index.html");
//HttpSession sess = request.getSession(false);
//String usr = (String)sess.getAttribute("username");
//System.out.println(usr);%>