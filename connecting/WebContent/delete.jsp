<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="control.Dbconnect" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>delete user</title>
</head>
<body>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%
String email=request.getParameter("email"); 
String password=request.getParameter("password");
Dbconnect db = new Dbconnect();
try{
	int i=db.st.executeUpdate("delete from userdetail where email="+email+" and password="+password);
}
catch(Exception e){
	out.println(e);
}
%>
</body>
</html>