package LecUserPackage;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import EduHelpPackage.AnnouncementModel;
import EduHelpPackage.DBConnection;

public class LecUserController {
	//Connect DB
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	//Insert Data Function
	public static boolean insertdata (String name, String gmail, String password, String phone) {
		
		boolean isSuccess = false;
		
		try {
			//DB Connection Call
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			
			//SQL Query
			String sql = "insert into lecuser values(0,'"+name+"','"+gmail+"','"+password+"','"+phone+"')";
		    int rs = stmt.executeUpdate(sql);
		    if(rs >0) {
		    	isSuccess = true;
		    }
		    else {
		    	isSuccess = false;
		    }
		}catch(Exception e) {
			e.printStackTrace();
			
		}
		return isSuccess;
	}
	
	//login Validate
	
	public static List<LecUserModel> loginValidate(String gmail,String password){
		
		ArrayList<LecUserModel> lecuser = new ArrayList<>();
		try {
			//DB Connection Call
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			
			String sql = "select * from lecuser where " + " gmail= '"+gmail+"' and password='"+password+"'";
			rs = stmt.executeQuery(sql); 
			
			if(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String pass = rs.getString(4);
				String phone = rs.getString(5);
				
				LecUserModel u = new LecUserModel(id,name,email,pass,phone);
				lecuser.add(u);
				
			}
		}catch(Exception e) {
			e.printStackTrace();
			
		}
		return lecuser;
		
	}
	
	//display user
	
	public static List<LecUserModel> lecuserProfile (String Id){
		int convertID = Integer.parseInt(Id);
		
		ArrayList<LecUserModel> lecuser = new ArrayList<>();
		
		try {
			//DB Connection Call
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			String sql = "select * from lecuser where id='"+convertID+"'";
            rs = stmt.executeQuery(sql); 
			
			if(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String gmail = rs.getString(3);
				String password = rs.getString(4);
				String phone = rs.getString(5);
				
				LecUserModel u = new LecUserModel(id,name,gmail,password,phone);
				lecuser.add(u);
				
			}
		}catch(Exception e) {
			e.printStackTrace();
			
		}
		return lecuser;
	}
	
	//User Profile Update 
	public static boolean updateprofile(String id,String name ,String gmail,String password,String phone) {
		try {
			//DBConnection
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			
			//SQL Query
			String sql ="update lecuser set name='"+name+"',gmail='"+gmail+"',password='"+password+"',phone='"+phone+"'"
					+"where id='"+id+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
		    	isSuccess = true;
		    }
		    else {
		    	isSuccess = false;
		    }
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	//GetById
		public static List<LecUserModel> getById (String Id){
			
			int convertedID = Integer.parseInt(Id);
			
			ArrayList <LecUserModel> lecuser = new ArrayList<>();
			
			try {
				//DBConnection
				con=DBConnection.getConnection();
				stmt=con.createStatement();
				
				//Query
				String sql = "select * from lecuser where annid '"+convertedID+"'";
				
				rs = stmt.executeQuery(sql);
				
				while(rs.next()) {
					int id = rs.getInt(1);
					String name = rs.getString(2);
					String gmail = rs.getString(3);
					String password = rs.getString(4);
					String phone = rs.getString(5);
					

					LecUserModel u = new LecUserModel(id,name,gmail,password,phone);
					lecuser.add(u);
				}
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			return lecuser;
			
		}
		//Delete Account
		public static boolean deleteAccount(String id) {
			int convID = Integer.parseInt(id);
			try {
				//DB Connection
				con=DBConnection.getConnection();
				stmt=con.createStatement();
				
				String sql = "delete from lecuser where id='"+convID+"'";
	            
				int rs = stmt.executeUpdate(sql);
				
				if(rs >0) {
			    	isSuccess = true;
			    }
			    else {
			    	isSuccess = false;
			    }
				
				
			}
			catch(Exception e) {
				e.printStackTrace();
		}
			return isSuccess;
	}
		
}
