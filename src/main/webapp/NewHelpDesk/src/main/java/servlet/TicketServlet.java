package servlet;

import java.io.IOException;

import java.time.LocalDate;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.TicketService;


@WebServlet("/TicketServlet")
public class TicketServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String regno = request.getParameter("regno");
		String faculty = request.getParameter("faculty");
        int year = Integer.parseInt(request.getParameter("year"));
        int semester = Integer.parseInt(request.getParameter("semester"));
        String contactno = request.getParameter("contactno");
        String category = request.getParameter("category");
        int lecture = Integer.parseInt(request.getParameter("lecture"));
        String subject = request.getParameter("subject");
        String question = request.getParameter("question");
        
        LocalDate raisedate = LocalDate.now();
        
        
        boolean isTrue;
        
        isTrue= TicketService.insertdata(regno, faculty, year, semester, contactno, category, lecture, subject, question, raisedate);
        
        if(isTrue==true) { 
        	String alertMessage= "Data Insert Successful Bro";
        	response.getWriter().println("<script> alert('"+alertMessage+"'); window.location.href='GetAllTicketServlet'</script>");
        }else{
        	RequestDispatcher dis2=request.getRequestDispatcher("wrong.jsp");
        	dis2.forward(request, response);
        }
	}

}
