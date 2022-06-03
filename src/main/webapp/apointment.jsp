<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Appointment</title>
<style>
body {
	background-image:url("bg5.jpg");
	background-repeat:no-repeat;
	background-size:cover;
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
input,option,select{
border-top:none;
border-left: none;
border-right: none;
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
	<%@ include file="connectionDB.jsp"%>
	<h1>Appointment Details</h1>
	<form action="appoint" method="post">
		<table align=center>
			<tr>
				<%
				try {

					statement = con.createStatement();
					int Pid = Integer.parseInt(request.getParameter("Pid"));
					String sql = "SELECT * FROM apn_info where Pid='" + Pid + "'";
					resultSet = statement.executeQuery(sql);
					while (resultSet.next()) {
				%>
				<th>Patient Name</th>
				<td><input type=text name=name readonly
					class="form-control-plaintext" id="staticEmail"
					value=<%=resultSet.getString("pname")%>></td>
			</tr>
			<tr>
				<th>Patient Id</th>

				<!--  <input type="text" readonly class="form-control-plaintext" id="staticEmail" name=pid value="email@example.com"> -->
				<td><input type=text readonly class="form-control-plaintext"
					id="staticEmail" name=pid value=<%=resultSet.getString("pid")%>>

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
				<td colspan=2 align=center><input type=submit class="btn btn-secondary active" value=Book>
				</td>
			</tr>
			<tr>
				<td colspan=2 align=center style="color: red;">*Note:-Time is
					between 10:00Am- 06:00PM Only</td>
			</tr>
		</table>
	</form>
</body>
</html>