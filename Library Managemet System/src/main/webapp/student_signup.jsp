<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Signup Page</title>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" />
    <style>
        /* Custom CSS */
        body {
            background-color: #f2f2f2;
            font-family: Arial, sans-serif;
            color: #333333;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
            padding: 20px;
            box-sizing: border-box;
        }

        .container {
            text-align: center;
        }

        h1 {
            color: #007bff;
            margin-bottom: 30px;
            margin-top: 0;
        }

        form {
            width: 300px;
            background-color: #ffffff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.1);
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        label {
            font-weight: bold;
            margin-bottom: 10px;
        }

        input[type="text"],
        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #cccccc;
            border-radius: 4px;
        }

        button[type="submit"] {
            background-color: #007bff;
            color: #ffffff;
            border: none;
            padding: 10px 20px;
            border-radius: 4px;
            cursor: pointer;
        }

        button[type="submit"]:hover {
            background-color: #0069d9;
        }

        p a {
            color: #007bff;
            text-decoration: none;
        }

        p a:hover {
            text-decoration: underline;
        }
    </style>
</head>

<body>
<div class="container">
    <h1>Student Signup Page</h1>
    <form action="./student/signup" method="post">
        <label for="student_name"   >Student Name:</label>
        <input
                type="text"
                name="student_name"
                placeholder="Please enter your name"
                id="name"
                required
        />

        <label for="email">Student e-mail ID:</label>
        <input
                type="email"
                name="student_email"
                placeholder="Please enter your e-mail"
                id="email"
                required
        />

        <label for="password">Student Password:</label>
        <input
                type="password"
                name="student_password"
                placeholder="Please enter your password"
                id="password"
                required
        />

        <button type="submit">Signup</button>

        <p>
            <a href="student_login.jsp">Already Registered? Login here</a>
        </p>
        <p>
            <a href="./admin_login.jsp">Are you an admin? Click here</a>
        </p>
    </form>
</div>
</body>
</html>