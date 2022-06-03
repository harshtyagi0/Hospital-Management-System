<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Appointment</title>
<style>
body {
	background: #85C1E9;
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
	<h1>Patient SignIn</h1>
	<form action="appoint" method="post">
		<table align=center>
			<tr>
			<%
					try {
						connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
						statement = connection.createStatement();
						int Pid = Integer.parseInt(request.getParameter("Pid"));
						String sql = "SELECT * FROM patient where Pid='"+Pid+"'";
						resultSet = statement.executeQuery(sql);
						while (resultSet.next()) {
					%>
				<th>Patient Name</th>
				<td><input type=text name=name readonly class="form-control-plaintext" id="staticEmail" value=<%=resultSet.getString("name")%>>
				</td>
			</tr>
			<tr>
				<th>Patient Id</th>
				
				 <!--  <input type="text" readonly class="form-control-plaintext" id="staticEmail" name=pid value="email@example.com"> -->
				<td><input type=text readonly class="form-control-plaintext" id="staticEmail" name=pid value=<%=resultSet.getString("pid")%>>
				
				</td>
					<%
					}
					} catch (Exception e) {
					e.printStackTrace();
					}
					%>
			</tr>
			<tr>
				<th>Doctor Name</th>
				<td><input type=text name=dname placeholder="doctor name"></td>
			</tr>
			<tr>
				<th>Specialization In :</th>
				<td><select id="specin" name=specin>
						<option value="General Surgery">General Surgery</option>
						<option value="Internal Medicine">Internal Medicine</option>
						<option value="Gynecology">Gynecology</option>
						<option value="Dermatology">Dermatology</option>
						<option value="Orthopedics" selected>Orthopedics</option>
						<option value="Radiology">Radiology</option>
						<option value="Pediatrics">Pediatrics</option>
						<option value="other">& Other</option>
				</select></td>
			</tr>
			<tr>
				<th>Appointment Date :</th>
				<td><input type="date" name=adate placeholder="2020/06/01">
				</td>
			</tr>
			<tr>
				<th>Appointment Time :</th>
				<td><input type="time" name=atime placeholder="10:00"></td>
			</tr>
			
			<tr>
				<td colspan=2 align=center><input type=submit value=Book>
				</td>
			</tr>
			<tr>
				<td colspan=2 align=center style="color:red;">*Note:-Time is between 10:00Am- 06:00PM Only
				</td>
			</tr>
		</table>
	</form>
</body>
</html>