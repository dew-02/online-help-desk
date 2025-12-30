package service;
import java.sql.Connection;


import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.Student;
import util.DBConnection;

public class StudentService {
	//connect DB
	private static boolean isSuccess;
	private static Connection con=null;
	private static Statement stmt=null;
	private static ResultSet rs=null;
	
	//insert Data function
	public static boolean insertdata(String RegNo,String Name,String Faculty,int Year,int Semester,String Email,String Password) {
		boolean isSuccess =false;
		try {
			//DB Connection Call
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			
			//SQL Query
			String sql="INSERT INTO student VALUES ('"+RegNo+"', '"+Name+"', '"+Faculty+"', '"+Year+"', '"+Semester+"', '"+Email+"', '"+Password+"')";
			int rs=stmt.executeUpdate(sql);
			if(rs>0) {
				isSuccess=true;
			}else {
				isSuccess=false;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	//login validate
	/*public static List<Student> loginvalidate(String regno,String password){
		ArrayList<Student> student=new ArrayList<>();
		
		try {
			//DB Connection Call
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			
			//SQL Query
			String sql="SELECT *FROM student WHERE "+" RegNo='"+regno+"' and password='"+password+"'";
			rs=stmt.executeQuery(sql);
			
			if(rs.next()) {
				String regid=rs.getString(1);
				String name=rs.getString(2);
				String faculty=rs.getString(3);
				int year=rs.getInt(4);
				int semester=rs.getInt(5);
				String email=rs.getString(6);
				String pass=rs.getString(7);
				
				Student std2=new Student(regid,name,faculty,year,semester,email,pass);
				student.add(std2);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return student;
	}*/
}
