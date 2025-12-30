package EduHelpPackage;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AnnUpdateServlet")
public class AnnUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String annid= request.getParameter("annid");
		String title= request.getParameter("title");
		String content= request.getParameter("content");
		String date= request.getParameter("date");
		
		boolean isTrue;
		isTrue = AnnouncementController.updatedata(annid, title, content, date);
		
		if(isTrue) {
			List<AnnouncementModel> announcementdetails = AnnouncementController.getById(annid);
			request.setAttribute("announcementdetails", announcementdetails);
			
			String alertMessage = "Data Update Successful";
			response.getWriter().println("<script> alert('"+alertMessage+"'); window.location.href='AnnGetAllServlet'</script>");	
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
			dis2.forward(request,  response);
		}
		
	}

}
