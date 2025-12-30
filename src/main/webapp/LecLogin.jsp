<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lecturer Login</title>
<style>
    * {
        box-sizing: border-box;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }

    body {
        background-color: #f1f3f6;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }

    .login-card {
        background-color: #ffffff;
        padding: 40px 30px;
        border-radius: 12px;
        box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
        width: 100%;
        max-width: 420px;
        text-align: center;
        border-top: 6px solid #f2540d; /* orange bar like the image */
    }

    .login-card img {
        width: 100px;
        height: auto;
        margin-bottom: 20px;
        animation: fadeIn 1.2s ease-in-out;
    }

    h2 {
        margin-bottom: 5px;
        color: #1e3a8a;
        font-size: 24px;
        font-weight: bold;
    }

    p {
        color: #6b7280;
        font-size: 14px;
        margin-bottom: 30px;
    }

    .form-group {
        text-align: left;
        margin-bottom: 20px;
    }

    .form-group label {
        display: block;
        margin-bottom: 6px;
        font-weight: 600;
        color: #374151;
    }

    .form-group input {
        width: 100%;
        padding: 12px;
        border: 1px solid #d1d5db;
        border-radius: 6px;
        font-size: 14px;
        transition: border-color 0.3s ease;
    }

    .form-group input:focus {
        border-color: #f2540d;
        outline: none;
    }

    .login-btn {
        width: 100%;
        background-color: #f2540d;
        color: white;
        padding: 12px;
        font-size: 16px;
        border: none;
        border-radius: 6px;
        cursor: pointer;
        margin-top: 10px;
        transition: background-color 0.3s ease;
    }

    .login-btn:hover {
        background-color: #d64807;
    }

    .login-btn i {
        margin-right: 8px;
    }

    .footer {
        margin-top: 25px;
        font-size: 13px;
        color: #6b7280;
    }

    @keyframes fadeIn {
        from { opacity: 0; }
        to { opacity: 1; }
    }
</style>
<!-- Font Awesome (for the login icon) -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body>

<div class="login-card">
    <!-- Make sure this path is correct -->
    <img src="images/logo.png" alt="Logo">   

    <h2>Lecturer Login</h2>
    <p>Online Education Help Desk</p>

    <form action="LecLoginServlet" method="post">
        <div class="form-group">
            <label for="email">Username</label>
            <input type="email" name="gmail" id="email" placeholder="Enter your email" required>
        </div>

        <div class="form-group">
            <label for="password">Password</label>
            <input type="password" name="password" id="password" placeholder="Enter your password" required>
        </div>

        <button type="submit" class="login-btn"><i class="fas fa-sign-in-alt"></i> Login</button>
    </form>

    <div class="footer">
        © 2025 Online Education Help Desk
    </div>
</div>

</body>
</html>