<%@page import="java.sql.SQLException"%>
<%@page import="control.Dbconnect"%>
<!DOCTYPE html>
<%
    String SQL = null;
    Dbconnect db = new Dbconnect();
%>
<html>
    <head>
        <title>Post Answer</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="style.css">
        <link href='http://fonts.googleapis.com/css?family=Indie+Flower' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" type="text/css" href="style.css">
        <link href='http://fonts.googleapis.com/css?family=Indie+Flower' rel='stylesheet' type='text/css'>
        <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=PT+Sans:400,700'>
        <link rel="stylesheet" href="assets/css/reset.css">
        <link rel="stylesheet" href="assets/css/supersized.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="style.css">
        <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700' rel='stylesheet' type='text/css' />
	<script type="text/javascript" src="js/modernizr.custom.79639.js"></script> 
	<noscript><link rel="stylesheet" type="text/css" href="css/noJS.css" /></noscript>
 
    </head>
    <body>
        <div class="page-container">
         <%
                    //HttpSession sess = request.getSession(false);
                    String question =request.getParameter("question");
                    out.println(question);
                    %> 
                <form action="pst_answer.jsp">
                    <h1>Post New Answer </h1><br>
                    <input type="text" name="answers" placeholder="Enter your Answer" /><br>
                 <!--  <select name="qid"  style="width:310px;"> -->   
                   <!-- <option>select one option</option> --> 
                                 
                    

                <% //out.println("<button type=\"submit\" name=\"question\" value= '"+ question+ "'>Post</button>");%>
                <% out.println( "</div ><button type='submit' name='question' value='"+question+"'>Post </button>"+"</div>");%>
                </form>   
                <a href="Discussion.jsp"><button>Cancel</button> </a>                             
        </div>
    </body>
</html>