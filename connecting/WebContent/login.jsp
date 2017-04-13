<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
HttpSession sess = request.getSession(); 
sess.setAttribute("username", username);
String pwd=request.getParameter("pwd"); 
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/record","root","tayba"); 
Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("select * from userdetail where username='"+username+"'"); 

if(!rs.next()){
	
	
	response.sendRedirect("index.html#signup");
	{%>
	<script>alert("Register yourself");</script>
	
	<%}
}
else{
{ 
if(rs.getString(5).equals(pwd)) 
{ 
out.println("welcome"+username);
response.sendRedirect("userprofile.jsp");
{%>
<a href="logout.jsp"><b>Logout</b></a>
<%}
} 
else 
{ 
out.println("Invalid password try again"); 
{%>
<a href="index.html#login"><b>Home</b></a>
<%}
} 
} 
 
}
%>

</body>
</html>