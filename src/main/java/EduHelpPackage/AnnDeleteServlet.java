package EduHelpPackage;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/AnnDeleteServlet")
public class AnnDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String annid = request.getParameter("annid");
		boolean isTrue;
		isTrue = AnnouncementController.deletedata(annid);
		if(isTrue == true) {
			String alertMessage = "Data Delete Successful";
			response.getWriter().println("<script>alert('"+alertMessage+"');"+"window.location.href='AnnGetAllServlet';</script>");
		}
		else {
			List<AnnouncementModel> announcementDetails = AnnouncementController.getById(annid);
			request.setAttribute("announcementDetails", announcementDetails);
			
			RequestDispatcher dispacher = request.getRequestDispatcher("wrong.jsp");
			dispacher.forward(request, response);
		}
	}

}
