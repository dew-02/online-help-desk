<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Create New FAQ</title>
  <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
  <style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: 'Arial', sans-serif;
    }

    body {
        background-color: #f5f5f5;
        min-height: 100vh;
        display: flex;
        flex-direction: column;
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

    .footer {
        background-color: #1ac9ff;
        color: white;
        text-align: center;
        padding: 20px;
        margin-top: auto;
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

    input[type=text], select, textarea {
        width: 100%;
        padding: 12px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
        resize: vertical;
        font-size: medium;
    }

    label {
        padding: 12px 12px 12px 0;
        display: inline-block;
        color: black;
        font-size: larger;
        font-weight: bold;
    }

    input[type=submit], input[type=button] {
        background-color: lawngreen;
        color: black;
        padding: 12px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        float: right;
        margin-left: 10px;
    }

    .form-wrapper {
        flex: 1;
        display: flex;
        justify-content: center;
        align-items: center;
        padding: 40px 20px;
    }

    .container {
        max-width: 800px;
        width: 100%;
        border-radius: 5px;
        padding: 20px;
        background-image: url("form1.jpg");
        background-repeat: no-repeat;
        background-position: center;
        background-size: cover;
        background-color: #ddd;
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
    }

    .col-25 {
        float: left;
        width: 25%;
        margin-top: 6px;
    }

    .col-75 {
        float: left;
        width: 75%;
        margin-top: 6px;
    }

    .row:after {
        content: "";
        display: table;
        clear: both;
    }

    @media screen and (max-width: 600px) {
        .col-25, .col-75, input[type=submit], input[type=button] {
            width: 100%;
            margin-top: 0;
        }
    }
  </style>
</head>
<body class="bg-gray-100 font-sans">

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
    <a href="dashboard.html" class="nav-link"><i class="fas fa-home"></i> Home</a>
    <a href="raise-ticket.html" class="nav-link"><i class="fas fa-ticket-alt"></i> Raise Ticket</a>
    <a href="view-course.html" class="nav-link"><i class="fas fa-book-open"></i> View Course</a>
    <a href="faq.html" class="nav-link"><i class="fas fa-question-circle"></i> FAQ</a>
  </div>

  <!-- Centered Form Section -->
  <div class="form-wrapper">
    <div class="container">
      <form action="FAQInsertServlet" method="post">
        <h2 class="text-lg font-semibold text-gray-700 mb-4">New Record Form</h2>

        <div class="row">
          <div class="col-25">
            <label for="question">Question :</label>
          </div>
          <div class="col-75">
            <textarea id="question" name="question" placeholder="Write the question....." style="height:200px"></textarea>
          </div>
        </div>

        <div class="row">
          <div class="col-25">
            <label for="answer">Answer :</label>
          </div>
          <div class="col-75">
            <textarea id="answer" name="answer" placeholder="Give the answer...." style="height:200px"></textarea>
          </div>
        </div>

        <div class="row">
          <input type="button" value="Cancel">
          <input type="submit" value="Submit">
        </div>
      </form>
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
