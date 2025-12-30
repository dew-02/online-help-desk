<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Lecturer Profile Update</title>
  <link rel="shortcut icon" href="C:\Users\ASUS\OneDrive\Desktop\favicon.jpg" type="image/x-icon">
<script src="https://cdn.tailwindcss.com"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>
  
  <style>
  .section-title {
  display: flex;
  align-items: center;
  font-size: 26px;
  font-weight: bold;
  color: #f46a06;
  margin-left: 60px;
  margin-top: 40px;
  margin-bottom: 20px;
  position: relative;
}

.section-title::before {
  content: "✏️";
  font-size: 28px;
  margin-right: 10px;
}

.section-title::after {
  content: "";
  position: absolute;
  bottom: -5px;
  left: 0;
  height: 3px;
  width: 60px;
  background-color: #f46a06;
  border-radius: 2px;
}
  
  .navigation {
            background-color: rgba(255, 159, 24, 0.9);
            backdrop-filter: blur(10px);
            padding: 10px 20px;
            display: flex;
            gap: 20px;
            box-shadow: 0 2px 15px rgba(0, 0, 0, 0.05);
        }

        
        .footer {
            background-color: #faa30c;
            color: white;
            text-align: center;
            padding: 20px;
            margin-top: 40px;
        }
    body {
      font-family: Arial, sans-serif;
      background-color: #f5f5f5;
      margin: 0;
      padding: 0px;
    }

    h2 {
      color: #f46a06;
      margin-left: 60px;
    }

    .form-container {
      max-width: 600px;
      margin: 40px auto;
      background-color: #fff;
      padding: 30px;
      border-radius: 12px;
      box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.1);
    }

    table {
      width: 100%;
      border-collapse: collapse;
    }

    td {
      padding: 12px 10px;
      font-weight: bold;
    }

    input[type="text"] {
      width: 100%;
      padding: 10px 12px;
      border: 1px solid #ccc;
      border-radius: 8px;
      font-size: 14px;
    }

    input[type="submit"] {
      background-color: #f46a06;
      color: white;
      padding: 10px 20px;
      border: none;
      border-radius: 8px;
      font-size: 16px;
      cursor: pointer;
      margin-top: 10px;
      float: right;
      transition: background-color 0.3s ease;
    }

    input[type="submit"]:hover {
      background-color: #d85c03;
    }

    td[colspan="2"] {
      text-align: right;
    }
  </style>
</head>
<body>
<!-- Navbar -->
  <nav class="bg-white shadow p-4 flex justify-between items-center">
    <div class="text-xl font-bold text-orange-600">Announcements</div>
  
    <div class="flex items-center gap-4">
      <!-- Profile Section with Image and Text -->
      <div class="flex items-center gap-2 text-right">
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

  <!--new added part duullllaaaaa-->
  <div class="navigation">
    <a href="AnnGetAllServlet" class="nav-link">
        <i class="fas fa-home"></i> Home
    </a>
    <a href="AnnGetAllServlet" class="nav-link">
        <i class="fas fa-book-open"></i> Announcements
    </a>
    <a href="StudentQueries.html" class="nav-link">
        <i class="fas fa-ticket-alt"></i> Student Queries
    </a>
    <a href="faq.html" class="nav-link">
        <i class="fas fa-question-circle"></i> FAQ
    </a>
</div>


<%
  String id = request.getParameter("id");
  String name = request.getParameter("name");
  String gmail = request.getParameter("gmail");
  String phone = request.getParameter("phone");
  String password = request.getParameter("password");
%>

<h2 class="section-title">Update Lecturer Profile</h2>

<div class="form-container">
  <form action="LecUpdateProfileServlet" method="post">
    <table>
      <tr>
        <td>ID:</td>
        <td><input type="text" id="id" name="id" value="<%=id%>" readonly></td>
      </tr>
      <tr>
        <td>Title:</td>
        <td><input type="text" id="name" name="name" value="<%=name%>" required></td>
      </tr>
      <tr>
        <td>Gmail:</td>
        <td><input type="text" id="gmail" name="gmail" value="<%=gmail%>" required></td>
      </tr>
      <tr>
        <td>Phone:</td>
        <td><input type="text" id="phone" name="phone" value="<%=phone%>" required></td>
      </tr>
      <tr>
        <td>Password:</td>
        <td><input type="text" id="password" name="password" value="<%=password%>" required></td>
      </tr>
      <tr>
        <td colspan="2">
          <input type="submit" value="Submit">
        </td>
      </tr>
    </table>
  </form>
