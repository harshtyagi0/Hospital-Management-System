<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Patient Login</title>
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
	background-image: url("bg8.jpeg");
	background-repeat: no-repeat;
	background-size: cover;
	font-family: arial;
}

.container h2 {
	margin-top: 20vh;
	text-align: center;
}



.wd {
	width: 25%;
}

button {
	margin-left: 69%;
}
</style>
</head>
<body>

	<div class="container mx-auto">
		<h2>HopsDBMS|Patient Login</h2>
		<div class="mx-auto wd bg_color">
			<form action="pLogin" method="post">
				<span class="font-weight-bold">User Name</span><br> 
				<input type="text" class="form-control" id="inputUserName" placeholder="UserName" name="UserName"><br> 
				<span class="font-weight-bold">Password</span><br> 
				<input type="password" class="form-control" id="inputPassword" placeholder="Password" name="pwd"><br> 
				<span>Don't have an account? <a href="patient_signUp.jsp">Create account</a></span><br>
				<div class="bg_color">
					<button type="submit" class="btn btn-primary ">
						Login <i class="fa-solid fa-circle-arrow-right"></i>
					</button>
				</div>
			</form>
		</div>
	</div>

</body>
</html>