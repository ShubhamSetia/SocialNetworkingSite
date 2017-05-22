package java1;

import java.sql.Timestamp;
import control.Dbconnect;
import java.sql.SQLException;

public class Question 
{
	//static int Qid=1; 
	//int qID;
	String userName,question;
	public Question()
	{
		//default constructor
	}
	public Question(String userName,String question)
	{
	        this.userName=userName;
	        
	        this.question = question;
	}

    public String getUserName() 
    {
        return userName;
    }

    public void setUserName(String userName) 
    {
        this.userName = userName;
    }
    
    /*public int getQID() 
    {
        return qID;
    }

    public void setQID(int QID)
    {
        this.qID = QID;
    }
    */

    public String getQuestion()
    {
         return question;
    }
  
    public void setQuestion(String question)
    {
         this.question = question;
    }
    
    public boolean postQuestion(String userName,String question)
    {
    	Dbconnect db = new Dbconnect ();
    	try
    	{   
    		String SQL = "insert into question(username,ques) values ('" + userName + "','" + question + "')";
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
