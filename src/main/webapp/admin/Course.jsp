<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="./partials/top.jsp"%>

  <title>Course Page</title>
  <script src="https://cdn.tailwindcss.com"></script>
</head>

<body class="flex flex-col min-h-screen bg-gray-100 text-center">

  <!-- Header -->
  <header class="flex justify-between items-center bg-[#003366] text-white p-4">
    <div class="flex items-center text-2xl font-semibold">
      <img src="${pageContext.request.contextPath}/images/logo.png" class="h-12 w-12 rounded-full mt-4" alt="Logo" />



      Online Education Help Desk
    </div>
    <nav>
    <button class="bg-white text-[#003366] px-4 py-2 mx-1 rounded hover:bg-[#0077cc] hover:text-white">Home</button>
   
      <button class="bg-white text-[#003366] px-4 py-2 mx-1 rounded hover:bg-[#0077cc] hover:text-white">Profile</button>
   <a href="${pageContext.request.contextPath}/admin?action=create" class="bg-white text-[#003366] px-4 py-2 mx-1 rounded hover:bg-[#0077cc] hover:text-white"> Login</a>


    </nav>
  </header>

  <!-- Background Image -->
  <div class="relative">
    <img src="background.jpeg" alt="Background Image" class="absolute top-0 left-0 w-full h-full object-cover -z-10" />
  </div>

  <!-- Main -->
  <main class="flex justify-center items-center flex-grow p-8 min-h-[355px]">
    <div class="flex flex-wrap justify-center gap-20 w-full max-w-5xl mx-auto">
      
   <a href="${pageContext.request.contextPath}">
  <button class="bg-[#0077cc] hover:bg-[#0055a4] text-white font-bold px-12 py-12 rounded-lg text-lg w-56 flex flex-col items-center shadow-lg">
    IT
    <img class="h-20 w-20 rounded-full mt-4" src="${pageContext.request.contextPath}/images/c1.png" alt="picture">
  </button>
</a>

<a href="${pageContext.request.contextPath}">
  <button class="bg-[#0077cc] hover:bg-[#0055a4] text-white font-bold px-12 py-12 rounded-lg text-lg w-56 flex flex-col items-center shadow-lg">
    Business 
    <img class="h-20 w-20 rounded-full mt-4" src="${pageContext.request.contextPath}/images/c2.png" alt="picture">
  </button>
</a>

      <a href="${pageContext.request.contextPath}">
  <button class="bg-[#0077cc] hover:bg-[#0055a4] text-white font-bold px-12 py-12 rounded-lg text-lg w-56 flex flex-col items-center shadow-lg">
    Engineering
    <img class="h-20 w-20 rounded-full mt-4" src="${pageContext.request.contextPath}/images/c3.png" alt="picture">
  </button>
</a>

    </div>
  </main>

   <%@ include file="./partials/last.jsp"%>
</body>
</html>