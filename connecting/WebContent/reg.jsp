<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java1.User" %>
    <%@page import="control.Dbconnect" %>
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
String pwd=request.getParameter("password"); 
String gen=request.getParameter("gen"); 
String dob=request.getParameter("dob"); 
sess.setAttribute("gen", gen);
sess.setAttribute("dob", dob);

Dbconnect db = new Dbconnect();
try{
	int i=db.st.executeUpdate("insert into userdetail values ('"+fname+"','"+lname+"','"+email+"',	'"+user+"','"+pwd+"','"+gen+"','"+dob+"')"); 
	User u = new User(fname,lname,email,user,pwd,gen,dob);
	out.println("Registered"); 
	response.sendRedirect("index.html#login");
	}
	catch(Exception e){
		out.println(e);
	}


%>


</body>
</html>