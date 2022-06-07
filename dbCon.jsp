<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.sql.*"%>

<%!
Connection conn;
Statement stat;
ResultSet rs;
ResultSetMetaData md;

%>
<%
Class.forName("com.mysql.cj.jdbc.Driver");
conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/ hospitalglobal","root","ashish1099");
stat=conn.createStatement();
%>