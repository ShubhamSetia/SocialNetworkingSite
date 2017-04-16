<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java1.message" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%

HttpSession sess = request.getSession(false);//use false to use the existing session
String sid =(String)sess.getAttribute("username");
String receiver =request.getParameter("rcv"); 
String message = request.getParameter("msg");
message m = new message();
m.sendMessage(sid,receiver,message);
out.println("message successfully sent!");
%>


</body>
</html>