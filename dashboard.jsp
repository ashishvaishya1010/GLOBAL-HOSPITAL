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

table {
	background-color: white;
	border-collapse: collapse;
	border-radius: 10px;
}

td {
	padding: 1px;
	margin: 1px;
}
th {
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
<%@ include file="dbCon.jsp"%>

<%
String name = request.getParameter("name");
String issue = "";
String gender = "";
String age = "";
String password = request.getParameter("password");

if (name.equals("ashish") && password.equals("12345")) {

	rs = stat.executeQuery("select * from doctor");

	if (rs.next()) {
%>

<table border=1>
	<tr>
		<td align=center><p>Name :
		<td align=center style="font-weight: bold;"><%=rs.getString("name")%>
	</tr>
	<tr>
		<td align=center><p>Age :
		<td align=center style="font-weight: bold;"><%=rs.getString("age")%>
	</tr>
	<tr>
		<td align=center><p>Gender :
		<td align=center style="font-weight: bold;"><%=rs.getString("gender")%>
	</tr>
	<tr>
		<td align=center><p>Contact :
		<td align=center style="font-weight: bold;"><%=rs.getString("contact")%>
	</tr>

	<tr>
		<td align=center><p>Address :
		<td align=center style="font-weight: bold;"><%=rs.getString("address")%>
	</tr>
	<tr>
		<td align=center><p>Specilization In :
		<td align=center style="font-weight: bold;"><%=rs.getString("specin")%>
	</tr>
	<tr>
		<td align=center><p>Specific :
		<td align=center style="font-weight: bold;"><%=rs.getString("specifics")%>
	</tr>

</table>
<%
String contact = "";

rs = stat.executeQuery("select * from patient");
out.println("<table border=1>");
out.println("<th>Name <th>Gender<th>Issue<th>Contact<th>Age");
while (rs.next()) {
	name = rs.getString("name");
	issue = rs.getString("issue");
	gender = rs.getString("gender");
	age = rs.getString("age");
	contact = rs.getString("contact");
	issue = rs.getString("issue");
	out.println("<tr><td><p>" + name);
	out.println("<td><p>" + gender);
	out.println("<td><p>" + issue);
	out.println("<td><p>" + contact);
	out.println("<td><p>" + age);

}
out.println("</table>");
}
} else {
%>
<h1 align=center>Retry</h1>
<%
}
%>

