<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registeration</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
String user=request.getParameter("username"); 
HttpSession sess = request.getSession(); 
sess.setAttribute("username", user);
String fname=request.getParameter("fname"); 
String lname=request.getParameter("lname"); 
String email=request.getParameter("email"); 
String pwd=request.getParameter("pwd"); 
String gen=request.getParameter("gender"); 
String dob=request.getParameter("dob"); 

Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/record","root","tayba");
Statement st= con.createStatement(); 
ResultSet rs; 

String EMAIL_REGEX = "^[\\w-_\\.+]*[\\w-_\\.]\\@([\\w]+\\.)+[\\w]+[\\w]$";
Boolean b = email.matches(EMAIL_REGEX);
if(b==true){
	out.println("Incorrect email format");
	response.sendRedirect("index.html#signup");
}
else{
	try{
int i=st.executeUpdate("insert into userdetail values ('"+fname+"','"+lname+"','"+email+"',	'"+user+"','"+pwd+"','"+gen+"','"+dob+"')"); 

out.println("Registered"); 

}
catch(SQLException e){
	response.sendRedirect("index.html#signup");
	out.println(e);
}
}
%>

<a href="index.html#login">Home</a>
</body>
</html>