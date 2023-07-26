<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
		 pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>List Students</title>
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
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
			box-sizing: border-box;
		}

		h2 {
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
			color: black; /* Added black color for column headers */
		}

		p {
			margin-bottom: 10px;
		}

		.add-button {
			background-color: #007bff;
			color: #ffffff;
			border: none;
			padding: 10px 20px;
			border-radius: 4px;
			cursor: pointer;
		}

		.add-button:hover {
			background-color: #0069d9;
		}

		a:hover {
			text-decoration: underline;
		}
	</style>
</head>

<body>
<h3><a href="studentlist">Go to List of Students</a></h3>
<h1>List of Books (ADMIN PANEL)</h1>

<input type='button' value='Add Book' onclick="window.location.href='showForm'; return false;" class="add-button" />

<table>
	<tr>
		<th style="color: black;">Book ID</th>
		<th style="color: black;">Title</th>
		<th style="color: black;">Author</th>
		<th style="color: black;">Category</th>
		<th style="color: black;">Issue Book</th>
		<th style="color: black;">Update Book</th>
		<th style="color: black;">Delete Book</th>
	</tr>
	<c:forEach var="book" items="${books}">
		<c:url var="issueLink" value="/admin/showissueform">
			<c:param name="bookId" value="${book.book_id}" />
		</c:url>
		<c:url var="updateLink" value="/admin/showupdateform">
			<c:param name="bookId" value="${book.book_id}" />
		</c:url>
		<c:url var="deleteLink" value="/admin/deletebook">
			<c:param name="bookId" value="${book.book_id}" />
		</c:url>
		<tr>
			<td style="color: black;">${book.book_id}</td>
			<td style="color: black;">${book.book_title}</td>
			<td style="color: black;">${book.book_author}</td>
			<td style="color: black;">${book.book_category}</td>
			<td><a href="${issueLink}">ISSUE</a></td>
			<td><a href="${updateLink}">UPDATE</a></td>
			<td><a href="${deleteLink}">DELETE</a></td>
		</tr>
	</c:forEach>
</table>
</body>
</html>
