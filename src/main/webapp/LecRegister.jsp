<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Register Lecturer</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f5f5f5;
      margin: 0;
      padding: 0;
    }

    h2 {
      color: #f46a06;
      text-align: center;
      margin-top: 30px;
      margin-bottom: 10px;
    }

    .form-container {
      max-width: 500px;
      margin: 40px auto;
      background-color: #ffffff;
      padding: 30px;
      border-radius: 12px;
      box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
    }

    table {
      width: 100%;
      border-collapse: collapse;
    }

    td {
      padding: 12px 10px;
      font-weight: bold;
    }

    input[type="text"],
    input[type="email"],
    input[type="password"] {
      width: 100%;
      padding: 10px 12px;
      border: 1px solid #ccc;
      border-radius: 8px;
      font-size: 14px;
    }

    input[type="submit"] {
      background-color: #f46a06;
      color: white;
      padding: 10px 20px;
      border: none;
      border-radius: 8px;
      font-size: 16px;
      cursor: pointer;
      margin-top: 10px;
      float: right;
      transition: background-color 0.3s ease;
    }

    input[type="submit"]:hover {
      background-color: #d85c03;
    }

    td[colspan="2"] {
      text-align: right;
    }
  </style>
</head>
<body>

<h2>Register</h2>

<div class="form-container">
  <form action="LecUserInsertServlet" method="post">
    <table>
      <tr>
        <td>Name:</td>
        <td><input type="text" name="name" required></td>
      </tr>
      <tr>
        <td>Email:</td>
        <td><input type="email" name="gmail" required></td>
      </tr>
      <tr>
        <td>Password:</td>
        <td><input type="password" name="password" required></td>
      </tr>
      <tr>
        <td>Phone:</td>
        <td><input type="text" name="phone" required></td>
      </tr>
      <tr>
        <td colspan="2"><input type="submit" value="Submit"></td>
      </tr>
    </table>
  </form>
</div>

</body>
</html>