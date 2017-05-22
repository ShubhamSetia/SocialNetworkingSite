
package control;
import java.sql.*;
public class Dbconnect {
	
    static final String URL = "jdbc:mysql://localhost:3306/record";
    static final String user = "root";
    static final String password = "tayba";
	
	public java.sql.Connection con;
	public Statement st;
	public ResultSet rs;
	public PreparedStatement pstmt;
	
	public Dbconnect(){
        con=null;
        pstmt=null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection(URL,user,password);
        	st= con.createStatement(); 
        }
        catch(ClassNotFoundException | SQLException e){
        	System.out.println(e);
        }

	}
}