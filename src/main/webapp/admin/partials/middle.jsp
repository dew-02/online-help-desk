<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <script src="https://cdn.tailwindcss.com"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>
</head>

<body class="bg-gray-100 text-gray-800 flex flex-col min-h-screen">

  <!-- Header -->
  <header class="flex justify-between items-center bg-[#003366] text-white p-4">
    <div class="logo flex items-center text-2xl font-semibold">
    <img src="images/logo.png" class="h-12 w-12 rounded-full mt-4" alt="Logo" />


      Online Education Help Desk
    </div>
    <nav>
    <img src="admin/assets/picture/<%= picture %>" alt="Staff Profile" class="w-10 h-10 rounded-full object-cover border-2 border-gray-300 ml-2" />
    <span class="text-gray-600"><%= name %></span>
    
 <a href="${pageContext.request.contextPath}/admin/adminhome.jsp" 
   class="bg-white text-[#003366] px-4 py-2 mx-1 rounded hover:bg-[#0077cc] hover:text-white">
  Home
</a>

      <a href="#" class="bg-white text-[#003366] px-4 py-2 mx-1 rounded hover:bg-[#0055aa] hover:text-white">Profile</a>
    <button class="bg-white text-[#003366] px-4 py-2 mx-1 rounded hover:bg-[#0055aa] hover:text-white"
  onclick="window.location.href='admin?action=logout';">
  Logout
</button>



    </nav>
  </header>