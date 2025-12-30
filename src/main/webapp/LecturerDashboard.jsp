<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
</style>
</head>
<body class="bg-gray-100 font-sans">

 <!-- Navbar -->
  <nav class="bg-white shadow p-4 flex justify-between items-center">
    <div class="text-xl font-bold text-orange-600">Announcements</div>
  
    <div class="flex items-center gap-4">
      <!-- Profile Section with Image and Text -->
      <div class="flex items-center gap-2 text-right">
        <img src="C:\Users\ASUS\OneDrive\Desktop\me.jpg" alt="Profile Picture" class="w-10 h-10 rounded-full border-2 border-orange-500" />
        <div>
          <div class="text-sm font-semibold">Dr. John Doe</div>
          <div class="text-xs text-gray-500">Computer Science Dept</div>
        </div>
      </div>
  
      <!-- Logout Button -->
      <button class="bg-red-500 hover:bg-red-600 text-white px-3 py-1 rounded">
        <i class="fas fa-sign-out-alt"></i> Logout
      </button>
    </div>
  </nav>

  <!--new added part duullllaaaaa-->
  <div class="navigation">
    <a href="LecturerDashboard.jsp" class="nav-link">
        <i class="fas fa-home"></i> Home
    </a>
    <a href="display.jsp" class="nav-link">
        <i class="fas fa-book-open"></i> Announcements
    </a>
    <a href="StudentQueries.html" class="nav-link">
        <i class="fas fa-ticket-alt"></i> Student Queries
    </a>
    <a href="faq.html" class="nav-link">
        <i class="fas fa-question-circle"></i> FAQ
    </a>
</div>

<br>


<!-- Search Input -->
<input
  type="text"
  id="searchInput"
  placeholder="Search..."
  class="border px-3 py-2 rounded mb-4 w-64"
/>


<!-- Announcement Cards Wrapper -->
<div class="space-y-4" id="announcementContainer">
  <c:forEach var="announcement" items="${allAnnouncements}">
    <div class="announcement-card flex border bg-gray-100 rounded shadow">
      
      <!-- Date Section -->
      <div class="bg-orange-500 text-white p-4 text-center font-bold w-24 flex flex-col justify-center items-center">
        <span>${announcement.date.split(" ")[0]}</span>
        <span class="text-sm">${announcement.date.split(" ")[1]}</span>
      </div>

      <!-- Main Content -->
      <div class="flex-1 p-4">
        <div class="text-lg font-bold text-gray-700">${announcement.title}</div>
        <div class="text-sm text-gray-600">${announcement.content}</div>
        <div class="text-xs text-gray-500 mt-1">ID: ${announcement.annid}</div>
      </div>

      
    </div>
  </c:forEach>
</div>

<!-- JavaScript: Card-Based Search Filter -->
<script>
  function filterCards() {
    var input = document.getElementById("searchInput");
    var filter = input.value.toUpperCase();
    var cards = document.querySelectorAll(".announcement-card");

    cards.forEach(function (card) {
      var text = card.textContent || card.innerText;
      if (text.toUpperCase().indexOf(filter) > -1) {
        card.style.display = "";
      } else {
        card.style.display = "none";
      }
    });
  }

  document.getElementById("searchInput").addEventListener("input", filterCards);
</script>
 
 
 
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