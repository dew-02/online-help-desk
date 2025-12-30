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

@WebServlet("/DeleteTicketServlet")
public class DeleteTicketServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("TQID"));
		boolean isTrue;
		
		isTrue=TicketService.deleteticket(id);
		if(isTrue==true) {
			String alertMessage="Ticket Delete Successful";
			response.getWriter().println("<script>alert('"+alertMessage+"');"+"window.location.href='GetAllTicketServlet'</script>");
		}else{
			List<Ticket> ticketdetails= TicketService.getById(id);
			request.setAttribute("ticketdetails", ticketdetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("wrong.jsp");
			dispatcher.forward(request,response);
		}
	}

}
