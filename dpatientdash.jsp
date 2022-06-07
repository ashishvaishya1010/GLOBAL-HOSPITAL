<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="dbCon.jsp"%>
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

table {
	background-color: white;
	border-collapse: collapse;
	border-radius: 10px;
}

td {
	padding: 10px;
	margin: 10px;
}

th {
	padding: 10px;
	margin: 10px;
}

input[type=submit] {
	background-color: rgb(37, 117, 253);
	color: white;
	border-radius: 8px;
	padding: 5px;
	margin: 5px;
	font-size: 15px;
	cursor: pointer;
}
</style>
</head>
<%
String did = request.getParameter("did");
String pass = request.getParameter("pass");

//out.println(did);
//out.println(pass);

rs=stat.executeQuery("select * from doctor where did='"+ did + "' and pass='" + pass + "'");
if(rs.next()){
	out.println("<h3 align=center>Correct Details</h3>");
	%>
<form method="get" action="confirmedappointment.jsp">
	<table border=1 align=center>
		<tr>
			<th>Your Id
			<td><input type=text value=<%=rs.getString("did")%>
				name=<%=rs.getString("did")%> readonly>
		<tr>
			<th>Name
			<td><%=rs.getString("name")%>
	</table>
</form>
<h2 align=center>Patient List</h2>
<%
String contact = "";
String name = "";
String issue = "";
String gender = "";
String age = "";
String adate = "";
String pid = "";
rs = stat.executeQuery("select * from patient where adate is not null order by adate ");
out.println("<table border=1 align=center>");
out.println("<th>Name<th>ID<th>Gender<th>Issue<th>Contact<th>Age<th>Appointment Date");
while (rs.next()) {
	name = rs.getString("name");
	issue = rs.getString("issue");
	gender = rs.getString("gender");
	age = rs.getString("age");
	contact = rs.getString("contact");
	issue = rs.getString("issue");
	adate = rs.getString("adate");
	pid = rs.getString("pid");
	out.println("<tr><td><p>" + name);
	out.println("<td><p>" + pid);
	out.println("<td><p>" + gender);
	out.println("<td><p>" + issue);
	out.println("<td><p>" + contact);
	out.println("<td><p>" + age);
	out.println("<td><p>" + adate);
	
}
out.println("</table>");
}

else{
	out.println("<h3 align=center>Incorrect Details</h3>");
}
%>