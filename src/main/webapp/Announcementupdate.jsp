<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Announcement</title>

<!-- Favicon -->
<link rel="shortcut icon" href="C:\Users\ASUS\OneDrive\Desktop\favicon.jpg" type="image/x-icon">

<!-- Tailwind and Font Awesome -->
<script src="https://cdn.tailwindcss.com"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>

<style>
/* Navigation Bar Styling */
.navigation {
    background-color: rgba(255, 159, 24, 0.9);
    backdrop-filter: blur(10px);
    padding: 10px 20px;
    display: flex;
    gap: 20px;
    box-shadow: 0 2px 15px rgba(0, 0, 0, 0.05);
}

/* Footer Styling */
.footer {
    background-color: #faa30c;
    color: white;
    text-align: center;
    padding: 20px;
    margin-top: 40px;
}

/* Table Styling */
form table {
    margin: 40px auto;
    width: 80%;
    max-width: 700px;
    border-collapse: collapse;
    background-color: #fff;
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
    border-radius: 10px;
    overflow: hidden;
}

form table td {
    padding: 15px 20px;
    border-bottom: 1px solid #f3f3f3;
    font-size: 16px;
}

form table tr:last-child td {
    border-bottom: none;
    text-align: center;
}

form input[type="text"] {
    width: 100%;
    padding: 10px;
    border: 1px solid #ddd;
    border-radius: 6px;
    font-size: 15px;
}

form input[type="submit"] {
    background-color: #f97316;
    color: white;
    border: none;
    padding: 10px 25px;
    border-radius: 6px;
    font-size: 16px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

form input[type="submit"]:hover {
    background-color: #ea580c;
}
</style>

</head>
<body>

<!-- Navbar -->
<nav class="bg-white shadow p-4 flex justify-between items-center">
  <div class="text-xl font-bold text-orange-600">Announcements</div>

  <div class="flex items-center gap-4">
    <!-- Profile -->
    <div class="flex items-center gap-2 text-right">
      <img src="C:\Users\ASUS\OneDrive\Desktop\me.jpg" alt="Profile Picture" class="w-10 h-10 rounded-full border-2 border-orange-500" />
      <div>
        <div class="text-sm font-semibold">${lecuser.name}</div>
        <div class="text-xs text-gray-500">Computer Science Dept</div>
      </div>
    </div>

   <!-- Logout Button -->
      <button onclick="if(confirm('Are you sure you want to logout?')) location.href='LecLogin.jsp';" 
        class="bg-red-500 hover:bg-red-600 text-white px-3 py-1 rounded">
     <i class="fas fa-sign-out-alt"></i> Logout
     </button>
    </div>
  </nav>

<%
    String annid = request.getParameter("annid");
    String title = request.getParameter("title");
    String content = request.getParameter("content");
    String date = request.getParameter("date");
%>

<!-- Update Form with Styled Table -->
<form action="AnnUpdateServlet" method="post">
  <table>
    <tr>
      <td>ID:</td>
      <td><input type="text" id="annid" name="annid" value="<%=annid%>" readonly></td>
    </tr>
    <tr>
      <td>Title:</td>
      <td><input type="text" id="title" name="title" value="<%=title%>" required></td>
    </tr>
    <tr>
      <td>Content:</td>
      <td><input type="text" id="content" name="content" value="<%=content%>" required></td>
    </tr>
    <tr>
      <td>Date:</td>
      <td><input type="text" id="date" name="date" value="<%=date%>" required></td>
    </tr>
    <tr>
      <td colspan="2"><input type="submit" value="Submit"></td>
    </tr>
  </table>
</form>

<!-- Footer -->
<div class="footer">
  <div class="footer-content">
    <h3>EduHelp Education Help Desk</h3>
    <p>We're here to help you succeed in your academic journey</p>
    <p>Contact: support@eduHelpDesk.edu | Phone: (123) 456-7890</p>
    <div class="social-icons space-x-4 mt-2">
      <a href="#"><i class="fab fa-facebook"></i></a>
      <a href="#"><i class="fab fa-twitter"></i></a>
      <a href="#"><i class="fab fa-instagram"></i></a>
      <a href="#"><i class="fab fa-linkedin"></i></a>
    </div>
    <p class="mt-2">&copy; 2025 EduHelp. All rights reserved.</p>
  </div>
</div>

</body>
</html>