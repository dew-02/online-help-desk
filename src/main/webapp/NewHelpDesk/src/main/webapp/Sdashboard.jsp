<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!--c: for -->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EduHelp - Dashboard</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Arial', sans-serif;
        }
        
        body {
            background-color: #f5f5f5;
        }
        
        .topbar {
            background-color: #1ac9ff;
            color: white;
            padding: 15px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        
        .logo {
            font-size: 24px;
            font-weight: bold;
            cursor: pointer;
            color: #ffffff;
            text-decoration: none;
        }
        
        .user-info {
            display: flex;
            align-items: center;
            gap: 15px;
        }
        
        .user-avatar {
            width: 35px;
            height: 35px;
            background-color: white;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            color: #333;
            cursor: pointer;
            
        }
        
        .logout-btn {
            background-color: white;
            color: #1ac9ff;
            border: none;
            padding: 8px 15px;
            border-radius: 4px;
            cursor: pointer;
            font-weight: bold;
            transition: all 0.3s ease;
        }
        
        .logout-btn:hover {
            background-color: #f0f0f0;
        }
        
        .navigation {
            background-color: rgba(255, 255, 255, 0.9);
            backdrop-filter: blur(10px);
            padding: 10px 20px;
            display: flex;
            gap: 20px;
            box-shadow: 0 2px 15px rgba(0, 0, 0, 0.05);
        }
        
        .nav-link {
            text-decoration: none;
            color: #555;
            padding: 8px 15px;
            border-radius: 4px;
            transition: all 0.3s;
        }
        
        .nav-link:hover {
            background-color: #f5f5f5;
            color: #1ac9ff;
        }
        
        .nav-link.active {
            background-color: #1ac9ff;
            color: white;
        }
        
        .container {
            max-width: 1000px;
            margin: 30px auto;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
        }
        
        .dashboard-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
            padding-bottom: 10px;
            border-bottom: 1px solid #eee;
        }
        
        .page-title {
            font-size: 24px;
            color: #333;
        }
        
        .action-buttons {
            display: flex;
            gap: 15px;
        }
        
        .action-btn {
            padding: 8px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-weight: bold;
            display: flex;
            align-items: center;
            gap: 8px;
            transition: all 0.3s ease;
            
        }
        a{
          text-decoration: none;
        }
        
        .raise-ticket-btn {
            background-color: #1ac9ff;
            color: white;
        }
        
        .view-course-btn {
            background-color: white;
            color: #333;
            border: 1px solid #ddd;
        }
        
        .raise-ticket-btn:hover {
            background-color: #15b6e6;
           
        }
        
        .view-course-btn:hover {
            background-color: #f5f5f5;
        }
        
        .ticket-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        
        .ticket-table th, .ticket-table td {
            padding: 12px 15px;
            text-align: center;
            border-bottom: 1px solid #eee;
        }
        
        .ticket-table th {
            background-color: #f9f9f9;
            font-weight: bold;
            color: #333;
        }
        
        .ticket-table tr:hover {
            background-color: #f5f5f5;
        }
        
        .action-icons {
            display: flex;
            gap: 10px;
            justify-content:center;
        }
        
        .edit-btn {
            background-color: #ffda03;
            color: white;
            border: none;
            padding: 5px 10px;
            border-radius: 4px;
            display: flex;
            align-items: center;
            gap: 5px;
            cursor: pointer;
            transition: all 0.3s ease;
            font-size: 14px;
        }
        
        .delete-btn {
            background-color: red;
            color: white;
            border: none;
            padding: 5px 10px;
            border-radius: 4px;
            display: flex;
            align-items: center;
            gap: 5px;
            cursor: pointer;
            transition: all 0.3s ease;
            font-size: 14px;
        }
        .view-btn {
            background-color: #0DDC53;
            color: white;
            border: none;
            padding: 5px 10px;
            border-radius: 4px;
            display: flex;
            align-items: center;
            gap: 5px;
            cursor: pointer;
            transition: all 0.3s ease;
            font-size: 14px;
        }
        
        .edit-btn:hover {
            background-color: #e5c400;
        }
        
        .delete-btn:hover {
            background-color: #e60000;
        }
        
        .view-btn:hover {
            background-color:#32CD32;
        }
        
        .faq-section {
            margin-top: 8px;
        }
        
        .faq-title {
            font-size: 24px;
            margin-bottom: 15px;
            color: #333;
        }
        
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
<body>
    <div class="topbar">
        
        <div class="logo">
          <a href="home.html" class="logo">
            <i class="fas fa-graduation-cap"></i> EduHelp
          </a>
        </div>
        
        <div class="user-info">
            
              <a href="student-profile.html" class="user-avatar">
                <i class="fas fa-user"></i>
              </a>
            
            <button class="logout-btn">
                <i class="fas fa-sign-out-alt"></i> Logout
            </button>
        </div>
    </div>
    
    <div class="navigation">
        <a href="dashboard.html" class="nav-link">
            <i class="fas fa-home"></i> Home
        </a>
        <a href="raise-ticket.html" class="nav-link">
            <i class="fas fa-ticket-alt"></i> Raise Ticket
        </a>
        <a href="view-course.html" class="nav-link">
            <i class="fas fa-book-open"></i> View Course
        </a>
        <a href="faq.html" class="nav-link">
            <i class="fas fa-question-circle"></i> FAQ
        </a>
    </div>
    
    <div class="container">
        <div class="dashboard-header">
            <h2 class="page-title">Dashboard</h2>
            <div class="action-buttons">
              <a href= Sraise-ticket.jsp>
                <button class="action-btn raise-ticket-btn" onclick="window.location.href='Sdashboard?action=create'">
                    <i class="fas fa-ticket-alt"></i> Raise Ticket
                </button>
              </a>
              <a href= view-course.html>
                <button class="action-btn view-course-btn">
                    View Course
                </button>
              </a>
            </div>
        </div>
        
        <table class="ticket-table">
            <thead>
                <tr>
                    <th>Reference</th>
                    <th>Subject</th>
                    <th>Date</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
               <!--  <tr>
                    <td>AE-10</td>
                    <td>About Subject</td>
                    <td>2025.03.02</td>
                    <td>
                        <div class="action-icons">
                            <button class="edit-btn">
                                <i class="fas fa-edit"></i> Edit
                            </button>
                            <button class="delete-btn">
                                <i class="fas fa-trash"></i> Delete
                            </button>
                            <button class="view-btn">
                                <i class="fas fa-eye"></i> View Response
                            </button>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>AE-11</td>
                    <td>About Exam</td>
                    <td>2025.01.01</td>
                    <td>
                        <div class="action-icons">
                            <button class="edit-btn">
                                <i class="fas fa-edit"></i> Edit
                            </button>
                            <button class="delete-btn">
                                <i class="fas fa-trash"></i> Delete
                            </button>
                            <button class="view-btn">
                                <i class="fas fa-eye"></i> View Response
                            </button>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>AE-12</td>
                    <td>About payment</td>
                    <td>2024.12.12</td>
                    <td>
                        <div class="action-icons">
                            <button class="edit-btn">
                                <i class="fas fa-edit"></i> Edit
                            </button>
                            <button class="delete-btn">
                                <i class="fas fa-trash"></i> Delete
                            </button>
                            <button class="view-btn">
                                <i class="fas fa-eye"></i> View Response
                            </button>
                        </div>
                    </td>
                </tr> -->
                
                <c:forEach var="ticket" items="${allTicket}">  <!-- variable,Table -->
                <tr>
                    <td>${ticket.id}</td>
                    <td>${ticket.subject}</td>
                    <td>${ticket.raisedate}</td>
                    <td>
                        <div class="action-icons">
                        	
                        	<a href="Sedit-ticket.jsp?id=${ticket.id}&question=${ticket.question}">
                            <button class="edit-btn">
                                <i class="fas fa-edit"></i> Edit
                            </button>
                            </a>
                            
                            <form action="DeleteTicketServlet" method="post">
                            <input type="hidden" name="id" value="${ticket.id}" />
                            <button class="delete-btn"> 	 <!-- onclick="confirmAction('admin?action=delete&id=${ticket.TQID}')" -->
                                <i class="fas fa-trash"></i> Delete
                            </button>
                            </form>
                            
                            <a href=Sview-response.jsp>
                            <button class="view-btn">
                                <i class="fas fa-eye"></i> View Response
                            </button>
                            </a>
                        </div>
                    </td>
                </tr>
                </c:forEach>
                
            </tbody>
        </table>
        
       <!--   <script>
        	function confirmAction(url){
        		if(confirm("Are you sure you want to Delete?")){
        			window.location.href=url;
        		}
        	} 
		</script>  -->
        
    </div>
     <div class="container">   
        <div class="faq-section">
            <h3 class="faq-title">FAQ</h3>
            <!-- FAQ content would go here -->
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
