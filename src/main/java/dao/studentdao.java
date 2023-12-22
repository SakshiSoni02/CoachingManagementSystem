package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import bean.studentbean;




public class studentdao {

	static Connection con;
	static Connection connect()
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/coaching","root","");
			
		} catch (Exception e) 
		{

			e.printStackTrace();
		}
		return con;
	}
	
	public int addData(studentbean pd)
	{
	
		int status=0,gen;
		con= connect();
		try {
		Statement st = con.createStatement();
		PreparedStatement stmt=con.prepareStatement("insert into studentregistration(name,contact,email,city,course,fees,pass) values (?,?,?,?,?,?,?)");  
		stmt.setString(1, pd.getName());
		stmt.setLong(2, pd.getContact());
		stmt.setString(3, pd.getEmail());
		stmt.setString(4, pd.getCity());
		stmt.setString(5, pd.getCourse());
		stmt.setInt(6, pd.getFees());
		stmt.setString(7, pd.getPass());;
	
		status = stmt.executeUpdate();
		
		}catch(Exception e) {
			e.printStackTrace();
		}

		return status;

	}
	public static studentbean getDatabyId(String email)
	{
		con= connect();
		studentbean  ub=null;
		  try {
			  
				
				PreparedStatement st = con.prepareStatement("SELECT * FROM studentregistration WHERE email =? ");
				st.setString(1,email);
		    	
				ResultSet r= st.executeQuery();
				
				ub=new studentbean();
				while(r.next())
				{
					
					ub.setId(r.getInt("id"));
					ub.setName(r.getString("name"));
					ub.setEmail(r.getString("email"));
					ub.setAddress(r.getString("address"));
					ub.setCity(r.getString("city"));
					ub.setDob(r.getString("dob"));
					ub.setContact(r.getLong("contact"));
					ub.setPin(r.getInt("pin"));
					ub.setFname(r.getString("fname"));
					ub.setCollege(r.getString("college"));
					ub.setUgcourse(r.getString("ugcourse"));
					ub.setFees(r.getInt("fees"));
					ub.setCourse(r.getString("course"));
					ub.setGender(r.getString("gender"));
					ub.setYop(r.getString("yop"));
					ub.setGrade(r.getFloat("grade"));
				}}catch(Exception e) {
						e.printStackTrace();	
						}
		  return ub;
	}
	
	public  int update_Details(studentbean sb , String email)
	{
		int status=0;
		con= connect();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/coaching","root","");
			PreparedStatement stmt=con.prepareStatement("update studentregistration set name=?,fname=?,dob=?,gender=?,contact=?,address=?,city=?,pin=?,ugcourse =?,college=?,yop=?,grade=? where email=?"); 
			stmt.setString(1, sb.getName());
			stmt.setString(2, sb.getFname());
			stmt.setString(3, sb.getDob());
			stmt.setString(4, sb.getGender());
			stmt.setLong(5, sb.getContact());
			stmt.setString(6, sb.getAddress());
			stmt.setString(7, sb.getCity());
			stmt.setInt(8,sb.getPin());
			stmt.setString(9, sb.getUgcourse());
			stmt.setString(10, sb.getCollege());
			stmt.setString(11, sb.getYop());
			stmt.setFloat(12, sb.getGrade());
			stmt.setString(13, email);
			status = stmt.executeUpdate();
        } catch (Exception e) 
		{
			e.printStackTrace();
		}
		
		return status;
	}
	
	public static List <studentbean> ShowCircular()
	{
	
			con=connect();
			List<studentbean> list=new ArrayList<>();
			
			
		    try {
		    	Statement st =  con.createStatement();
				ResultSet r= st.executeQuery("select * from circular where dflag=0 and showcircular=1");
				while(r.next())
				{
					studentbean ub=new studentbean();
						ub.setId(r.getInt("id"));
					ub.setCtitle(r.getString("title"));
					ub.setCircular(r.getString("description"));
					 
					 
					 
					
					list.add(ub);
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return  list;
		}
	
	
	public static String ShowCourse(studentbean sb,String email)
	{
	
			con=connect();
			String s= null;
		    try {
		    	Statement st =  con.createStatement();
				ResultSet r= st.executeQuery("select course from studentregistration where email ="+email);
				while(r.next())
				{
					
					s= r.getString("course");
					
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		   
			return s;
		}
	
	public static studentbean getCourse(String email)
	{
		con= connect();
		studentbean  ub=null;
		  try {
			  
				
				PreparedStatement st = con.prepareStatement("SELECT course FROM studentregistration WHERE email =? ");
				st.setString(1,email);
		    	
				ResultSet r= st.executeQuery();
				
				ub=new studentbean();
				while(r.next())
				{
					ub.setCourseS(r.getString("course"));
					
				}}catch(Exception e) {
						e.printStackTrace();	
						}
		  return ub;
	}
	
}