</div>


 
<div class="footer">
    <div class="footer-content">
        <h3>EduHelp Eduation Help Desk</h3>
        <p>We're here to help you succeed in your academic journey</p>
        <p>Contact: support@eduHelpDesk.edu | Phone: (123) 456-7890</p>
        <div class="social-icons">
            <a href="https://www.google.com/search?q=facebook&sca_esv=3f991894fcbd4882&sxsrf=AHTn8zoCRL3A-IAX5Wmk7pn9sm6fGzFOKA%3A1746338378389&ei=SgIXaJiyF9CY4-EPhuvEoAs&ved=0ahUKEwiY_821kYmNAxVQzDgGHYY1EbQQ4dUDCBA&uact=5&oq=facebook&gs_lp=Egxnd3Mtd2l6LXNlcnAiCGZhY2Vib29rMgoQIxiABBgnGIoFMgoQABiABBhDGIoFMgoQABiABBhDGIoFMgoQABiABBhDGIoFMhYQLhiABBixAxjRAxhDGIMBGMcBGIoFMgoQABiABBhDGIoFMhAQABiABBixAxhDGIMBGIoFMgoQABiABBhDGIoFMgoQABiABBhDGIoFMgoQABiABBhDGIoFSMQHUMMFWMMFcAF4AZABAJgBjAGgAYwBqgEDMC4xuAEDyAEA-AEBmAICoAKXAcICChAAGLADGNYEGEeYAwCIBgGQBgiSBwMxLjGgB_8IsgcDMC4xuAeRAQ&sclient=gws-wiz-serp"><i class="fab fa-facebook"></i></a>
            <a href="https://www.google.com/search?q=twitter&sca_esv=3f991894fcbd4882&sxsrf=AHTn8zr2vEgtjvEMjCJ2GPkC_DE0t3P7Bg%3A1746338486208&ei=tgIXaIa-DI2X4-EPjcTb8Qo&ved=0ahUKEwiG8YLpkYmNAxWNyzgGHQ3iNq4Q4dUDCBA&uact=5&oq=twitter&gs_lp=Egxnd3Mtd2l6LXNlcnAiB3R3aXR0ZXIyGRAuGIAEGLEDGNEDGEMYgwEYxwEYyQMYigUyEBAAGIAEGLEDGEMYgwEYigUyChAAGIAEGEMYigUyChAAGIAEGEMYigUyChAAGIAEGEMYigUyCxAAGIAEGJIDGIoFMgsQABiABBixAxiDATIFEAAYgAQyBRAAGIAEMgUQABiABEj_BlAAWABwAHgBkAEAmAGKAaABigGqAQMwLjG4AQPIAQD4AQL4AQGYAgGgAo0BmAMAkgcDMC4xoAerBrIHAzAuMbgHjQE&sclient=gws-wiz-serp"><i class="fab fa-twitter"></i></a>
            <a href="https://www.google.com/search?q=instagram&sca_esv=3f991894fcbd4882&sxsrf=AHTn8zoXAji0SUPLzGQJIBe4DFcd-Wmbvw%3A1746338382088&ei=TgIXaKOZBbGb4-EPxZDHqAs&oq=inster&gs_lp=Egxnd3Mtd2l6LXNlcnAiBmluc3RlcioCCAEyBxAjGLECGCcyFBAAGIAEGJECGLEDGIMBGMkDGIoFMhEQABiABBiRAhixAxiDARiKBTIFEAAYgAQyBRAAGIAEMgsQABiABBiSAxiKBTIHEAAYgAQYCjIFEAAYgAQyBxAuGIAEGAoyBxAuGIAEGApIpxpQAFjwDXAAeAGQAQCYAZgBoAG5BqoBAzAuNrgBAcgBAPgBAZgCBqACzgbCAgoQIxiABBgnGIoFwgIQEAAYgAQYsQMYQxiDARiKBcICCxAuGIAEGLEDGIMBwgILEAAYgAQYsQMYgwHCAg0QABiABBixAxhDGIoFwgIKEC4YgAQYQxiKBcICEBAuGIAEGNEDGEMYxwEYigXCAgoQABiABBhDGIoFwgITEAAYgAQYsQMYQxiDARjJAxiKBcICCBAAGIAEGLEDwgITEC4YgAQYQxjUAhjHARiKBRivAZgDAJIHAzAuNqAHrEWyBwMwLja4B84G&sclient=gws-wiz-serp"><i class="fab fa-instagram"></i></a>
            <a href="https://www.google.com/search?q=linkedin&sca_esv=3f991894fcbd4882&sxsrf=AHTn8zpu9c8eyZbfjYV3xDm982i4mhCk8w%3A1746338455028&ei=lwIXaKW9AZz04-EPwqrSoQ4&ved=0ahUKEwjl5JPakYmNAxUc-jgGHUKVNOQQ4dUDCBA&uact=5&oq=linkedin&gs_lp=Egxnd3Mtd2l6LXNlcnAiCGxpbmtlZGluMhYQLhiABBixAxjRAxhDGIMBGMcBGIoFMhAQABiABBixAxhDGIMBGIoFMhAQABiABBixAxhDGMkDGIoFMhMQLhiABBixAxjRAxhDGMcBGIoFMg0QABiABBixAxhDGIoFMggQABiABBiSAzIFEAAYgAQyCBAAGIAEGLEDMgUQABiABDIFEAAYgAQyJRAuGIAEGLEDGNEDGEMYgwEYxwEYigUYlwUY3AQY3gQY4ATYAQJI5RhQ4QVYwRFwAngBkAEDmAHsAaAB0giqAQUwLjcuMbgBA8gBAPgBAfgBApgCBKACiwOoAhLCAgcQIxiwAxgnwgIKEAAYsAMY1gQYR8ICExAuGIAEGLADGEMYyAMYigXYAQHCAhkQLhiABBiwAxjRAxhDGMcBGMgDGIoF2AEBwgIKECMYgAQYJxiKBcICERAAGIAEGJECGLEDGIMBGIoFwgILEAAYgAQYkQIYigXCAgsQABiABBixAxiDAcICCxAAGIAEGJIDGIoFwgIHECMYJxjqAsICExAAGIAEGEMYtAIYigUY6gLYAQLCAhkQLhiABBjRAxhDGLQCGMcBGIoFGOoC2AECwgIWEC4YgAQYQxi0AhjIAxiKBRjqAtgBAsICHBAuGIAEGNEDGEMYtAIYxwEYyAMYigUY6gLYAQKYAwTxBThf3T24-a-2iAYBkAYLugYECAEYCLoGBggCEAEYAZIHBTIuMS4xoAfhTbIHBTAuMS4xuAeDAw&sclient=gws-wiz-serp"><i class="fab fa-linkedin"></i></a>
        </div>
        <p>&copy; 2025 EduHelp. All rights reserved.</p>
    </div>
</div>

</body>
</html>
