package servlet;

import model.Ticket;


import service.TicketService;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateTicketServlet")
public class UpdateTicketServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
		
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//int tqid=Integer.parseInt(request.getParameter("tqid"));
		String tqid=request.getParameter("tqid");
		String question = request.getParameter("question");
		
		boolean isTrue;
		
		isTrue= TicketService.updateticket(tqid,question);
		
		if(isTrue==true) { 
			List<Ticket> ticketdetails= TicketService.getById(tqid);
			request.setAttribute("ticketdetails", ticketdetails);
			
        	String alertMessage= "Data Insert Successful Bro";
        	response.getWriter().println("<script> alert('"+alertMessage+"'); window.location.href='GetAllTicketServlet'</script>");
        }else{
        	RequestDispatcher dis2=request.getRequestDispatcher("wrong.jsp");
        	dis2.forward(request, response);
        }
		
	}

}
