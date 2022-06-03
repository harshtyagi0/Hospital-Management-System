<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Patient dash</title>
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
	background-image: url("bg10.jpg");
	background-repeat: no-repeat;
	background-size: cover;
	font-family: arial;
}

.container h1 {
	margin-top: 5vh;
}

.container h1{
	text-align: center;
}
.col-md-4 table{
color:white;
}



</style>
</head>
<body>
	<%@ include file="connectionDB.jsp"%>
	<div class="container">
		<h1>Patient Dash</h1>
		<div class="row">
			<div class="col-md-4">
				<table align="center" cellpadding="5" cellspacing="5" border="1">
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
						int Pid = Integer.parseInt(request.getParameter("Pid"));
						String sql = "SELECT * FROM patient where Pid='"+Pid+"'";
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

					
				</table>
			</div>
			<div class="col-md-4"></div>
			<div class="col-md-4">
			<div class="border border-dark rounded"> <h2>For appointment booking<br>
			 
			<%out.println("<td><p><a href=apointment.jsp?Pid=" + Pid + ">Click here </a>"); %></h2></div>
			
			</div>
			<%
					}
					} catch (Exception e) {
					e.printStackTrace();
					}
					%>
		</div>

	</div>

</body>
</html>