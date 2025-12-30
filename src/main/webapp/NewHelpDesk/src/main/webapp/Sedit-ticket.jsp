<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!--c: for -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Question | Education Help Desk</title>
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
            margin-bottom: 15px;
            font-size: 14px;
        }
        
        textarea.field {
            min-height: 150px;
            resize: vertical;
        }
        
        .btn {
            padding: 12px 24px;
            background-color: #1ac9ff;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            font-weight: 500;
            transition: all 0.3s;
        }
        
        .btn:hover {
            background-color: #0fb8ee;
            box-shadow: 0 2px 5px rgba(0,0,0,0.2);
        }
        
        .footer {
            margin-top: 20px;
            padding-top: 20px;
            border-top: 1px solid #eee;
            color: #777;
            font-size: 14px;
            text-align: center;
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
    
    <div class="container">
        <h1 class="page-title">Update Question</h1>
        
        <!-- catch data --> 
         <%
         	int id=Integer.parseInt(request.getParameter("id"));
         	String subject=request.getParameter("subject");
         	String question=request.getParameter("question");
         	
         %>
        
        <form action="UpdateTicketServlet" method="post">
        
        	
        	
            <div class="form-group">
                <label for="reference">Reference:</label>
                <input type="text" id="reference" name="id" class="field" value="<%=id%>" readonly>
            </div>
            
            <div class="form-group">
                <label for="subject">Subject:</label>
                <input type="text" id="subject" name="subject" class="field" value="<%=subject%>" placeholder="Enter subject" readonly>
            </div>
            
            <div class="form-group">
                <label for="question">Question:</label>
                <textarea id="question" name= "question" class="field" placeholder="Enter your updated question here..."><%=question%></textarea>
            </div>
            
            <div class="form-actions">
              <div class="center">
              	
                <button type="submit" class="btn">
                    <i class="fas fa-save"></i> Update
                </button>
                
              </div>
            </div>
         
            
           
            
        </form>
      
        
        <div class="footer">
            For assistance, contact technical support at support@eduHelpDesk.edu
        </div>
    </div>
</body>
</html>