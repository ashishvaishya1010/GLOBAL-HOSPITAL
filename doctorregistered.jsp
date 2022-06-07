<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="dbCon.jsp"%>

<%


String name=request.getParameter("name");
int age= Integer.parseInt(request.getParameter("age"));
String gender=request.getParameter("gender");
double contact=Double.parseDouble(request.getParameter("contact"));
String address=request.getParameter("address");
String specin=request.getParameter("specin");
String specifics=request.getParameter("specifics");
String pass=request.getParameter("pass");

rs=stat.executeQuery("select * from doctor order by did desc");
String did=" ";
if(!rs.next())
{
	did="P0001";
}
else
{
		String did1=rs.getString("did");
		did1=did1.substring(1);
		int n=Integer.parseInt(did1);
		n++;
		if(n>=0&&n<10)
			did="P000" + n;
		else if(n>=10&&n<100)
			did="P00" + n;
		else if(n>=100&&n<1000)
			did="P0" +n;
		else if(n>=1000&&n<10000)
			did="P" +n;
}
String qry="insert into doctor values('" + name + "'," + age + ",'" + gender + "'," + contact + ",'" + address + "','" + specin + "','" + specifics + "','" + did + "','" + pass + "')";

stat.executeUpdate(qry);
%>
<h1 align=center>Registered</h1>
