package com.education.servlet;

import com.education.model.Staff;
import com.education.service.StaffService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/admin/login")
public class StaffLoginServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private StaffService staffService = new StaffService();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        HttpSession session = request.getSession(false);
        if (session != null && session.getAttribute("admin") != null) {
            response.sendRedirect(request.getContextPath() + "/admin");
            return;
        }

        Staff staff = staffService.getStaffByEmail(email);

        if (staff != null && staff.password.equals(password)) {
            session = request.getSession(true);
            session.setAttribute("admin", staff);
            session.setAttribute("name", staff.name);
            session.setAttribute("email", staff.email);
           // session.setAttribute("fileName", staff.getFileName()); // ✅ change "picture" → "fileName"

            session.setAttribute("picture", staff.fileName);
            session.setMaxInactiveInterval(30 * 60); // 30 minutes
            response.sendRedirect(request.getContextPath() + "/admin");
        } else {
            session = request.getSession();
            session.setAttribute("error", "Invalid email or password");
            response.sendRedirect(request.getContextPath() + "/admin/login");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        if (session != null && session.getAttribute("admin") != null) {
            response.sendRedirect(request.getContextPath() + "/admin");
        } else {
            request.getRequestDispatcher("/admin/ManageStaffLogin.jsp").forward(request, response);
        }
    }
}