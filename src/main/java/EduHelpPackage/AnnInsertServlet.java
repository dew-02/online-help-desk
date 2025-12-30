package EduHelpPackage;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AnnInsertServlet")
public class AnnInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
	        throws ServletException, IOException {
	    // You can forward to a JSP or handle GET logic here
	    request.getRequestDispatcher("/InsertAnnounsment.jsp").forward(request, response);
	}
 
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String title= request.getParameter("title");
			String content= request.getParameter("content");
			String date= request.getParameter("date");
			
			boolean isTrue;
			
			isTrue = AnnouncementController.insertdata(title, content, date);
			
			if(isTrue == true) {
				String alertMessage = "Data Insert Successful";
				response.getWriter().println("<script> alert('"+alertMessage+"'); window.location.href='AnnGetAllServlet'</script>");
				
			}
			else {
				RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
				dis2.forward(request,  response);
			}
	}

}
