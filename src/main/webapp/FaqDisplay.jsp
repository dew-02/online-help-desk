<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
    
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Manage FAQs</title>
  <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
  <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
  <style>
     
        .footer {
            background-color: #1ac9ff;
            color: white;
            text-align: center;
            padding: 20px;
            margin-top: 40px;
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
<div class="flex min-h-screen">
  <!-- Sidebar -->
  <aside class="w-64  bg-gradient-to-b from-indigo-700 to-blue-700 text-white shadow-md">
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
      <h1 class="text-2xl font-semibold text-indigo-700">Manage FAQs</h1>
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
      <div class="max-w-6xl mx-auto bg-white p-6 rounded shadow">
        <div class="flex justify-between items-center mb-4">
          <h2 class="text-lg font-semibold text-gray-700">FAQ Records List</h2>
          <a href="createFaq.jsp" class="bg-blue-500 text-white px-4 py-2 rounded hover:bg-blue-600">
            <i class="fas fa-plus mr-2"></i> Create New Record
          </a>
        </div>

        <div class="overflow-x-auto">
          <table class="min-w-full table-auto border-collapse">
            <thead class="bg-gray-200 text-gray-700">
              <tr>
                <th class="py-2 px-4 border">ID</th>
                <th class="py-2 px-4 border">Question</th>
                <th class="py-2 px-4 border">Answer</th>
                <th class="py-2 px-4 border text-center">Action</th>
              </tr>
            </thead>
           
            <tbody class="text-gray-700">
             <c:forEach var="faq" items="${allFaqs}">
              <tr class="hover:bg-gray-100 text-center">
                <td class="py-6 px-4 ">${faq.id}</td>
                <td class="py-6 px-4 ">${faq.question}</td>
                <td class="py-6 px-4 ">${faq.answer}</td>
                <td class="px-6 py-4  space-x-2">
                
<div class="flex justify-center center space-x-2">
  <a href="FaqUpdate.jsp?id=${faq.id}&question=${faq.question}&answer=${faq.answer}"
     class=" h-8 bg-yellow-300 hover:bg-yellow-400 text-white text-sm px-2 py-1 rounded-sm inline-flex items-center">
    <i class="fas fa-edit mr-1"></i> Edit
  </a>

  <form action="FAQDeleteServlet" method="post">
    <input type="hidden" name="id" value="${faq.id}">
    <button type="submit"
            class="w-15 h-8 text-center bg-red-500 hover:bg-red-600 text-white text-sm px-2 py-1 rounded-sm inline-flex items-center">
      <i class="fas fa-trash-alt mr-1"></i> Delete
    </button>
  </form>
</div>


                </td>
              </tr>
                </c:forEach>
            </tbody>
            
          </table>
        </div>
      </div>
    </main>
  </div>
</div>



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