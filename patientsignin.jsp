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
	<h1>Patient SignIn</h1>
	<form action="patientregistered.jsp">
		<table align=center>
			<tr>
				<th>Patient Name
				<td><input type=text name=name placeholder="patient name">
			<tr>
				<th>Age
				<td><input type=number name=age placeholder="eg.-25">
			<tr>
				<th>Gender :
				<td>Male : <input type="radio" name="gender" value="male">
					Female : <input type="radio" name="gender" value="female">
					Other:<input type="radio" name="gender" value="other">
			<tr>
				<th>Contact No. :
				<td><input type=text name=contact placeholder="1234567891">
			<tr>
				<th>Address :
				<td><input type=text name=address placeholder="Nagpur">
			<tr>
				<th>Password :
				<td><input type=password name=pass placeholder="Only 6 Digit">
		</table>
		<table border=1 align="center">
			<tr>
				<th>Issue :
				<td><select id="issue" name=issue>
						<option value="drc">Daily Routine CheckUp</option>
						<option value="fever">Fever</option>
						<option value="cold">Cold</option>
						<option value="bodypain">Body Pain</option>
						<option value="headache" selected>Headache</option>
						<option value="bp">Blood Pressure</option>
						<option value="suger">Sugar</option>
						<option value="other">Other Reason</option>
				</select>
			<tr>
				<th>Specific Issue :
				<td><textarea name=sissue></textarea>
			<tr>
				<td colspan=2 align=center><input type=submit value=Register>
		</table>
	</form>
</body>
</html>