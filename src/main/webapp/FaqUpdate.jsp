<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Update Page</title>
 <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
  <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <style>
    .footer {
      background-color: #1ac9ff;
      color: white;
      text-align: center;
      padding: 20px;
    }

    .footer-content {
      max-width: 800px;
      margin: 0 auto;
    }

    .footer h3 {
      margin-bottom: 10px;
    }

    .footer p {
      margin-bottom: 5px;
    }

    .social-icons {
      margin-top: 15px;
      margin-bottom: 10px;
    }

    .social-icons a {
      color: white;
      margin: 0 10px;
      font-size: 20px;
      transition: all 0.3s ease;
    }

    .social-icons a:hover {
      color: #f0f0f0;
    }
  </style>
</head>
<body class="bg-gray-100 font-sans">
<form action ="FAQUpdateServlet" method ="post">
<%
 String id = request.getParameter("id");
 String question= request.getParameter("question");
 String answer = request.getParameter("answer");
%>

    <div class="flex min-h-screen">
        <!-- Sidebar -->
        <aside class="w-64 bg-gradient-to-b from-indigo-700 to-blue-700 text-white shadow-md">
          <div class="p-6 font-bold text-2xl border-b border-indigo-500">Staff Panel</div>
          <nav class="mt-4 space-y-1">
            <a href="#" class="block py-2.5 px-6 hover:bg-indigo-600 rounded">
              <i class="fas fa-tachometer-alt mr-2"></i> Dashboard
            </a>
            <a href="#" class="block py-2.5 px-6 hover:bg-indigo-600 rounded">
              <i class="fas fa-users mr-2"></i> Users
            </a>
            <a href="#" class="block py-2.5 px-6 hover:bg-indigo-600 rounded">
              <i class="fas fa-cog mr-2"></i> Settings
            </a>
          </nav>
        </aside>
    <!-- Main Content -->
    <div class="flex-1 flex flex-col">
    
     <!-- Top Bar -->
     <header class="bg-white shadow px-6 py-4 flex justify-between items-center border-b-4 border-indigo-400">
        <h1 class="text-2xl font-semibold text-indigo-700">Update FAQ</h1>
        <div class="flex items-center space-x-4">
          <img src="img1.jpeg" alt="Admin Profile" class="w-10 h-10 rounded-full object-cover border-2 border-indigo-500">
          <span class="text-gray-700 font-medium">SupportStaff</span>
          <button class="text-red-600 hover:text-red-800 font-medium">
            <i class="fas fa-sign-out-alt mr-1"></i> Logout
          </button>
        </div>
      </header>

      <!-- Content Area -->
      <main class="p-6">
        <div class="max-w-2xl mx-auto bg-white p-8 rounded shadow">
          <h2 class="text-lg font-semibold text-gray-700 mb-4"> Record Form</h2>
          <form class="space-y-6">
             <div>
              <label class="block text-gray-700">Faq Id</label>
              <input type="text" id="id" name="id" value=<%=id%> placeholder="Enter id"class="w-full mt-1 px-4 py-2 border rounded focus:outline-none focus:ring-2 focus:ring-blue-500" id="id" readonly>
            </div>
        
            <div>
              <label class="block text-gray-700">Question</label>
              <input type="text" value="<%=question%>" class="w-full mt-1 px-4 py-2 border rounded focus:outline-none focus:ring-2 focus:ring-blue-500" id="question" name="question" value=<%=question%> placeholder="Enter Question" required>
            </div>
            <div>
              <label class="block text-gray-700">Answer</label>
              <input type="text" value="<%=answer%>" class="w-full mt-1 px-4 py-2 border rounded focus:outline-none focus:ring-2 focus:ring-blue-500" id="answer" name="answer" value=<%=answer%> placeholder="Enter Answer" required>
            </div>
            
            <div class="flex justify-end space-x-4">
              <button type="submit" class="bg-green-500 text-white px-4 py-2 rounded hover:bg-green-600">
                <i class="fas fa-save mr-2"></i>Update
              </button>
            </div>
            
          </form>
         
        </div>
      </main>
      
    </div>
  </div>
</form>
<div class="footer">
        <div class="footer-content">
            <h3>EduHelp Eduation Help Desk</h3>
            <p>We're here to help you succeed in your academic journey</p>
            <p>Contact: support@eduHelpDesk.edu | Phone: (123) 456-7890</p>
            <div class="social-icons">
                <a href="#"><i class="fab fa-facebook"></i></a>
                <a href="#"><i class="fab fa-twitter"></i></a>
                <a href="#"><i class="fab fa-instagram"></i></a>
                <a href="#"><i class="fab fa-linkedin"></i></a>
            </div>
            <p>&copy; 2025 EduHelp. All rights reserved.</p>
        </div>
    </div>
</body>
</html>