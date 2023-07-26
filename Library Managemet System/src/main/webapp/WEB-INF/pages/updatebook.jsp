<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Edit Book Details</title>
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
			border-bottom: 1px solid #cccccc;
		}

		input[type="text"] {
			width: 100%;
			padding: 10px;
			margin-bottom: 10px;
			border: 1px solid #cccccc;
			border-radius: 4px;
		}

		input[type="submit"] {
			background-color: #007bff;
			color: #ffffff;
			border: none;
			padding: 10px 20px;
			border-radius: 4px;
			cursor: pointer;
		}

		input[type="submit"]:hover {
			background-color: #0069d9;
		}
	</style>
</head>
<body>
<h2>Edit Book Details</h2>
<form action="../book/saveBook" method="post">
	<input type="hidden" name="book_id" value="${book.book_id}"/>
	<table>
		<tbody>
		<tr>
			<td>Title</td>
			<td>
				<input type="text" name="book_title" value="${book.book_title}" />
			</td>
		</tr>
		<tr>
			<td>Author</td>
			<td>
				<input type="text" name="book_author" value="${book.book_author}" />
			</td>
		</tr>
		<tr>
			<td>Category</td>
			<td>
				<input type="text" name="book_category" value="${book.book_category}" />
			</td>
		</tr>
		<tr>
			<td></td>
			<td>
				<input type="submit" value="Save" class="save" />
			</td>
		</tr>
		</tbody>
	</table>
</form>
</body>
</html>
