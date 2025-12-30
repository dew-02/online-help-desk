package service;

import java.sql.Connection;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import connect.DBconnection;

import model.FaqModel;

public class FaqController {
	
	//Connect DB
	private static boolean isSuccess;
	private static Connection con=null;
	private static Statement stmt=null;
	private static ResultSet rs =null;
	
	///insert data function
	public static boolean insertdata (String question , String answer) {
		
		boolean isSuccess =false;
		try {
			
			//DBconnectionAll
			con=DBconnection.getConnection();
			stmt=con.createStatement();
			
			//SQL Query
			String sql="insert into faq values(0,'"+question+"','"+answer+"')";
			int rs=stmt.executeUpdate(sql);
			if(rs>0) {
				
				isSuccess=true;
			}
			else {
				isSuccess=false;
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		return isSuccess;
	}
	
	//GetById Function
	public static List<FaqModel> getById(String Id){
		
		int convertedID =Integer.parseInt(Id);
		
		ArrayList <FaqModel> faq=new ArrayList<>();
	try {
		
		//DBConnection
		con=DBconnection.getConnection();
		stmt=con.createStatement();
		
		//Query
		String sql = "select * from faq where id '"+convertedID+"'";
		
		rs =stmt.executeQuery(sql);
		
		while(rs.next()) {
			int id =rs.getInt(1);
			String question=rs.getString(2);
			String answer=rs.getString(3);
			
			FaqModel fq=new FaqModel(id,question,answer);
			faq.add(fq);		
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
		return faq;	
	}
	
	
	//GetAll Data
	public static List<FaqModel> getAllfaq(){
		
		ArrayList <FaqModel> faq=new ArrayList<>();
		
		try {
			
			//DBConnection
			con=DBconnection.getConnection();
			stmt=con.createStatement();
			
			//Query
			String sql = "select * from faq";
			
			rs =stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id =rs.getInt(1);
				String question=rs.getString(2);
				String answer=rs.getString(3);
				
				FaqModel fq=new FaqModel(id,question,answer);
				faq.add(fq);		
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
			return faq;	
		}
		
	
	//Update Data
	public static boolean updatedata(String id,String question,String answer) {
		try {
			//DBConnection
			con=DBconnection.getConnection();
			stmt=con.createStatement();
			//SQL query
			String sql ="update faq set question ='"+question+"', answer='"+answer+"'"
					   +"where id='"+id+"'";
			
					 
		  int rs =stmt.executeUpdate(sql);
			if(rs>0) {
				isSuccess=true;
			}
			else {
				isSuccess=false;
			}
				
		}catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	//Delete Data
	
	public static boolean deletedata(String id) {
		int convID = Integer.parseInt(id);
		
		try {
			//DB connection
			con = DBconnection.getConnection();
			stmt =con.createStatement();
			
			String sql = " delete from faq where id ='"+convID+"'";
			
			int rs = stmt.executeUpdate(sql);
			if(rs>0) {
				
				isSuccess=true;
			}
			else {
				isSuccess=false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}
	
	
	
	
	
	
	
	
	
	
	

}
