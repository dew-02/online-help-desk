<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Lecturer Profile</title>
  <link rel="shortcut icon" href="C:\Users\ASUS\OneDrive\Desktop\favicon.jpg" type="image/x-icon">
<script src="https://cdn.tailwindcss.com"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>
  
  <style>
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
      background: #f4f4f4;
      margin: 0;
      padding: 0;
    }

    .container {
      display: flex;
      justify-content: center;
      padding: 40px;
    }

    .profile-section {
      background-color: #ffca02;
      color: white;
      padding: 30px;
      border-radius: 10px;
      text-align: center;
      width: 300px;
    }

    .profile-section img {
      width: 120px;
      height: 120px;
      border-radius: 50%;
      object-fit: cover;
      margin-bottom: 20px;
    }

    .profile-section h2 {
      margin: 10px 0;
    }

    .profile-section .buttons {
      margin-top: 20px;
    }

    .profile-section .buttons button {
      background-color: white;
      color: #0047ab;
      border: none;
      padding: 10px 15px;
      margin: 5px;
      cursor: pointer;
      font-weight: bold;
      border-radius: 5px;
      transition: 0.3s;
    }

    .profile-section .buttons button:hover {
      background-color: #ff9900;
      color: white;
    }

    .services {
      display: grid;
      grid-template-columns: repeat(2, 1fr);
      gap: 20px;
      margin-left: 40px;
    }

    .card {
      background: white;
      padding: 20px;
      border-radius: 10px;
      text-align: center;
      box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }

    .card h3 {
      margin-bottom: 10px;
    }

    .card a {
      display: inline-block;
      text-decoration: none;
      margin-top: 10px;
      font-weight: bold;
      color: #0047ab;
      border-bottom: 2px solid #0047ab;
    }

    .card.view {
      border-bottom: 4px solid orange;
    }

    .card.update {
      border-bottom: 4px solid #00cfe8;
    }

    .card.software {
      border-bottom: 4px solid #0047ab;
    }

    .card.application {
      border-bottom: 4px solid #ffc107;
    }
  </style>
</head>
<body>

<body class="bg-gray-100 font-sans">

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

<div class="container">
  <!-- Left profile section -->
  <div class="profile-section">
<img src="images/logo.png" alt="Profile Image" style="display: block; margin: 0 auto;">
    <h2>ID: ${lecuser.id}</h2>
    <h2>Name: ${lecuser.name}</h2>
    <h2>Email: ${lecuser.gmail}</h2>
    <h2>Phone: ${lecuser.phone}</h2>

    <div class="buttons">
      <a href="LecUpdateProfile.jsp?id=${lecuser.id}&name=${lecuser.name}&gmail=${lecuser.gmail}&password=${lecuser.password}&phone=${lecuser.phone}">
        <button>Update</button>
      </a>
      <form action="LecAccountDeleteServlet" method="post" style="display:inline;">
        <input type="hidden" name="id" value="${lecuser.id}" />
        <button>Delete</button>
      </form>
    </div>
  </div>

  <!-- Right services section -->
  <div class="services">
  <div class="card view">
    <div style="font-size: 40px;">📢</div>
    <h3>View Announcements</h3>
    <a href="AnnGetAllServlet">Visit</a>
  </div>
  <div class="card update">
    <div style="font-size: 40px;">⚙️</div>
    <h3>Update Account</h3>
    <a href="LecUpdateProfile.jsp?id=${lecuser.id}&name=${lecuser.name}&gmail=${lecuser.gmail}&password=${lecuser.password}&phone=${lecuser.phone}">Visit</a>
  </div>
  <div class="card software">
    <div style="font-size: 40px;">💻</div>
    <h3>FAQ</h3>
    <a href="FAQGetAllServlet">Visit</a>
  </div>
  <div class="card application">
    <div style="font-size: 40px;">🗂️</div>
    <h3>Application</h3>
    <a href="#">Visit</a>
  </div>
</div>

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