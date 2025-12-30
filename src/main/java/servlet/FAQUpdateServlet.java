package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.FaqModel;
import service.FaqController;

@WebServlet("/FAQUpdateServlet")
public class FAQUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
		String question=request.getParameter("question");
		String answer=request.getParameter("answer");
		
		boolean isTrue;
		isTrue =FaqController.updatedata(id,question, answer);
		
		if(isTrue==true) {
			
			List<FaqModel> faqdetails = FaqController.getById(id);
			request.setAttribute("faqdetails", faqdetails);
			
			
			String alertMessage="Data Update Successful";
			response.getWriter().println("<script> alert('"+alertMessage+"');window.location.href='FAQGetAllServlet'</script>");
			
		}
		else {
			RequestDispatcher dis2 =request.getRequestDispatcher("wrong.jsp");
			dis2.forward(request, response);
		}
		
		
		
		
		
		
	}

}
