package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.FaqController;

@WebServlet("/FAQInsertServlet")
public class FAQInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String question=request.getParameter("question");
		String answer=request.getParameter("answer");
		
		boolean isTrue;
		isTrue=FaqController.insertdata(question, answer);
		
		if(isTrue==true) {
			String alertMessage="Data insert Successful";
			response.getWriter().println("<script> alert('"+alertMessage+"');window.location.href='FAQGetAllServlet'</script>");
			
		}
		else {
			RequestDispatcher dispatcher=request.getRequestDispatcher("wrong.jsp");
			dispatcher.forward(request, response);
		}
		
		
		
		
		
		
	}

}
