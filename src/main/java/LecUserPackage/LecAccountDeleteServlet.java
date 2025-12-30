package LecUserPackage;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LecAccountDeleteServlet")
public class LecAccountDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		
		boolean isTrue;
		isTrue = LecUserController.deleteAccount(id);
		if(isTrue == true) {
			String alertMessage = "Account Delete Successful";
			response.getWriter().println("<script>alert('"+alertMessage+"');"+"window.location.href='LecLogin.jsp';</script>");
		}
		else {
			List<LecUserModel> lecuserdetails = LecUserController.getById(id);
			request.setAttribute("lecuserdetails", lecuserdetails);
			
			RequestDispatcher dispacher = request.getRequestDispatcher("wrong.jsp");
			dispacher.forward(request, response);
		}
	}

}
