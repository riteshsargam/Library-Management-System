<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
		 pageEncoding="ISO-8859-1" isELIgnored="false"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>List Students</title>
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" />
	<style>
		/* Custom CSS */
		body {
			background-color: #f2f2f2;
			font-family: Arial, sans-serif;
			color: #333333;
			display: flex;
			flex-direction: column;
			align-items: center;
			justify-content: center;
			height: 100vh;
			margin: 0;
			padding: 20px;
		}

		h3 {
			margin-bottom: 20px;
		}

		h1 {
			text-align: center;
			color: #007bff;
			margin-bottom: 30px;
		}

		table {
			width: 100%;
			border-collapse: collapse;
			margin-top: 20px;
		}

		th, td {
			padding: 10px;
			text-align: left;
			border-bottom: 1px solid #cccccc;
		}

		th {
			background-color: #f2f2f2;
			font-weight: bold;
			color: black;
		}

		a {
			color: #007bff;
			text-decoration: none;
		}

		a:hover {
			text-decoration: underline;
		}

	</style>
</head>
<body>
<h3><a href="./adminview">Go Back to Books Section</a></h3>
<h1>List of Students (ADMIN PANEL)</h1>

<table>
	<tr>
		<th>Student ID</th>
		<th>Name</th>
		<th>Email</th>
		<th>Fine Amount</th>
		<th>Issued Book 1</th>
		<th>Issued Book 2</th>
		<th>Issued Book 3</th>
		<th>Issued Date</th>
		<th>Delete Student</th>
		<th>Fine Received?</th>
	</tr>
	<c:forEach var="student" items="${students}">
		<c:url var="deleteLink" value="/admin/deletestudent">
			<c:param name="studentId" value="${student.student_id}"/>
		</c:url>
		<c:url var="yesLink" value="/admin/finereceived">
			<c:param name="studentId" value="${student.student_id}"/>
		</c:url>
		<tr>
			<td>${student.student_id}</td>
			<td>${student.student_name}</td>
			<td>${student.studentEmail}</td>
			<td>${student.fine_amount}</td>
			<td>${student.issued_book1}</td>
			<td>${student.issued_book2}</td>
			<td>${student.issued_book3}</td>
			<td>${student.issued_book_date}</td>
			<td><a href="${deleteLink}">DELETE</a></td>
			<td><a href="${yesLink}">YES</a></td>
		</tr>
	</c:forEach>
</table>
</body>
</html>
