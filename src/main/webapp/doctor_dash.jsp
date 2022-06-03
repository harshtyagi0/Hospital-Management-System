<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Doctor dash</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="pstyle.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
	integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<style type="text/css">
body {
	background: #85C1E9;
}

.container-fluid h1 {
	margin-top: 5vh;
}

.container-fluid h1, .footer {
	text-align: center;
}

.bg_color {
	background: white;
}

.wd {
	width: 33%;
	padding: 3%;
}

.bg_color button {
	margin-left: 69%;
}
</style>
</head>
<body>
	<%@page import="java.sql.DriverManager"%>
	<%@page import="java.sql.ResultSet"%>
	<%@page import="java.sql.Statement"%>
	<%@page import="java.sql.Connection"%>
	<%
	String id = request.getParameter("id");
	String userID = null;
	String driverName = "com.mysql.jdbc.Driver";
	String connectionUrl = "jdbc:mysql://localhost:3306/";
	String dbName = "hospital";
	String userId = "root";
	String password = "Black@white";

	try {
		Class.forName(driverName);
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	}

	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
	%>
	<div class="container-fluid">
		<h1>Doctor Dash</h1>
		<div class="row">
			<div class="col-md-4">
				<table align="center" cellpadding="5" cellspacing="5" border="1">
					<tr>

					</tr>
					<tr bgcolor="#A52A2A">
						<td><b>ID</b></td>
						<td><b>Name</b></td>
						<td><b>Age</b></td>
						<td><b>Gender</b></td>
						<td><b>Phone</b></td>
						<td><b>Address</b></td>
						<td><b>specialization</b></td>
						<td><b>other specialization</b></td>
					</tr>
					<%
					try {
						connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
						statement = connection.createStatement();
						int dId = Integer.parseInt(request.getParameter("dId"));
						String sql = "SELECT * FROM doctor where dId='"+dId+"'";
						resultSet = statement.executeQuery(sql);
						while (resultSet.next()) {
					%>
					<tr bgcolor="#DEB887">
						<td><%=resultSet.getString("did")%></td>
						<td><%=resultSet.getString("name")%></td>
						<td><%=resultSet.getString("age")%></td>
						<td><%=resultSet.getString("gender")%></td>
						<td><%=resultSet.getString("phone")%></td>
						<td><%=resultSet.getString("address")%></td>
						<td><%=resultSet.getString("specialIn")%></td>
						<td><%=resultSet.getString("otherSpec")%></td>
					</tr>

					<%
					}
					} catch (Exception e) {
					e.printStackTrace();
					}
					%>
				</table>
			</div>
			<div class="col-md-2"></div>
			<div class="col-md-4">
				<table align="center" cellpadding="5" cellspacing="5" border="1">
					<tr>

					</tr>
					<tr bgcolor="#A52A2A">
						<td><b>PID</b></td>
						<td><b>Patient Name</b></td>
						<td><b>Doctor Name</b></td>
						<td><b>Specialization</b></td>
						<td><b>Appointment Date</b></td>
						<td><b>Appointment Time</b></td>
					</tr>
					<%
					try {
						connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
						statement = connection.createStatement();
						String name = request.getParameter("name");
						String sql = "SELECT * FROM apn_info where dname='"+name+"'";
						
						resultSet = statement.executeQuery(sql);
						while (resultSet.next()) {
					%>
					<tr bgcolor="#DEB887">
						<td><%=resultSet.getString("pId")%></td>
						<td><%=resultSet.getString("pname")%></td>
						<td><%=resultSet.getString("dname")%></td>
						<td><%=resultSet.getString("spec")%></td>
						<td><%=resultSet.getString("apdate")%></td>
						<td><%=resultSet.getString("aptime")%></td>
					</tr>

					<%
					}
					} catch (Exception e) {
					e.printStackTrace();
					}
					%>
				</table>
			</div>
			
		</div>

	</div>

</body>
</html>