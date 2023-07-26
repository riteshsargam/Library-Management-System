<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Add Book</title>
</head>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/add-book-style.css" />
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

	td {
		padding: 10px;
		text-align: left;
	}

	input[type="text"] {
		width: 100%;
		padding: 8px;
		border: 1px solid #cccccc;
		border-radius: 6px;
		font-size: 14px;
	}

	input[type="submit"] {
		background-color: #007bff;
		color: #ffffff;
		border: none;
		padding: 10px 15px;
		border-radius: 6px;
		cursor: pointer;
		margin-top: 10px;
	}

</style>
<body>

<h2>Add New Book</h2>

<form:form action="../book/saveBook" method="post" modelAttribute="book">
	<table>
		<tbody>
		<tr>
			<td>
				Title
			</td>
			<td>
				<form:input path="book_title" />
			</td>
		</tr>

		<tr>
			<td>
				Author
			</td>
			<td>
				<form:input path="book_author" />
			</td>
		</tr>

		<tr>
			<td>
				Category
			</td>
			<td>
				<form:input path="book_category" />
			</td>
		</tr>
		<tr>
			<td colspan="2" style="text-align: right;">
				<input type="submit" value="Save" class="save" />
			</td>
		</tr>

		</tbody>
	</table>
</form:form>

</body>
</html>
