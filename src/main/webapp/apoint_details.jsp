<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Appointment Details</title>
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

.container h1 {
	margin-top: 5vh;
}

.container h1, .footer {
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
	<%@ include file="connectionDB.jsp"%>
	<div class="container">
		<h1>Appointment Details</h1>
		<div class="row">
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

						statement = con.createStatement();
						String sql = "SELECT * FROM apn_info";
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
									<input class="btn btn-primary btn-lg active" aria-pressed="true" type="submit" value="Delete">
								</p></td>
						</form>


						<%
						out.println("<td><p><a href=apointment.jsp?Pid=" + resultSet.getString("pId")
								+ "><button class=\"btn btn-dark \"> Edit </button> </a>");
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
			<div class="col-md-4"></div>
			<div class="col-md-4"></div>
		</div>

	</div>

</body>
</html>