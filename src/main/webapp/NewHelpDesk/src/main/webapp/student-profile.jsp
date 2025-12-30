<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EduHelp - Profile</title>
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
            max-width: 800px;
            margin: 30px auto;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
        }
        
        .profile-header {
            display: flex;
            align-items: center;
            margin-bottom: 30px;
            padding-bottom: 20px;
            border-bottom: 1px solid #eee;
        }
        
        .profile-avatar {
            width: 100px;
            height: 100px;
            background-color: #f0f0f0;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 40px;
            color: #1ac9ff;
            margin-right: 20px;
        }
        
        .profile-title {
            flex-grow: 1;
        }
        
        .profile-title h2 {
            font-size: 24px;
            color: #333;
            margin-bottom: 5px;
        }
        
        .profile-title p {
            color: #777;
            font-size: 16px;
        }
        
        .profile-details {
            margin-bottom: 30px;
        }
        
        .detail-group {
            margin-bottom: 20px;
            display: flex;
        }
        
        .detail-label {
            width: 120px;
            font-weight: bold;
            color: #333;
        }
        
        .detail-value {
            flex-grow: 1;
            color: #555;
        }
        
        .edit-profile-btn {
            background-color: #1ac9ff;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
            display: inline-flex;
            align-items: center;
            gap: 10px;
            transition: all 0.3s ease;
        }
        
        .edit-profile-btn:hover {
            background-color: #15b6e6;
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
        .center{
        	display: flex;
        	justify-content: center;
        	align-item: center;
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
        <div class="profile-header">
            <div class="profile-avatar">
                <i class="fas fa-user"></i>
            </div>
            <div class="profile-title">
                <h2>Student Profile</h2>
                <p>Manage your personal information</p>
            </div>
        </div>
        
        <div class="profile-details">
            <div class="detail-group">
                <div class="detail-label">ID No:</div>
                <div class="detail-value">ST12345</div>
            </div>
            
            <div class="detail-group">
                <div class="detail-label">Name:</div>
                <div class="detail-value">John Smith</div>
            </div>
            
            <div class="detail-group">
                <div class="detail-label">Faculty:</div>
                <div class="detail-value">Computer Science</div>
            </div>
            
            <div class="detail-group">
                <div class="detail-label">Year:</div>
                <div class="detail-value">2025</div>
            </div>
            
            <div class="detail-group">
                <div class="detail-label">Semester:</div>
                <div class="detail-value">Spring</div>
            </div>
            
            <div class="detail-group">
                <div class="detail-label">Email:</div>
                <div class="detail-value">john.smith@example.edu</div>
            </div>
        </div>
        
        <div class="center"><button class="edit-profile-btn">
            <i class="fas fa-edit"></i> Edit
        </button></div>
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