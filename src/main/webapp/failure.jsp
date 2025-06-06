<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Failed</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #ffcccc, #ffdde1);
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .failure-container {
            background-color: #ffffff;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            border-radius: 10px;
            overflow: hidden;
            width: 400px;
            max-width: 100%;
            text-align: center;
            padding: 30px;
        }
        .failure-header {
            background-color: #dc3545;
            color: #ffffff;
            padding: 20px;
            font-size: 28px;
            font-weight: bold;
            margin: -30px -30px 30px -30px;
            border-radius: 10px 10px 0 0;
        }
        .failure-message {
            margin-bottom: 20px;
        }
        .retry-button {
            background-color: #007bff;
            color: #ffffff;
            padding: 15px;
            border: none;
            border-radius: 5px;
            font-size: 18px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .retry-button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="failure-container">
        <div class="failure-header">Login Failed</div>
        <div class="failure-message">
            <p>Invalid username or password.</p>
            <p>Please try again.</p>
        </div>
        <form action="AdminLogin.jsp">
            <button class="retry-button" type="submit">Retry</button>
        </form>
    </div>
</body>
</html>
