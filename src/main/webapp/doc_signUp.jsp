<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor SignUp</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
	integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<style type="text/css">
body {
	background-image: url("bg6.jpg");
	background-repeat: no-repeat;
	background-size: cover;
	font-family: arial;
	color: white;
}

h1 {
	color: rgb(196, 196, 196);
	text-align: center;
}

table {
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
	<h1>Doctor SignIn</h1>
	<form action="DoctorSign" method="post">
		<table align=center>
			<tr>
				<th>Doctor Name:</th>
				<td><input type=text name=name placeholder="doctor name"></td>
			</tr>
			<tr>
				<th>Doctor ID :</th>
				<td><input type=number name=did placeholder="doctor Id"></td>
			</tr>
			<tr>
				<th>Age:</th>
				<td><input type=number name=age placeholder="eg.-40"></td>
			</tr>
			<tr>
				<th>Gender :</th>
				<td>Male : <input type="radio" name="gender" value="male">
					Female : <input type="radio" name="gender" value="female">
					Other:<input type="radio" name="gender" value="other"></td>
			</tr>
			<tr>
				<th>Contact No. :</th>
				<td><input type="text" name="contact" placeholder="1234567890"></td>
			</tr>
			<tr>
				<th>Address :</th>
				<td><input type=text name=address placeholder="dehradun"></td>
			</tr>
			<tr>
				<th>Password :</th>
				<td><input type=password name=pass placeholder="Only 4 Digit"></td>
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
				<th>Specific Specialization :</th>
				<td><textarea name=specifics></textarea></td>
			</tr>
			<tr>
				<td colspan=2 align=center><input type=submit value=Register></td>
			</tr>
			<tr>
				<td colspan=2 align=center>Already Have an account? <a
					href="dlogin.jsp"> Click Here </a></td>
			</tr>
		</table>
	</form>
</body>
</html>
