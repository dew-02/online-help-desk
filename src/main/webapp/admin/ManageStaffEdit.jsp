<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="./partials/top.jsp"%> 

<title>Edit Staff Details</title>

<%@ include file="./partials/middle.jsp"%>

<body class="bg-gray-100 h-screen">

  <div class="flex h-screen">
    

    <!-- Main Content -->
    <div class="flex-1 flex flex-col">
     
      <!-- Form Content -->
      <main class="p-6 overflow-auto">
        <div class="bg-white shadow rounded-lg p-6 max-w-3xl mx-auto">Edit Record<br><br>

           <form class="space-y-6" action="admin" method="post" enctype="multipart/form-data">
          
           <!-- Hidden Inputs for Action and Admin ID -->
            <input type="hidden" name="action" value="update">
            <input type="hidden" name="id" value="${staff.id}">
          
          
             <!-- name -->
  <div>
    <label for="name" class="block text-sm font-medium text-gray-700">Name</label>
    <input id="name" name="name" value="${staff.name}" type="text" required
           class="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:ring-orange-500 focus:border-orange-500">
  </div>
            
             <!-- Email -->
   <div>
    <label for="email" class="block text-sm font-medium text-gray-700">Email</label>
    <input id="email" name="email" value="${staff.email}" type="email" required
           class="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:ring-orange-500 focus:border-orange-500">
  </div>

  <!-- Password -->
  <div>
    <label for="password" class="block text-sm font-medium text-gray-700">Password</label>
    <input id="password" name="password" value="${staff.password}" type="password" required
           class="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:ring-orange-500 focus:border-orange-500">
  </div>

  <!-- Profile Picture -->
  <div>
    <label for="fileName" class="block text-sm font-medium text-gray-700">Profile Picture</label>
    <input id="fileName" name="fileName" type="file" accept="image/*" value="${staff.fileName}"
           class="mt-1 block w-full text-sm text-gray-700 file:mr-4 file:py-2 file:px-4 file:rounded-md file:border-0 file:text-white file:bg-orange-600 hover:file:bg-orange-700">
  </div>
  
   <!-- Action Buttons -->
           <div class="flex justify-end gap-4 pt-4">
    <a href="admin" class="px-4 py-2 bg-gray-200 text-gray-800 rounded hover:bg-gray-300">
      <i class="fas fa-times mr-1"></i> Cancel
    </a>
    <button type="submit" class="px-4 py-2 bg-orange-600 text-white rounded hover:bg-orange-700">
      <i class="fas fa-check mr-1" onclick="window.location.href='admin';"></i> Save Records
    </button>
  </div>

              </select>
            </div>

           
          </form>
        </div>
      </main>
    </div>
  </div>

</body>
</html>

    </main>
</div>
    
    <%@ include file="./partials/last.jsp"%>

</body>
</html>