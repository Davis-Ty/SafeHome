<%-- 
    Document   : safe home
    Created on : Apr 6, 2023, 3:06:27 PM
    Author     : Tyon Davis
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Reports</title>
	<style>
		.header {
			background-color: red;
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
		.reports {
			margin: 2rem auto;
			border: 2px solid black;
			width: 80%;
			max-width: 800px;
			padding: 1rem;
			overflow-wrap: break-word;
			word-wrap: break-word;
			word-break: break-all;
		}
	</style>
</head>
<body>
	<div class="header">
		Reports
	</div>
	<div class="box">
		<p>Upload your .txt files here:</p>
		<form action="upload.jsp" method="post" enctype="multipart/form-data">
			<input type="file" name="file">
			<input type="submit" value="Upload">
		</form>
	</div>
	<div class="reports">
		<p>Past reports:</p>
		<textarea rows="10" cols="50">
			<%-- Add code here to display past reports --%>
		</textarea>
	</div>
	<div style="text-align: center;">
		<a href="sh_options.jsp"><button type="button">Control Panel</button></a>
	</div>
</body>
</html>