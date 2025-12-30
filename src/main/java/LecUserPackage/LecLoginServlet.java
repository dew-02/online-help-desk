package LecUserPackage;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/LecLoginServlet")
public class LecLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String gmail = request.getParameter("gmail");
		String password = request.getParameter("password");
		
		try {
			List<LecUserModel> lecuserlogin = LecUserController.loginValidate(gmail,password);
			if(lecuserlogin != null && !lecuserlogin.isEmpty()) {
				
				request.getSession().setAttribute("lecuser",lecuserlogin.get(0));
				response.sendRedirect("LecProfileServlet");
			}
			else {
				String alertMessage = "Invalid Credentials,Plese try again";
				response.getWriter().println("<script>alert('"+alertMessage+"');window.location.href='LecLogin.jsp'</script>");
				
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}
