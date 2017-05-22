package java1;
import control.Dbconnect;
import static java.lang.System.out;
import java.sql.SQLException;
import java.util.ArrayList;
public class Discussion 
{
    //default constructor.
    public Discussion() 
    {
    	
    }
    
    //method to fetch all the qusetions to be displayed in connections.
    public ArrayList<Question> fetch() throws SQLException
    {
                Dbconnect db1=new Dbconnect();
                String qSQL="select distinct username,ques from question";
                System.out.println(qSQL);
                db1.pstmt=db1.con.prepareStatement(qSQL);
                db1.rs=db1.pstmt.executeQuery();
                ArrayList<Question> qids=new ArrayList<Question>();
                while(db1.rs.next())
                {
                    qids.add(new Question(db1.rs.getString("username"),db1.rs.getString("ques")));
                }
                return qids;
                
    }
    
}