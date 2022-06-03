<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.sql.*"%>

<%!Connection con;
	Statement statement;
	ResultSet resultSet;
	ResultSetMetaData md;%>
<%
Class.forName("com.mysql.cj.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital", "root", "Black@white");
statement = con.createStatement();
%>