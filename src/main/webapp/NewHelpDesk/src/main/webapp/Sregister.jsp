<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!-- For c: if -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EduHelp - Registration</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Arial', sans-serif;
        }
        
        body {
            background-color: #f8f8f8;
            
            background-attachment: fixed;
            min-height: 100vh;
        }
        
        .topbar {
            background-color: rgba(26, 201, 255, 0.8);
            backdrop-filter: blur(15px);
            color: white;
            padding: 15px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 2px 15px rgba(0, 0, 0, 0.1);
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
            max-width: 600px;
            margin: 30px auto;
            background-image: linear-gradient(to right bottom, #73e0ff, #ffffff);
            backdrop-filter: blur(10px);
            border-radius: 20px;
            box-shadow: 0 8px 32px rgba(0, 0, 0, 0.1);
            padding: 30px;
            border: 1px solid rgba(255, 255, 255, 0.3);
        }
        
        .page-title {
            font-size: 24px;
            margin-bottom: 20px;
            color: #333;
            padding-bottom: 10px;
            border-bottom: 1px solid rgba(238, 238, 238, 0.5);
            text-align: center;
            font-weight: 600;
        }
        
        .form-group {
            margin-bottom: 20px;
        }
        
        .form-label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: #333;
            font-size: 14px;
        }
        
        .form-input, .form-select {
            width: 100%;
            padding: 12px;
            border: 1px solid rgba(221, 221, 221, 0.5);
            border-radius: 8px;
            font-size: 15px;
            background-color: rgba(255, 255, 255, 0.7);
            transition: all 0.3s ease;
        }
        
        .form-input:focus, .form-select:focus {
            outline: none;
            border-color: #1ac9ff;
            box-shadow: 0 0 0 3px rgba(26, 201, 255, 0.2);
            background-color: rgba(255, 255, 255, 0.9);
        }
        
        .form-hint {
            display: block;
            font-size: 12px;
            color: #777;
            margin-top: 5px;
        }
        
        .submit-btn {
            background-color:#0BDA51 ;
            color: white;
            border: none;
            padding: 12px 20px;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
            transition: all 0.3s ease;
            width: 100%;
            font-weight: 600;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
        }
        
        .submit-btn:hover {
            background-color:#0DDC53;
            box-shadow: 0 4px 12px rgba(21, 182, 230, 0.3);
            transform: translateY(-2px);
        }
        
        .footer {
            background-color: rgba(26, 201, 255, 0.8);
            backdrop-filter: blur(10px);
            color: white;
            text-align: center;
            padding: 20px;
            margin-top: 40px;
            border-top: 1px solid rgba(255, 255, 255, 0.2);
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
            transform: scale(1.2);
        }
        
        .form-row {
            display: flex;
            gap: 15px;
        }
        
        .form-row .form-group {
            flex: 1;
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
        <a href="faq.html" class="nav-link">
            <i class="fas fa-question-circle"></i> FAQ
        </a>
    </div>
    
    <div class="container">
        <h2 class="page-title">Register</h2>
        
        <form action="StudentRegisterServlet" method="post">
            <div class="form-group">
                <label class="form-label">ID No:</label>
                <input type="text" name= "regno" class="form-input" required>
            </div>
            
            <div class="form-group">
                <label class="form-label">Name:</label>
                <input type="text" name="name" class="form-input" required>
                <span class="form-hint">Username: 4+ characters</span>
            </div>
            
            <div class="form-group">
                <label class="form-label">Faculty:</label>
                <select class="form-select" name="faculty" required>
                    <option value="" selected disabled>Select Faculty</option>
                    <option value="engineering">Engineering</option>
                    <option value="computer_science">Computing</option>
                    <option value="business">Business</option>
                    <option value="art">Art</option>
                    <option value="science">Science</option>
                    
                </select>
            </div>
            
            <div class="form-row">
                <div class="form-group">
                    <label class="form-label">Year:</label>
                    <select class="form-select" name="year" required>
                        <option value="" selected disabled>Select Year</option>
                        <option value="1">1st Year</option>
                        <option value="2">2nd Year</option>
                        <option value="3">3rd Year</option>
                        <option value="4">4th Year</option>
                    </select>
                    
                </div>
                
                <div class="form-group">
                    <label class="form-label">Semester:</label>
                    <select class="form-select" name="semester" required>
                        <option value="" selected disabled>Select</option>
                        <option value="1">1st Semester</option>
                        <option value="2">2nd Semester</option>
                        
                    </select>
                </div>
            </div>
            
            <div class="form-group">
                <label class="form-label">Email:</label>
                <input type="email" name="email" class="form-input" required>
            </div>
            
            <div class="form-group">
                <label class="form-label">Password:</label>
                <input type="password" name="password" class="form-input" required>
                <span class="form-hint">4 Digits</span>
            </div>
            
            <!-- Display error message if register fails -->
        	<c:if test="${not empty error}">
            	<div class="bg-red-500/20 text-red-400 border border-red-500 rounded-lg p-4 mb-6">
                	<p>${error}</p>
            	</div>
        	</c:if>
            
            <button type="submit" name="submit" class="submit-btn">
                <i class="fas fa-user-plus"></i> Register
            </button>
        </form>
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