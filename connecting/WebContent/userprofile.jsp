<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="control.Dbconnect" %>    
<%@page import="java1.User" %>
    
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>User Profile</title>
  <link rel="stylesheet" href="css/style1.css">
</head>

<body>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%
	HttpSession sess = request.getSession(false);//use false to use the existing session
	response.setHeader("Cache-Control", "no-cache"); //Forces caches to obtain a new copy of the page from the origin server
	response.setHeader("Cache-Control", "no-store"); //Directs caches not to store the page under any circumstance
	response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
	response.setHeader("Pragma", "no-cache"); 
	String usr = (String)sess.getAttribute("username");
	if(usr == null){
		response.sendRedirect("index.html");
	}
	
%>
 <a href="Discussion.jsp"><button type="button">view post</button></a> 
  <a href="friendsDisplay.jsp"><button type="button">View friends</button> </a>
  <a href="Message.jsp"><button type="button">Messages</button></a>
  
  <a href="logout.jsp"><button type="button">Logout</button> </a>
 <a href="deleteuser.html"><button type="button">Delete User</button></a> 
<div class="ACon">
<div class="Profile">
<div class="Img">
<div class="overlay">
      <span><img /></span>
</div>
</div>
<div class="PopUp">Open Profile</div>
<div class="clickPopUp">

<h4><%=sess.getAttribute("username") %></h4>
<h4><%=sess.getAttribute("gender") %></h4>
<h4><%=sess.getAttribute("dob") %></h4>
</div>
</div>
</div>

</body>
  <script src='js/jquery.min.js'></script>

    <script src="js/index1.js"></script>

</body>
</html>