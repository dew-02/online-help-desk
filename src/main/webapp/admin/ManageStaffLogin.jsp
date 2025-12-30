<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Admin Login - Online Education Help Desk</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>
</head>
<body class="bg-gray-100 min-h-screen flex items-center justify-center">

  <!-- Login Box -->
  <div class="bg-white shadow-lg rounded-lg max-w-md w-full p-8 border-t-8 border-orange-600">
    
   <!-- Logo and Title -->
<div class="flex flex-col items-center justify-center text-center mb-6">
  <img class="h-20 w-20 rounded-full mt-4 mb-2" src="${pageContext.request.contextPath}/images/logo.png" alt="Logo">
  <h2 class="text-2xl font-bold text-blue-900">Admin Login</h2>
  <p class="text-sm text-gray-500">Online Education Help Desk</p>
</div>

    <!-- Login Form -->
    <form action="${pageContext.request.contextPath}/admin/login" method="POST">
      <input type="hidden" name="action" value="login">

      <div class="mb-4">
        <label class="block text-sm font-medium text-gray-700 mb-1">Username</label>
        <input type="email" id="email" name="email" required
               class="w-full px-4 py-2 border rounded focus:outline-none focus:ring-2 focus:ring-orange-600">
      </div>

      <div class="mb-6">
        <label class="block text-sm font-medium text-gray-700 mb-1">Password</label>
        <input type="password" id="password" name="password" required
               class="w-full px-4 py-2 border rounded focus:outline-none focus:ring-2 focus:ring-orange-600">
      </div>
      
      <c:if test="${not empty sessionScope.error}">
  <div class="bg-red-500/20 text-red-400 border border-red-500 rounded-lg p-4 mb-6">
    <p>${sessionScope.error}</p>
  </div>
  <c:remove var="error" scope="session" />
</c:if>


      

      <button type="submit"
              class="w-full bg-orange-600 hover:bg-orange-700 text-white py-2 rounded text-lg font-semibold">
        <i class="fas fa-sign-in-alt mr-2"></i>Login
      </button>
    </form>

    <!-- Footer Note -->
    <p class="text-sm text-center text-gray-500 mt-6">
      &copy; 2025 Online Education Help Desk
    </p>
  </div>

</body>
</html>
