package LecUserPackage;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LecProfileServlet")
public class LecProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request,response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}
    
	private void processRequest(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		//Retrieve user information from session
		LecUserModel lecuser = (LecUserModel) request.getSession().getAttribute("lecuser");
		
		if(lecuser != null) {
			//forward user data to lecProfile.jsp
			request.setAttribute("lecuser", lecuser);
			request.getRequestDispatcher("lecProfile.jsp").forward(request, response);
		}
		else
		{
			//handle case where user is not logged in
			response.sendRedirect("LecLogin.jsp");
		}
		
		
		
		
	}
}
