<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="dbCon.jsp"%>

<%


String name=request.getParameter("name");
int age= Integer.parseInt(request.getParameter("age"));
String gender=request.getParameter("gender");
double contact=Double.parseDouble(request.getParameter("contact"));
String address=request.getParameter("address");
String issue=request.getParameter("issue");
String sissue=request.getParameter("sissue");
String pass=request.getParameter("pass");

rs=stat.executeQuery("select * from patient order by pid desc");
String pid=" ";
if(!rs.next())
{
	pid="P0001";
}
else
{
		String pid1=rs.getString("pid");
		pid1=pid1.substring(1);
		int n=Integer.parseInt(pid1);
		n++;
		if(n>=0&&n<10)
			pid="P000" + n;
		else if(n>=10&&n<100)
			pid="P00" + n;
		else if(n>=100&&n<1000)
			pid="P0" +n;
		else if(n>=1000&&n<10000)
			pid="P" +n;
}
String qry="insert into patient values('" + name + "'," + age + ",'" + gender + "'," + contact + ",'" + address + "','" + issue + "','" + sissue + "','" + pid + "','" + pass + "')";
stat.executeUpdate(qry);
%>
<h1 align=center>Registered</h1>
