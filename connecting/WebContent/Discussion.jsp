<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java1.Discussion"%>
<%@page import="java1.Question"%>

<%@page import="java.util.ArrayList"%>
<%@page import="control.Dbconnect"%>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>View Post</title>
    <link rel="stylesheet" type="text/css" href="css/discussion.css">
    <link rel="stylesheet" type="text/css" href="css/main.css">
		<link href="css/style_1.css" type="text/css" rel="stylesheet"/>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300' rel='stylesheet' type='text/css'>
    <style>
        #paddings
        {
            margin-top:100px;
            margin-bottom: 10px;
        }
    </style>
</head>
<body background="chat.jpg">
<%	HttpSession sess = request.getSession(false);
	response.setHeader("Cache-Control", "no-cache"); //Forces caches to obtain a new copy of the page from the origin server
	response.setHeader("Cache-Control", "no-store"); //Directs caches not to store the page under any circumstance
	response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
	response.setHeader("Pragma", "no-cache");
	String usr = (String)sess.getAttribute("username");
	if(usr == null){
		response.sendRedirect("index.html");
	} 
%>


    <div id="nav">
		<ul><li><a href="userprofile.jsp"><button>User Profile</button></a></li>
			<li><a href="logout.jsp"><button>Logout</button></a></li>
		</ul>
	</div>

    <div id="paddings">
        
    </div>
<%
                Dbconnect db1= new Dbconnect();
                Discussion dis= new Discussion();
                ArrayList<Question> a1 = new ArrayList<Question>();
                a1 = dis.fetch();
                int i; //returns arraylist of questions.
                out.println("<center>");
                out.println("<a href=\"PostQues.html\"><button>Post Question</button></a>");
                Question a = new Question();
                for(i=0;i<a1.size();i++)
                {   
                    a=a1.get(i);
                    
                    out.println("<div id=\"question\">"+a.getQuestion() + "<div id=\"left\">" + a.getUserName()); 
                	out.println( "</div ><form action='PostAnswer.jsp'><button type='submit' name='question' value='"+a.getQuestion()+"'>Post Answer</button></form>"+"</div>");                   
                    String aSQL="select distinct username,answer from answer where question='"+a.getQuestion()+"'";
                    db1.pstmt=db1.con.prepareStatement(aSQL);
                    db1.rs=db1.pstmt.executeQuery();
                    while(db1.rs.next())
	 				{
	 					out.println("<div id=\"answer\">"+db1.rs.getString("answer")+"<div id=\"left\">" + db1.rs.getString("username") + "</div>"+"</div>");
	 				}
             	}
               out.println("</center>");
%>

<div id="paddings">
    
</div>
<center>

</center>
</body>
</html>