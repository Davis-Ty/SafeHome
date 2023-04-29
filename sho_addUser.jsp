<%-- 
    Document   : Safe Home Lights Selection
    Author     : Tyon Davis
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Add User</title>
	<style>
		.header {
			background-color: green;
			color: white;
			font-size: 2rem;
			text-align: center;
			padding: 1rem;
		}
		.box {
			margin: 2rem auto;
			border: 2px solid black;
			width: 80%;
			max-width: 800px;
			padding: 1rem;
			overflow-wrap: break-word;
			word-wrap: break-word;
			word-break: break-all;
		}
		input[type="submit"] {
			background-color: green;
			color: white;
			padding: 0.5rem;
			border: none;
			cursor: pointer;
			margin-top: 1rem;
			font-size: 1.2rem;
			font-weight: bold;
		}
	</style>
</head>
<body>
	<div class="header">
		Add User
	</div>
	<div class="box">
		<form action="add_user.jsp" method="post">
			<label for="username">Enter a username:</label>
			<input type="text" name="username" id="username" required><br><br>
			<label for="password">Enter a password:</label>
			<input type="password" name="password" id="password" required><br><br>
			<label for="password2">Enter the password again:</label>
			<input type="password" name="password2" id="password2" required><br><br>
			<input type="submit" value="Add User">
		</form>
	</div>
        <div style="text-align: center;">
		<a href="sh_options.jsp"><button type="button">Control Panel</button></a>
	</div>
</body>
</html>