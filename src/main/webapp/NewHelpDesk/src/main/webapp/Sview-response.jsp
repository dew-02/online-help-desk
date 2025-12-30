<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Ticket Response | Education Help Desk</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
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
            width: 40px;
            height: 40px;
            border-radius: 50%;
            background-color: white;
            display: flex;
            align-items: center;
            justify-content: center;
            color: #333;
        }
        
        .logout-btn {
            background-color: white;
            color: #1ac9ff;
            border: none;
            padding: 8px 15px;
            border-radius: 4px;
            cursor: pointer;
            font-weight: bold;
            transition: all 0.3s;
        }
        
        .logout-btn:hover {
            background-color: #f1f1f1;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }
        
        .container {
            max-width: 1000px;
            margin: 30px auto;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
            padding: 25px;
        }
        
        .page-title {
            font-size: 24px;
            margin-bottom: 20px;
            color: #333;
            font-weight: 600;
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
        
        .question-section {
            margin-bottom: 25px;
        }
        
        .section-title {
            font-size: 18px;
            margin-bottom: 10px;
            color: #555;
        }
        
        .question-box, .answer-box {
            border: 1px solid #ddd;
            border-radius: 6px;
            padding: 15px;
            background-color: #f9f9f9;
            margin-bottom: 20px;
            min-height: 100px;
        }
        
        .answer-box {
            background-color: #f0f9ff;
        }
        
        label {
            display: block;
            margin-bottom: 8px;
            color: #555;
            font-weight: 500;
        }
        
        .field {
            width: 100%;
            padding: 12px;
            border: 1px solid #ddd;
            border-radius: 4px;
            margin-bottom: 15px;
            font-size: 14px;
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
        <a href="dashboard.html" class="nav-link">
            <i class="fas fa-question-circle"></i> FAQ
        </a>
    </div>
    
    <div class="container">
        <h1 class="page-title">View Ticket Response</h1>
        
        
        
        <div class="ticket-content">
            <h2 class="section-title">Your Question</h2>
            
            <div class="form-group">
                <label for="subject">Subject:</label>
                <input type="text" id="subject" class="field" value="Course Registration Issue" readonly>
            </div>
            
            <div class="form-group">
                <label for="question">Question:</label>
                <div class="question-box">
                    I'm having trouble registering for the Advanced Mathematics course. The system shows it's full, but my advisor said there should be spots available. Can you help me resolve this issue?
                </div>
            </div>
            
            <div class="form-group">
                <label for="answer" class="section-title">Answer:</label>
                <div class="answer-box">
                    Thank you for your inquiry. We've checked the registration system and found that there was indeed a technical issue showing the class as full. This has been resolved, and there are now 15 spots available. Please try registering again within the next 24 hours. If you continue to experience problems, please let us know.
                </div>
            </div>
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