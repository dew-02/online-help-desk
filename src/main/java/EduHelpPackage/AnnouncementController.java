package EduHelpPackage;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class AnnouncementController {
	
	//Connect DB
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	//Insert Data Function
	public static boolean insertdata (String title, String content, String date) {
		
		boolean isSuccess = false;
		
		try {
			//DB Connection Call
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			
			//SQL Query
			String sql = "insert into announcement values(0,'"+title+"','"+content+"','"+date+"')";
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
	//GetById
	public static List<AnnouncementModel> getById (String Id){
		
		int convertedID = Integer.parseInt(Id);
		
		ArrayList <AnnouncementModel> announcement = new ArrayList<>();
		
		try {
			//DBConnection
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			
			//Query
			String sql = "select * from announcement where annid '"+convertedID+"'";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int annid = rs.getInt(1);
				String title = rs.getString(2);
				String content = rs.getString(3);
				String date = rs.getString(4);
				
				AnnouncementModel an = new AnnouncementModel(annid,title,content,date);
				announcement.add(an);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return announcement;
		
		
	}
	
	//GetAll Data
	public static List<AnnouncementModel> getAllAnnouncement(){
		ArrayList <AnnouncementModel> announcements = new ArrayList<>();
		try {
			//DBConnection
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			
			//Query
			String sql = "select * from announcement";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int annid = rs.getInt(1);
				String title = rs.getString(2);
				String content = rs.getString(3);
				String date = rs.getString(4);
				
				AnnouncementModel an = new AnnouncementModel(annid,title,content,date);
				announcements.add(an);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return announcements;
	
	}
	//Update Data
	public static boolean updatedata(String annid,String title ,String content,String date) {
		try {
			//DBConnection
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			
			//SQL Query
			String sql ="update announcement set title='"+title+"',content='"+content+"',date='"+date+"'"
					+"where annid='"+annid+"'";
			
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
	
	//Delete Data
	public static boolean deletedata(String annid) {
		int convID = Integer.parseInt(annid);
		try {
			//DB Connection
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			
			String sql = "delete from announcement where annid='"+convID+"'";
            
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
