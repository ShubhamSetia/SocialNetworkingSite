<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>userprofile</title>
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
if(rs.next()){
out.println(rs.getString(1));
out.println(rs.getString(2));
out.println(rs.getString(3));
out.println(rs.getString(4));
//out.println(rs.getString(5));
out.println(rs.getString(6));
out.println(rs.getString(7));
}
%>
</body>
</html>