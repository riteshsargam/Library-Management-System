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

		.wrap {
			display: flex;
			justify-content: center;
			margin-bottom: 20px;
		}

		.search {
			position: relative;
			width: 300px;
		}

		.searchTerm {
			width: 100%;
			padding: 10px;
			border: 1px solid #cccccc;
			border-radius: 4px;
			font-size: 14px;
		}

		.searchButton {
			position: absolute;
			top: 0;
			right: 0;
			background-color: #007bff;
			color: #ffffff;
			border: none;
			padding: 10px 15px;
			border-radius: 4px;
			cursor: pointer;
		}

		.searchButton i {
			font-size: 16px;
		}
	</style>
</head>

<body>
<h2>List of Books</h2>
<c:set var="student" value="${student}" />

<c:set var="count" value="0" />
<c:if test="${empty student.issued_book1}">
	<c:set var="count" value="${count + 1}" />
</c:if>

<c:if test="${empty student.issued_book2}">
	<c:set var="count" value="${count + 1}" />
</c:if>

<c:if test="${empty student.issued_book3}">
	<c:set var="count" value="${count + 1}" />
</c:if>

<h3>Welcome ${student.student_name}</h3>
<form action="../book/search" method="GET">
	<div class="wrap">
		<div class="search">
			<input type="text" name="keyword" class="searchTerm" id="keyword" placeholder="Search by title / author / category">
			<button type="submit" for="keyword" class="searchButton" onclick="encodeAndSearch()">
				<i class="fa fa-search"></i>
			</button>
		</div>
	</div>
</form>

<script>
	function encodeAndSearch() {
		var searchTerm = document.getElementById("keyword").value;
		var encodedSearchTerm = encodeURIComponent(searchTerm);
		var actionUrl = "../book/search?keyword=" + encodedSearchTerm;

		// Perform the search by navigating to the encoded URL
		window.location.href = actionUrl;
	}
</script>

<p>You are authorized to borrow ${count} books.</p>
<c:choose>
	<c:when test="${student.fine_amount==0}">
		<p>You don't have any outstanding fines</p>
	</c:when>
	<c:when test="${!empty student.fine_amount}">
		<p>You have an outstanding fine of ${student.fine_amount} rupees</p>
	</c:when>
</c:choose>

<table>
	<tr>
		<th style="color: black;">Book ID</th>
		<th style="color: black;">Title</th>
		<th style="color: black;">Author</th>
		<th style="color: black;">Category</th>
	</tr>
	<c:forEach var="book" items="${books}">
		<c:url var="getLink" value="/student/getbook">
			<c:param name="bookId" value="${book.book_id}"/>
		</c:url>
		<tr>
			<td style="color: black;">${book.book_id}</td>
			<td style="color: black;">${book.book_title}</td>
			<td style="color: black;">${book.book_author}</td>
			<td style="color: black;">${book.book_category}</td>
		</tr>
	</c:forEach>
</table>

</body>
</html>
