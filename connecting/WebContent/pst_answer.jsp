
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="control.Post"%>
<%@page import="control.Dbconnect"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Post Answer</title>
</head>
<body>
   
    
<%     	HttpSession sess = request.getSession(false);
		//String question=(String)sess.getAttribute("question");
		
    	//out.print(""+question);
    	String question = request.getParameter("question");
     	System.out.println(question);
    	String userName = (String)session.getAttribute("username");
       	String answer = request.getParameter("answers");
       	
            if(!userName.equals(null))
            {               
                Post pAns=new Post();
                pAns.postA(question, userName, answer);
                //System.out.println(answer);             
            }
           
            getServletContext().getRequestDispatcher("/Discussion.jsp").forward(request, response);
%>
</body>
</html>