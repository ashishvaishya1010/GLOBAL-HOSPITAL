<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ include file="dbCon.jsp"%>
<% 
String pid = request.getParameter("pid");
String adate = request.getParameter("adate");
String sql= "update patient set adate='" + adate + "' where pid='" + pid + "' ";
//rs=stat.executeUpdate("update patient set adate='" + adate + "' where pid='" + pid + "'");
stat.executeUpdate(sql);
//rs=stat.executeUpdate("update patient set adate='" + adate + "' where pid='" + pid + "' ");
%>
<h3>Appointment Confirmed.</h3>