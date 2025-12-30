package com.education.servlet;

import com.education.model.Staff;
import com.education.service.StaffService;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;

@WebServlet("/admin")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2,
        maxFileSize = 1024 * 1024 * 10,
        maxRequestSize = 1024 * 1024 * 50)
public class StaffServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private StaffService staffService;

    @Override
    public void init() throws ServletException {
        super.init();
        staffService = new StaffService();
    }

    private String handlePhotoUpload(Part filePart, String uploadDirectory) throws IOException {
        if (filePart != null && filePart.getSize() > 0) {
            String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
            String uploadPath = getServletContext().getRealPath("") + File.separator + uploadDirectory;

            //Ensure directory exists
            File uploadDir = new File(uploadPath);
            if (!uploadDir.exists()) {
                uploadDir.mkdirs();
            }

            //Save the file to the specified directory
            String filePath = uploadPath + File.separator + fileName;
            filePart.write(filePath);
            
            return fileName;
        }
        return null;
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        
        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("admin") == null) {
            response.sendRedirect(request.getContextPath() + "/admin/login");
            return;
        }

        //Add session variable to the request for use in JSP
        request.setAttribute("name", session.getAttribute("name"));
        request.setAttribute("email", session.getAttribute("email"));
        request.setAttribute("fileName", session.getAttribute("fileName"));

        if (action == null) {
            request.setAttribute("staffs", staffService.getAllStaff());
            request.getRequestDispatcher("admin/ManageStaffIndex.jsp").forward(request, response);
        } else if (action.equals("create")) {
            request.getRequestDispatcher("admin/ManageStaffCreate.jsp").forward(request, response);
        } else if (action.equals("view")) {
            int id = Integer.parseInt(request.getParameter("id"));
            Staff staff = staffService.getStaff(id);
            request.setAttribute("staff", staff);
            request.getRequestDispatcher("admin/ManageStaffIndex.jsp").forward(request, response);
        } else if (action.equals("edit")) {
            int id = Integer.parseInt(request.getParameter("id"));
            Staff staff = staffService.getStaff(id);
            request.setAttribute("staff", staff);
            request.getRequestDispatcher("admin/ManageStaffEdit.jsp").forward(request, response);
        } else if (action.equals("delete")) {
            int id = Integer.parseInt(request.getParameter("id"));
            staffService.deleteStaff(id);
            response.sendRedirect("admin");
        } else if (action.equals("logout")) {
            session.invalidate();
            response.sendRedirect(request.getContextPath() + "/admin/adminhome.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if (action.equals("create")) {
            String name = request.getParameter("name");
            String password = request.getParameter("password");
            String email = request.getParameter("email");
            Part filePart = request.getPart("fileName");

            String fileName = handlePhotoUpload(filePart, "staff/assets/picture");
            if (fileName == null) {
                fileName = "default.png";
            }

            Staff staff = new Staff();
            staff.name = name;
            staff.email = email;
            staff.password = password;
            staff.fileName = fileName;

            if (staffService.createStaff(staff)) {
                response.sendRedirect("admin");
            } else {
                response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            }
        } else if (action.equals("update")) {
            int id = Integer.parseInt(request.getParameter("id"));
            String name = request.getParameter("name");
            String password = request.getParameter("password");
            String email = request.getParameter("email");
            Part filePart = request.getPart("fileName");

            String fileName = handlePhotoUpload(filePart, "staff/assets/picture");

            Staff staff = new Staff();
            staff.id = id;
            staff.name = name;
            staff.email = email;
            staff.password = password;

            if (fileName != null) {
                staff.fileName = fileName;
            }
            
            if (staffService.updateStaff(staff)) {
                response.sendRedirect("admin");
            } else {
                response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            }
        } else if (action.equals("delete")) {
            int id = Integer.parseInt(request.getParameter("id"));
            if (staffService.deleteStaff(id)) {
                response.sendRedirect("admin");
            } else {
                response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            }
        }

    }
}