<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	body{
	background-image: url('bg4.jpg'); 
	background-repeat:no-repeat; 
	background-size:cover;
	 padding-top: 5vw;
	}

	</style>
</head>
<body>
	<%@ include file="connectionDB.jsp"%>
	<div></div>
	<form action="update_data" method="post">
		<div class="form-group row">
		<div class="col-md-3"></div>
			<%
			try {

				statement = con.createStatement();
				int pId = Integer.parseInt(request.getParameter("pId"));
				String sql = "SELECT * FROM apn_info where pId='" + pId + "'";
				resultSet = statement.executeQuery(sql);
				while (resultSet.next()) {
			%>
			<label for="staticEmail" class="col-sm-2 col-form-label">ID</label>
			<div class="col-sm-5">
				<input type="text" readonly class="form-control-plaintext"
					id="staticEmail" name=pId value=<%=resultSet.getString("pId")%>>
			</div>
		</div>
		<div class="form-group row">
		<div class="col-md-3"></div>
			<label for="inputPassword" class="col-sm-2 col-form-label">Date</label>
			<div class="col-sm-5">
				<input type="date" class="form-control" name=apdate placeholder="2020/06/01">
			<br>
			<input type="submit" value="Submit" class="btn btn-dark">
			</div>
			<%			}
			} catch (Exception e) {
			e.printStackTrace();
			}
			%>
		</div>
	</form>
</body>
</html>