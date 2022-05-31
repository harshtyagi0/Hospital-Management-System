<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Admin Login</title>
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
		margin-top: 10vh;
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

	<div class="container   mx-auto ">
		<h1>
			HopsDBMS|<br>Admin Login
		</h1>

		<div class="mx-auto bg_color wd border border-dark">

			<span style="color: blue;">Sign in to your Account</span>

			<form action="aLogin" method="get">
				<span class="font-weight-bold">User Name</span> <br> <input
					type="text" class="form-control" id="inputUserName"
					placeholder="UserName" name="UserName"><br> <span
					class="font-weight-bold">Password</span><br> <input
					type="password" class="form-control" id="inputPassword"
					placeholder="Password" name="pwd"><br> <b> <font
					color="red"> ${error}</font>
				</b>
				<button type="submit" class="btn btn-primary pull-right"
					name="submit">
					Login <i class="fa fa-arrow-circle-right"></i>
				</button>
			</form>
			<br> <span class="footer">&#169; HOSPDBMS. All rights
				reserved</span>

		</div>

	</div>
</body>
</html>