package java1;
import java.sql.*;
import control.Dbconnect;

public class message 
{
    public int MID;
    public String SID;
    public String RID;
    public String message;
    // default constructor.
    public message()
    {
        
    }
    public message(String SID , String RID,String message,int MID)
    {
        this.SID=SID;
        this.MID = MID;
        this.RID = RID;
        this.message = message;
    }

    public String getSID() 
    {
        return SID;
    }

    public void setSID(String SID) 
    {
        this.SID = SID;
    }
    
    public String getRID() 
    {
        return RID;
    }

    public void setRID(String RID)
    {
        this.RID = RID;
    }
    
    
    public int getMID() 
    {
        return MID;
    }

    public void setMID(int MID)
    {
        this.MID = MID;
    }
    
    public String getMessage() 
    {
        return message;
    }

    public void setMessage(String message)
    {
        this.message = message;
    }
    //methdo to send a message.
    public void sendMessage(String sid,String rid, String mesg)
    {
    	try{
    			Dbconnect d = new Dbconnect();
    			int i=d.st.executeUpdate("insert into msg values ('"+sid+"','"+rid+"','"+mesg+"')"); 
    		}
    	catch(Exception e){
    			System.out.println(e);
    		}
    	
    
    }
    
    public void receiveMessage(String sid){
    	
    try{
    	  
    	Dbconnect d = new Dbconnect();
    	d.rs=d.st.executeQuery("select * from msg where sender='"+SID+"'"); 
    	
    }	
    catch(Exception e){
  	  System.out.println(e);
    }
    
    }
    
    public void sentMessage(String sid){
      	
        try{
        	  
        	Dbconnect d = new Dbconnect();
        	d.rs=d.st.executeQuery("select * from msg where receiver='"+SID+"'"); 
        	while(d.rs.next()){
      		  	System.out.println(d.rs.getString(1)+" messages "+d.rs.getString(2)+" that "+d.rs.getString(3));
        	}
        }	
        catch(Exception e){
      	  System.out.println(e);
        }
        }
}

