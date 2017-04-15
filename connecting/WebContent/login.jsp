<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="control.Dbconnect" %>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%
	String username=request.getParameter("usr"); 
	String pwd=request.getParameter("pwd"); 
	HttpSession sess = request.getSession(); 
	sess.setAttribute("username", username);
	
	Dbconnect db = new Dbconnect();

	db.rs=db.st.executeQuery("select * from userdetail where username='"+username+"'"); 
	
	if(!db.rs.next()){
		response.sendRedirect("index.html#signup");
		{%>
			<script>alert("Register yourself");</script>
		<%}
	}
	else{
		
		if(db.rs.getString(5).equals(pwd)) 
		{ 
			out.println("welcome"+username);
			sess.setAttribute("gender", db.rs.getString("gender"));
			sess.setAttribute("dob", db.rs.getString("dob"));
			response.sendRedirect("userprofile.jsp");
			//response.sendRedirect("friendsDisplay.jsp");
			//response.sendRedirect("messagedisplay.jsp");
		} 
		else 
		{ 
			out.println("Invalid password try again"); 
			{%>
				<a href="index.html#login"><b>Home</b></a>
			<%}
		} 
}
%>

</body>
</html>