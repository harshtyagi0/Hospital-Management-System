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
	background-image: url("https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.freepik.com%2Ffree-photos-vectors%2Fdoctor-dashboard&psig=AOvVaw2D9BESZxUOevMWFp437SIr&ust=1654365221433000&source=images&cd=vfe&ved=2ahUKEwi-m4vs7JH4AhWWg2MGHdl_DjgQjRx6BAgAEAs");
	background-size: cover;
	background-repeat: no-repeat;
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

table, tr, td, th {
	background: transparent;
	border: 2px double black;
}
</style>
</head>
<body>
	<%@ include file="connectionDB.jsp"%>
	<div class="container-fluid">
		<h1>Doctor Dash</h1>
		<div class="row">
			<div class="col-md-4">
				<table align="center" cellpadding="5" cellspacing="5">
					<tr aling="center">
						<th colspan=2 aling="center" style="padding-left: 10vh;">Doctor
							Details</th>
					</tr>
					<tr>
						<%
						try {

							statement = con.createStatement();
							int dId = Integer.parseInt(request.getParameter("dId"));
							String sql = "SELECT * FROM doctor where dId='" + dId + "'";
							resultSet = statement.executeQuery(sql);
							while (resultSet.next()) {
						%>

					</tr>
					<tr class="border border-dark">
						<td><b>ID</b></td>
						<td><%=resultSet.getString("did")%></td>
					</tr>
					<tr>
						<td><b>Name</b></td>
						<td><%=resultSet.getString("name")%></td>
					</tr>
					<tr>
						<td><b>Age</b></td>
						<td><%=resultSet.getString("age")%></td>
					</tr>
					<tr>
						<td><b>Gender</b></td>
						<td><%=resultSet.getString("gender")%></td>
					</tr>
					<tr>
						<td><b>Phone</b></td>
						<td><%=resultSet.getString("phone")%></td>
					</tr>
					<tr>
						<td><b>Address</b></td>
						<td><%=resultSet.getString("address")%></td>
					</tr>
					<tr>
						<td><b>specialization</b></td>

						<td><%=resultSet.getString("specialIn")%></td>
					</tr>
					<tr>
						<td><b>other specialization</b></td>
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
				<table align="center" cellpadding="5" cellspacing="5">
					<tr>

					</tr>
					<tr>
						<td><b>PID</b></td>
						<td><b>Patient Name</b></td>
						<td><b>Doctor Name</b></td>
						<td><b>Specialization</b></td>
						<td><b>Appointment Date</b></td>
						<td><b>Appointment Time</b></td>
						<td><b>Delete</b></td>
						<td><b>Edit</b></td>

					</tr>
					<%
					try {

						statement = con.createStatement();
						String name = request.getParameter("name");
						String sql = "SELECT * FROM apn_info where dname='" + name + "'";

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
						<form action="Delete_up" method="post">
							<input type="text" , name="pId"
								value=<%=resultSet.getInt("pId")%> style="display: none;">
							<td><p>
									<button type="submit">Delete</button>
								</p></td>
						</form>


						<%
						out.println("<td><p><a href=edit.jsp?pId=" + resultSet.getString("pId") + "><button class=\"btn btn-dark \"> Edit </button> </a>");
						%>

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