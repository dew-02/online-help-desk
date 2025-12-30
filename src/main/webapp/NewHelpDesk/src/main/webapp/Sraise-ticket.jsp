<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Raise Ticket | Education Help Desk</title>
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
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #1ac9ff;
            color: white;
            padding: 15px 20px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }
        
        .logo {
            font-size: 24px;
            font-weight: bold;
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
            background-image: linear-gradient(to right bottom, #73e0ff, #ffffff);
            backdrop-filter: blur(10px);
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
            padding: 25px;
        }
        
        .page-title {
            font-size: 24px;
            margin-bottom: 25px;
            color: #ffffff;
            font-weight: 600;
            background-color: #1ac9ff;
            border-radius: 5px;
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
        
        .form-group {
            margin-bottom: 20px;
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
            font-size: 14px;
        }
        
        .field-row {
            display: flex;
            gap: 15px;
            margin-bottom: 15px;
        }
        
        .field-col {
            flex: 1;
        }
        
        .select-wrapper {
            position: relative;
        }
        
        .select-wrapper::after {
            content: "\f078";
            font-family: "Font Awesome 5 Free";
            font-weight: 900;
            position: absolute;
            right: 15px;
            top: 50%;
            transform: translateY(-50%);
            color: #777;
            pointer-events: none;
        }
        
        select.field {
            appearance: none;
            padding-right: 30px;
            cursor: pointer;
        }
        
        .radio-group {
            display: flex;
            gap: 30px;
            margin-top: 10px;
        }
        
        .radio-option {
            display: flex;
            align-items: center;
            gap: 8px;
            cursor: pointer;
        }
        
        textarea.field {
            min-height: 150px;
            resize: vertical;
        }
        
        .action-buttons {
            display: flex;
            gap: 15px;
            justify-content: center;
            margin-top: 30px;
        }
        
        .btn {
            padding: 12px 24px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            font-weight: 500;
            transition: all 0.3s;
        }
        
        .btn-primary {
            background-color: #1ac9ff;
            color: white;
        }
        .btn-primary:hover {
            background-color:#0DDC53;
            box-shadow: 0 4px 12px rgba(21, 182, 230, 0.3);
            transform: translateY(-2px);
        }
        
        .btn-secondary {
            background-color: #f1f1f1;
            color: #555;
        }
        
        .btn:hover {
            opacity: 0.9;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
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
        	text-align: center;	
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
        <div class="center"><h1 class="page-title">Raise Ticket</h1></div>
       
        
        <form action="TicketServlet" method="post">
            <div class="form-group">
                <label for="registration">Registration No:</label>
                <input type="text" name="regno" class="field" placeholder="Enter your registration number">
            </div>
            
            <div class="field-row">
                <div class="field-col">
                    <label for="faculty">Select Faculty:</label>
                    <div class="select-wrapper">
                        <select name="faculty"class="field">
                            <option value="">Select a faculty</option>
                            <option value="arts">Arts and Humanities</option>
                            <option value="business">Business</option>
                            <option value="engineering">Engineering</option>
                            <option value="science">Science</option>
                            <option value="medicine">Medicine</option>
                        </select>
                    </div>
                </div>
                
                <div class="field-col">
                    <label for="year">Select Year:</label>
                    <div class="select-wrapper">
                        <select name="year" class="field">
                            <option value="">Select year</option>
                            <option value="1">First Year</option>
                            <option value="2">Second Year</option>
                            <option value="3">Third Year</option>
                            <option value="4">Fourth Year</option>
                        </select>
                    </div>
                </div>
                
                <div class="field-col">
                    <label for="semester">Select Semester:</label>
                    <div class="select-wrapper">
                        <select name="semester" class="field">
                            <option value="">Select semester</option>
                            <option value="1">First Semester</option>
                            <option value="2">Second Semester</option>

                        </select>
                    </div>
                </div>
            </div>
            
            <div class="form-group">
                <label for="contact">Contact Number:</label>
                <input type="tel" name="contactno" class="field" placeholder="Enter your contact number">
            </div>
            
            <div class="form-group">
                <label>Ticket Type:</label>
                <div class="radio-group">
                    <label class="radio-option">
                        <input type="radio" name="category" value="academic">
                        <span>Academic</span>
                    </label>
                    <label class="radio-option">
                        <input type="radio" name="category" value="non-academic">
                        <span>Non-Academic</span>
                    </label>
                </div>
            </div>
            
            <div class="form-group">
                <label for="lecture">Lecture:</label>
                <input type="text" name="lecture"  class="field" placeholder="Enter lecture name (if applicable)">
            </div>
            
            <div class="form-group">
                <label for="subject">Subject:</label>
                <input type="text" name="subject" class="field" placeholder="Enter subject of your question" required>
            </div>
            
            <div class="form-group">
                <label for="question">Question:</label>
                <textarea name="question" class="field" placeholder="Enter your question or issue in detail..." required></textarea>
            </div>
            
            <div class="action-buttons">
                <button type="reset" class="btn btn-secondary">
                    <i class="fas fa-redo"></i> Reset
                </button>
                <button type="submit" name="submit" class="btn btn-primary">
                    <i class="fas fa-paper-plane"></i> Submit
                </button>
            </div>

        </form>
    </div>
    
    
    <div class="footer">
        <div class="footer-content">
            <h3>EduHelp Education Help Desk</h3>
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