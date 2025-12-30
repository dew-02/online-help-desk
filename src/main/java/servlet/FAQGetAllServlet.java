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

@WebServlet("/FAQGetAllServlet")
public class FAQGetAllServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List <FaqModel> allFaqs =FaqController.getAllfaq();
		request.setAttribute("allFaqs", allFaqs);
		
		RequestDispatcher dispatcher =request.getRequestDispatcher("FaqDisplay.jsp");
		dispatcher.forward(request, response);
	
	}
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
	
	}


	
	
}
