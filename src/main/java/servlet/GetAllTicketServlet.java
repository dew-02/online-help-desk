package servlet;

import java.io.IOException;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Ticket;
import service.TicketService;

@WebServlet("/GetAllTicketServlet")
public class GetAllTicketServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Ticket> allTicket= TicketService.getAllTicket();
		request.setAttribute("allTicket", allTicket);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("Sdashboard.jsp");
		dispatcher.forward(request,response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
	}

}
