package dao;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import bean.studentbean;


public class admindao {

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
	
	
	public static List <studentbean> Show()
	{
	
			con=connect();
			List<studentbean> list=new ArrayList<>();
			
			
		    try {
		    	Statement st =  con.createStatement();
				ResultSet r= st.executeQuery("select * from studentregistration where dflag=0 and  approve=0");
				while(r.next())
				{
					studentbean ub=new studentbean();
						ub.setId(r.getInt("id"));
					ub.setName(r.getString("name"));
					ub.setEmail(r.getString("email"));
					ub.setContact(r.getLong("contact"));
					ub.setId(r.getInt("id"));
				    ub.setCourse(r.getString("course"));
			        ub.setFees(r.getInt("fees"));
					
					list.add(ub);
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return  list;
		}
	
	public static List <studentbean> ShowEnrolled()
	{
	
			con=connect();
			List<studentbean> list=new ArrayList<>();
			
			
		    try {
		    	Statement st =  con.createStatement();
				ResultSet r= st.executeQuery("select * from studentregistration where dflag=0 and  approve=1");
				while(r.next())
				{
					studentbean ub=new studentbean();
						ub.setId(r.getInt("id"));
					ub.setName(r.getString("name"));
					ub.setEmail(r.getString("email"));
					ub.setContact(r.getLong("contact"));
					
				    ub.setCourse(r.getString("course"));
			        ub.setFees(r.getInt("fees"));
					ub.setAddress(r.getString("address"));
					ub.setPin(r.getInt("pin"));
					ub.setFname(r.getString("fname"));
					ub.setUgcourse(r.getString("ugcourse"));
					ub.setYop(r.getString("yop"));
					ub.setGrade(r.getFloat("grade"));
				    ub.setCollege(r.getString("college"));
			        ub.setGender(r.getString("gender"));
					ub.setDob(r.getString("dob"));
					ub.setCity(r.getString("city"));
					list.add(ub);
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return  list;
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
	
	
	public  int delete(int pid) {
		con= connect();
		int status = 0;
		try {
			
			 Statement st = con.createStatement();
				PreparedStatement stmt=con.prepareStatement("update studentregistration set dflag=1 where id="+pid); 
				status = stmt.executeUpdate();
				
	}
		catch(Exception e)
		{
		e.printStackTrace();
		}
		return status;
	}
	public int approve(int pid) {
		con= connect();
		int status = 0;
		try {
			
			 Statement st = con.createStatement();
				PreparedStatement stmt=con.prepareStatement("update studentregistration set approve=1  where id="+pid); 
				status = stmt.executeUpdate();
				
	}catch(Exception e)
		{
		e.printStackTrace();
		}
		return status;
	}

	public  int update_Details(studentbean sb , int id)
	{
		int status=0;
		con= connect();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/coaching","root","");
			PreparedStatement stmt=con.prepareStatement("update studentregistration set name=?,fname=?,dob=?,gender=?,contact=?,address=?,city=?,pin=?,ugcourse =?,college=?,yop=?,grade=? where id=?"); 
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
			stmt.setInt(13, sb.getId());
			status = stmt.executeUpdate();
        } catch (Exception e) 
		{

			e.printStackTrace();
		}
		
		return status;
	}
	
	public int addCircular(studentbean pd)
	{
	
		int status=0;
		con= connect();
		try {
		Statement st = con.createStatement();
		PreparedStatement stmt=con.prepareStatement("insert into circular(title,description) values (?,?)");  
		stmt.setString(1, pd.getCtitle());
		stmt.setString(2, pd.getCircular());
	
		status = stmt.executeUpdate();
		
		}catch(Exception e) {
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
				ResultSet r= st.executeQuery("select * from circular where dflag=0 ");
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
	public  int deleteCircular(int pid) {
		con= connect();
		int status = 0;
		try {
			
			 Statement st = con.createStatement();
				PreparedStatement stmt=con.prepareStatement("update circular set dflag=1 where id="+pid); 
				status = stmt.executeUpdate();
				
	}
		catch(Exception e)
		{
		e.printStackTrace();
		}
		return status;
	}
	public  int ShowCircular(int pid) {
		con= connect();
		int status = 0;
		try {
			
			 Statement st = con.createStatement();
				PreparedStatement stmt=con.prepareStatement("update circular set showcircular = 1 where id="+pid); 
				status = stmt.executeUpdate();
				
	}
		catch(Exception e)
		{
		e.printStackTrace();
		}
		return status;
	}
	public  int NotShowCircular(int pid) {
		con= connect();
		int status = 0;
		try {
			
			 Statement st = con.createStatement();
				PreparedStatement stmt=con.prepareStatement("update circular set showcircular = 0 where id="+pid); 
				status = stmt.executeUpdate();
				
	}
		catch(Exception e)
		{
		e.printStackTrace();
		}
		return status;
	}
	

	public static List <studentbean> ShowEnquiry()
	{
	
			con=connect();
			List<studentbean> list=new ArrayList<>();
			
			
		    try {
		    	Statement st =  con.createStatement();
				ResultSet r= st.executeQuery("select * from enquiry where dflag=0 ");
				while(r.next())
				{
					studentbean ub=new studentbean();
						ub.setId(r.getInt("id"));
					ub.setEname(r.getString("name"));
					ub.setEcontact(r.getLong("contact"));
					 
					ub.setEsubject(r.getString("subject"));
					 
					
					list.add(ub);
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return  list;
		}
	public  int deleteEnquiry(int pid) {
		con= connect();
		int status = 0;
		try {
			
			 Statement st = con.createStatement();
				PreparedStatement stmt=con.prepareStatement("update enquiry set dflag=1 where id="+pid); 
				status = stmt.executeUpdate();
				
	}
		catch(Exception e)
		{
		e.printStackTrace();
		}
		return status;
	}
	
}
