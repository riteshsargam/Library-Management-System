<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!DOCTYPE html>
<html>
<head>
	<title>Index Page</title>
	<style>
		body {
			background-color: #f2f2f2;
		}

		h1 {
			color: #333333;
			font-size: 60px;
			text-align: center;
			margin-top: 150px;
		}

		.link {
			display: block;
			font-size: 40px;
			text-align: center;
			margin-top: 20px;
		}

		.admin-link {
			font-size: 40px;
			display: block;
			color: #0066cc;
		}

		.student-link {
			font-size: 40px;
			color: #cc0033;
		}
	</style>
</head>
<body>
<h1>Welcome to College Library!</h1>

<div class="link">
	<a href="admin_login.jsp" class="admin-link">Admin Login</a>
</div>

<div class="link">
	<a href="student_login.jsp" class="student-link">Student Login</a>
</div>
</body>
</html>