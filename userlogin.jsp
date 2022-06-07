<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
	background-color: rgb(104, 142, 165);
	font-family: arial;
}

h1 {
	color: rgb(196, 196, 196);
	text-align: center;
}

a {
	text-decoration: none;
	color: rgb(36, 117, 252);
}

table {
	background-color: white;
	border-collapse: collapse;
	border-radius: 10px;
}

td {
	padding: 5px;
	margin: 5px;
}

input[type=submit] {
	background-color: rgb(37, 117, 253);
	color: white;
	border-radius: 8px;
	padding: 5px;
	margin: 5px;
	font-size: 15px;
}
</style>
</head>
<body>
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
	<h1>GLOBAL HOSPITAL | Patient Login</h1>

	<form method=get action="patientedit.jsp">
		<table border=1 align=center>
			<tr>
				<td><b>Patient Id</b>
			<tr>
				<td><input type=text placeholder=eg.-1001 name=pid>
			<tr>
				<td><b>Password</b>
			<tr>
				<td><input type=password placeholder=password name=pass>
			<tr>
				<td>Don't have an account? <a href=patientsignin.jsp>Create Account</a>
			<tr>
				<td align=right><input type=submit value=Login>
		</table>

	</form>
</body>
</html>