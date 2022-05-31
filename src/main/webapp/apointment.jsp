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
	<h1>Patient SignIn</h1>
	<form action="appoint" method="post">
		<table align=center>
			<tr>
				<th>Patient Name</th>
				<td><input type=text name=name placeholder="patient name">
				</td>
			</tr>
			<tr>
				<th>Patient Id</th>
				<td><input type=text name=pid placeholder="patient Id">
				</td>
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
				<td><input type="time" name=atime placeholder="00:00"></td>
			</tr>
			
			<tr>
				<td colspan=2 align=center><input type=submit value=Book>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>