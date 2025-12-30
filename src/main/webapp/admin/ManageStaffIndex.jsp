<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ include file="./partials/top.jsp"%>
    
 <title>Staff Account</title>
 
 <%@ include file="./partials/middle.jsp"%>

  <!-- Main Content -->
  <main class="flex-1 p-6">
    <div class="flex justify-end mb-4">
      <button class="bg-blue-500 text-white px-4 py-2 rounded hover:bg-blue-600" onclick="window.location.href='admin?action=create';">
        <i class="fas fa-plus mr-2"></i>Create New Record
        </button>
    </div>

     <!-- Table -->
     <div class="bg-white shadow rounded-lg overflow-hidden">
        <table class="min-w-full text-sm text-left">
          <thead class="bg-gray-100 text-gray-700">
            <tr>
              <th class="px-6 py-3">ID</th>
              <th class="px-6 py-3">Picture</th>
              <th class="px-6 py-3">Name</th>
              <th class="px-6 py-3">Email</th>
              <th class="px-6 py-3 text-center">Actions</th>
            </tr>
          </thead>
          <tbody class="divide-y">
          <c:forEach var="staff" items="${staffs}">
            <tr>
              <td class="px-6 py-4">${staff.id}</td>
              <td class="border p-3 flex ">
                <img src="admin/assets/picture/${staff.fileName}" alt="Staff Profile" class="w-8 h-8 rounded-full" />
              </td>
              <td class="px-6 py-4">${staff.name}</td>
              <td class="px-6 py-4">${staff.email}</td>
              <td class="px-6 py-4 text-center space-x-2">
               <button class="text-red-600 hover:text-red-800" onclick="confirmAction('admin?action=edit&id=${staff.id}')">
                    <i class="fas fa-trash-alt"></i> Edit
                  </button>
                  <button class="text-red-600 hover:text-red-800" onclick="confirmAction('admin?action=delete&id=${staff.id}')">
                    <i class="fas fa-trash-alt"></i> Delete
                  </button>
              </td>
            </tr>
           </c:forEach>
            <!-- Add more rows here -->
          </tbody>
        </table>
    </div>
  </main>
<script>
  function confirmAction(url) {
    if (confirm("Are you sure you want to proceed?")) {
      window.location.href = url;
    }
  }
</script>

 <%@ include file="./partials/last.jsp"%>

</body>
</html>

