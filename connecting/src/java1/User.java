package java1;

public class User 
	{
		
		private String f_name; 
		private String l_name; 
		private String email;
		private String username;
		private String password;
		private String gender;
		private String date_of_birth;
		
	    public User(String fname,String lname,String email,String username,String password,String gender,String dob){
	        	this.f_name = fname;
	        	this.l_name=lname;
	        	this.email=email;
	        	this.username=username;
	        	this.password = password;
	        	this.gender=gender;
	        	this.date_of_birth = dob;
	        }
	        public User(){}
	    //getter and setter methods.
	   
	        
		public String getUser_id() 
		{
			return username;
		}
		public void setUser_id(String username) 
		{
			this.username = username;
		}
		public String getFirst_name()
		{
			return f_name;
		}
		public void setFirst_name(String first_name) 
		{
			this.f_name = first_name;
		}
		
		public String getLast_name() 
		{
			return l_name;
		}
		public void setLast_name(String last_name)
		{
			this.l_name = last_name;
		}
		
		
		public String getPassword()
		{
			return password;
		}
		public void setPassword(String password)
		{
			this.password = password;
		}
		
		public String getGender() 
		{
			return gender;
		}
		public void setGender(String gender) 
		{
			this.gender = gender;
		}
				public String getDate_of_birth() 
		{
			return date_of_birth;
		}
		public void setDate_of_birth(String date_of_birth)
		{
			this.date_of_birth = date_of_birth;
		}
		public String getemail(String email) 
		{
			return email;
		}
		public void setemail(String email) 
		{
			this.email = email;
		}
		
}
