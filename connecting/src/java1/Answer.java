package java1;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import control.Dbconnect;

public class Answer 
{
    //private Integer QID;
    //static int AiD;
    //int aID;
    String answer,question;
    private String user;
    private Timestamp answered;
    
    public Answer()
	{
		//default constructor
	}
    
    public Answer(/*Integer QID,*/ String answer, String userName, Timestamp answered) 
    {
        //this.QID = QID;
        this.answer = answer;
        this.user = userName;
        this.answered = answered;
    }
    /*public Integer getQID()
    {
        return QID;
    }

    public void setQID(Integer QID)
    {
        this.QID = QID;
    }*/

    public String getAnswer()
    {
        return answer;
    }

    public void setAnswer(String answer)
    {
        this.answer = answer;
    }

    public String getUser()
    {
        return user;
    }

    public void setUser(String userName)
    {
        this.user = userName;
    }

    public Timestamp getAnswered()
    {
        return answered;
    }
    public void setAnswered(Timestamp answered)
    {
        this.answered = answered;
    }
    
    public Boolean postAnswer(String question,String userName,String answer)
    {
        Dbconnect db = new Dbconnect();
        try
        {
             String SQL = "INSERT INTO answer(question, username, answer) VALUES ('" + question + "', '" + userName + "', '" + answer + "')";
             db.pstmt = db.con.prepareStatement(SQL);
             try
             {
                db.pstmt.executeUpdate();
                return true;
             }
             catch (SQLException e)
             {
                return false;
             }
        }
        catch(SQLException e)
        {
           return false; 
        }
        finally
        {
            try
            {
                db.con.close();
            }
            catch (SQLException e)
            {
                return false;
            }
        }
    }
}
