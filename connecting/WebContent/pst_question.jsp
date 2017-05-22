<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="control.Post"%>
<%@page import="control.Dbconnect"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Post Question</title>
</head>
<body>
<%
			String userName = (String)session.getAttribute("username");
         	String question = (String)request.getParameter("Questions");
         	if(!userName.equals(null) && !question.equals(null))
        	{               
            	Post pQues=new Post(userName,question);
            	//Post pQues=new Post(userName,question);
        	}
        	else
        	{
            	out.println("<script>alert('Error Posting the Question');</script>");
        	}
        	getServletContext().getRequestDispatcher("/Discussion.jsp").forward(request, response);
%>
</body>
</html>