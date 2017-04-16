package control;
import java.sql.*;
public class Dbconnect {
	
	public java.sql.Connection con;
	public Statement st;
	public ResultSet rs;
	
	
	public Dbconnect(){
	try{
		Class.forName("com.mysql.jdbc.Driver"); 
		java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/record","root","tayba"); 
		st= con.createStatement(); 
	}
	catch(ClassNotFoundException | SQLException e){
		System.out.println(e);
	}

	}
}
