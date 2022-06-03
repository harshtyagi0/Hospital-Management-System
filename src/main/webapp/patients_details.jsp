<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Patient Details</title>
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
	background-image: url("20356368.jpg");
	background-repeat: no-repeat;
	background-size: cover;
	font-family: arial;
}

.container h1 {
	margin-top: 5vh;
}

.container h1 {
	text-align: center;
}


</style>
</head>
<body>
	<%@ include file="connectionDB.jsp"%>
	<div class="container">
		<h1>Patient Details</h1>
		<div class="row">
			<div class="col-md-4">
				<table align="center" cellpadding="5" cellspacing="5" >
					<tr>

					</tr>
					<tr>
						<td><b>ID</b></td>
						<td><b>Name</b></td>
						<td><b>Age</b></td>
						<td><b>Gender</b></td>
						<td><b>Phone</b></td>
						<td><b>Address</b></td>
						<td><b>Issue</b></td>
						<td><b>Specific Issue</b></td>
					</tr>
					<%
					try {
						
						statement = con.createStatement();
						String sql = "SELECT * FROM patient";
						resultSet = statement.executeQuery(sql);
						while (resultSet.next()) {
					%>
					<tr>
						<td><%=resultSet.getString("Pid")%></td>
						<td><%=resultSet.getString("name")%></td>
						<td><%=resultSet.getString("age")%></td>
						<td><%=resultSet.getString("gender")%></td>
						<td><%=resultSet.getString("phone")%></td>
						<td><%=resultSet.getString("address")%></td>
						<td><%=resultSet.getString("issue")%></td>
						<td><%=resultSet.getString("specIssue")%></td>
					</tr>
					
					<form action="delete_patient" method="post" style="float: right;">
							<input type="text" , name="Pid"
								value=<%=resultSet.getInt("Pid")%> style="display: none;"/>
							<td>
									<button class="btn btn-primary btn-lg active" aria-pressed="true" type="submit" value="Delete">Del</button>
								</td>
						</form>


						<%
						out.println("<td><p><a href=edit_patient.jsp?Pid=" + resultSet.getString("Pid")
								+ "><button class=\"btn btn-dark btn-lg active\" style=\" margin-top:1vw;\"> Edit </button> </a>");
						%>

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