package service;

import java.sql.Connection;

import java.sql.ResultSet;
import java.sql.Statement;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import model.Ticket;
import util.DBConnection;

public class TicketService {
	//connect DB
		private static boolean isSuccess;
		private static Connection con=null;
		private static Statement stmt=null;
		private static ResultSet rs=null;
		
		//insert Data function
		public static boolean insertdata(String RegNo, String Faculty, int Year, int Semester, String ContactNo, String Category, int Lecture, String Subject, String Question, LocalDate RaiseDate) {
		    boolean isSuccess = false;
		    try {
		        // DB Connection Call
		        con = DBConnection.getConnection();
		        stmt = con.createStatement();
		        // SQL Query
		        String sql ="INSERT INTO ticketq VALUES (0,'"+RegNo+"', '"+Faculty+"', '"+Year+"', '"+Semester+"', '"+ContactNo+"', '"+Category+"', '"+Lecture+"', '"+Subject+"', '"+Question+"', '"+RaiseDate+"')";
		        int rs = stmt.executeUpdate(sql);
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


		//function to view- getByID
   	public static List<Ticket>getById(String tqid){
			
			int convertedID=Integer.parseInt(tqid);
			//int0 convertedID=0tqid;
			
			ArrayList<Ticket> ticket=new ArrayList<>();
			
			try {
				//DB Connection Call
				con=DBConnection.getConnection();
				stmt=con.createStatement();
				
				//Query
				String sql="SELECT *FROM ticketq WHERE TQID='"+convertedID+"'";
				
				rs=stmt.executeQuery(sql);
				
				while(rs.next()) {
					int id=rs.getInt(1);
					String regno=rs.getString(2);
					String faculty=rs.getString(3);
					int year=rs.getInt(4);
					int semester=rs.getInt(5);
					String contactno=rs.getString(6);
					String category=rs.getString(7);
					int lecture=rs.getInt(8);
					String subject=rs.getString(9);
					String quetion=rs.getString(10);
					LocalDate raisedate=rs.getDate(11).toLocalDate();
					
					Ticket tk=new Ticket(id,regno,faculty,year,semester,contactno,category,lecture,subject,quetion,raisedate);
					ticket.add(tk);
				}
			}catch(Exception e) {
				e.printStackTrace();
			}
			return ticket;
		}
		
		//getAll
				public static List<Ticket> getAllTicket(){
					ArrayList<Ticket> ticket2=new ArrayList<>();
					
					try {
						//DB Connection Call
						con=DBConnection.getConnection();
						stmt=con.createStatement();
						
						//Query
						String sql="SELECT *FROM ticketq";
						
						rs=stmt.executeQuery(sql);
						
						while(rs.next()) {
							int id=rs.getInt(1);
							String regno=rs.getString(2);
							String faculty=rs.getString(3);
							int year=rs.getInt(4);
							int semester=rs.getInt(5);
							String contactno=rs.getString(6);
							String category=rs.getString(7);
							int lecture=rs.getInt(8);
							String subject=rs.getString(9);
							String quetion=rs.getString(10);
							LocalDate raisedate=rs.getDate(11).toLocalDate();
							
							Ticket tk=new Ticket(id,regno,faculty,year,semester,contactno,category,lecture,subject,quetion,raisedate);
							ticket2.add(tk);
						}
					}catch(Exception e) {
						e.printStackTrace();
					}
					return ticket2;
				} 
				
				//Update Data
				public static boolean updateticket(String id, String question) {
					try {
						//DB Connection Call
						con=DBConnection.getConnection();
						stmt=con.createStatement();
						
						//SQL query
						String sql="UPDATE ticketq SET Question='"+question+"' WHERE TQID='"+id+"'";
						
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
		
				//delete ticket
				public static boolean deleteticket(int id) {
					int convID=id;
					try {
						//DB Connection Call
						con=DBConnection.getConnection();
						stmt=con.createStatement();
						
						String sql="DELETE FROM ticketq WHERE TQID='"+convID+"'";
						
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
		
		
}
