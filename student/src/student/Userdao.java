package student;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import student.user;

public class Userdao{
	public static Connection getConnection1()
	{
		Connection con=null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","golu");
	}catch(Exception e){System.out.println(e);}
		return con;
	}
	
	public static int regester(user r)
	{
		int status=0;
		try{
			Connection con = Userdao.getConnection1();
			PreparedStatement ps = con.prepareStatement("insert into register values(?,?,?,?,?,?,?,?,?)");
			
			ps.setInt(1, r.getRollno());
			ps.setString(2, r.getName());
			ps.setString(3, r.getPassword());
			ps.setString(4, r.getEmail());
			ps.setString(5, r.getBranch());
			ps.setString(6, r.getMobile());
			ps.setString(7, r.getSemester());
			ps.setString(8, r.getGender());
			ps.setString(9, r.getDob());
			status=ps.executeUpdate();
			con.close();
		}catch(Exception e){e.printStackTrace();}
		
		return status;
	}
	public static int regester1(user r)
	{
		int status=0;
		try{
			Connection con = Userdao.getConnection1();
			PreparedStatement ps = con.prepareStatement("insert into tregister values(?,?,?,?,?,?,?,?,?)");
			
			ps.setInt(1, r.getId());
			ps.setString(2, r.getName());
			ps.setString(3, r.getMobile());
			ps.setString(4, r.getGender());
			ps.setString(5, r.getEmail());
			ps.setString(6, r.getDob());
			ps.setString(7, r.getTgos());
			ps.setString(8, r.getPassword());
			ps.setString(9, r.getBranch());
			
			
			status=ps.executeUpdate();
			con.close();
		}catch(Exception e){e.printStackTrace();}
		
		return status;
	}

	public static List<user> getAllRecords()
	{
		List<user> list=new ArrayList<user>();
		
		try
		{
			Connection con = Userdao.getConnection1();
			Statement s=con.createStatement();
			 ResultSet r1=s.executeQuery("select * from tregister");
			 user a=new user();
			 while(r1.next())
			{
			 user r=new user();
	          a.setName(r1.getString(2));
	          a.setMobile(r1.getString(5));
	          a.setRollno(r1.getInt(1));
	          list.add(a);
		     }
		con.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	return list;
	}
	
}
