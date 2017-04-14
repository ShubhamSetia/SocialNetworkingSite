<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>User Profile</title>
  
  
  
      <link rel="stylesheet" href="css/style1.css">

  
</head>

<body>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%
HttpSession sess = request.getSession(false); //use false to use the existing session
sess.getAttribute("username");
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/record","root","tayba"); 
Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("select * from userdetail where username='"+sess.getAttribute("username")+"'"); 
/*if(rs.next()){
out.println(rs.getString(1));
out.println(rs.getString(2));
out.println(rs.getString(3));
out.println(rs.getString(4));
//out.println(rs.getString(5));
out.println(rs.getString(6));
out.println(rs.getString(7));
}*/
%>
<div class="ACon">
<div class="Profile">
<div class="Img">
    <div class="overlay">
      <span><img /></span>
    </div>
</div>
<div class="PopUp">Open Profile</div>
<div class="clickPopUp">
<h4><%=sess.getAttribute("username") %></h4>
<h4><%=sess.getAttribute("gen") %></h4>
<h4><%=sess.getAttribute("dob") %></h4>
</div>
</div>
</div>
</body>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js/index1.js"></script>

</body>
</html>