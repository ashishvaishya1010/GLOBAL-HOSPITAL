<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<style type="text/css">
h1 {
	width: 1300px;
	border: 12px solid rgb(0, 179, 173);
	padding: 6px;
	margin: 5px;
	text-align: center;
	border-radius: 5px;
}

a {
	text-decoration: none;
	background-color: rgb(39, 129, 206);
	color: white;
	padding: 5px;
	border-radius: 2px;
}

li {
	float: left;
	padding: 2px;
	margin-left: 170px;
	font-weight: bold;
	font-size: 18px;
}

ul {
	background-color: rgb(0,179,173);
	list-style-type: none;
	overflow: hidden;
	padding: 10px;
	margin: 10px;
}
</style>
</head>
<body>
	<h1>GLOBAL HOSPITAL</h1>
	<img src="indexphoto.png" alt="front image" width="1350" height="450">
	<ul>
		<li>Admin Login <a href="adminlogin.jsp">LOGIN</a></li>
		<li>Doctor Login <a href="doctorlogin.jsp">LOGIN</a></li>
		<li>Patient Login <a href="userlogin.jsp">LOGIN</a></li>
	</ul>
</body>
</html>