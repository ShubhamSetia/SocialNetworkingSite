package control;
import java1.Question;
import java1.Answer;

public class Post
{
    Dbconnect db = new Dbconnect();
    Question q = new Question();
    Answer a = new Answer();
    public Post()
    {
        //default consructor
    }
    public Post(String userName,String question)
    {
        q.postQuestion(userName,question);
    }
    public void postA(String question, String user_id,String answer)
    {
        a.postAnswer(question, user_id,answer);
    }
}