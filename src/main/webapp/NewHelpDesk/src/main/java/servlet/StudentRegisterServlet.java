package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.StudentService;



@WebServlet("/StudentRegisterServlet")
public class StudentRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String regno = request.getParameter("regno");
		String name= request.getParameter("name");
		String faculty = request.getParameter("faculty");
        int year = Integer.parseInt(request.getParameter("year"));
        int semester = Integer.parseInt(request.getParameter("semester"));
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        boolean isTrue;
        
        isTrue= StudentService.insertdata(regno, name, faculty, year, semester, email, password);
        
        if(isTrue==true) { 
        	String alertMessage= "Data Insert Successful Bro";
        	response.getWriter().println("<script> alert('"+alertMessage+"'); window.location.href='Slogin.jsp'</script>");
        }else{
        	RequestDispatcher dis2=request.getRequestDispatcher("wrong.jsp");
        	dis2.forward(request, response);
        }

	}

}
