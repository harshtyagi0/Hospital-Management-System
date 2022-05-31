<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	<form action="PatientSign" method="post">
		<table align=center>
			<tr>
				<th>Patient Name
				<td><input type=text name=name placeholder="patient name">
				</td>
			</tr>
			<tr>
				<th>Patient Id
				<td><input type=text name=pid placeholder="patient Id">
				</td>
			</tr>
			<tr>
				<th>Age</th>
				<td><input type=number name=age placeholder="eg.-25"></td>
			</tr>
			<tr>
				<th>Gender :</th>
				<td>Male : <input type="radio" name="gender" value="male">
					Female : <input type="radio" name="gender" value="female">
					Other:<input type="radio" name="gender" value="other">
				</td>
			</tr>
			<tr>
				<th>Phone No. :</th>
				<td><input type=text name=phone placeholder="9876543210">
				</td>
			</tr>
			<tr>
				<th>Address :</th>
				<td><input type=text name=address placeholder="Raipur"></td>
			</tr>
			<tr>

				<th>Password :</th>

				<td><input type=password name=pass placeholder="Only 4 Digit">
				</td>
			</tr>

			<tr>
				<th>Issue :</th>

				<td><select id="issue" name=issue>
						<option value="drc">Daily Routine CheckUp</option>
						<option value="fever">Fever</option>
						<option value="cold">Cold</option>
						<option value="bodypain">Body Pain</option>
						<option value="headache" selected>Headache</option>
						<option value="bp">Blood Pressure</option>
						<option value="suger">Sugar</option>
						<option value="other">Other Reason</option>
				</select></td>
			</tr>
			<tr>
				<th>Specific Issue :</th>
				<td><textarea name=sissue></textarea></td>
			</tr>
			<tr>
				<td colspan=2 align=center><input type=submit value=Register>
				</td>
			</tr>
			<tr>
				<td colspan=2 align=center>Already Have an account? <a
					href="plogin.jsp"> Click Here </a></td>
			</tr>
		</table>
	</form>
</body>
</html>