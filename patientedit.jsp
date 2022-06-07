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
String pid = request.getParameter("pid");
String pass = request.getParameter("pass");

//out.println(pid);
//out.println(pass);

rs=stat.executeQuery("select * from patient where pid='"+ pid + "' and pass='" + pass + "'");
if(rs.next()){
	out.println("<h3 align=center>Correct Details</h3>");
	%>
	<form method="get" action="confirmedappointment.jsp">
	<table border=1 align=center>
	<tr><th>Patient Id<td><input type=text value=<%=rs.getString("pid")%> name=pid readonly>
	<tr><th>Name<td><%=rs.getString("name")%>
	<tr><th>Age<td><%=rs.getString("age")%>
	<tr><th>Gender<td><%=rs.getString("age")%>
	<tr><th>Contact<td><%=rs.getString("contact")%>
	<tr><th>Address<td><%=rs.getString("address")%>
	<tr><th>Issue<td><%=rs.getString("issue")%>
	<tr><th>Specific issue<td><%=rs.getString("issue")%>
	<tr><th>Appointment Date<td><input type=date name=adate>
	<tr><td colspan=2 align=center><input type=submit Value="Take Appointment">	
	</table>
	</form>
	<%
}
else{
	out.println("<h3 align=center>Incorrect Details</h3>");
}
%>