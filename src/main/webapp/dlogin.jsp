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
			font-family: arial;
		}
		
		.container h1 {
			margin-top: 20vh;
			text-align: center;
			
		}
		
		.bg_color {
			background: white;
		}
		
		.wd {
			width: 25%;
		}
		
		.bg_color button {
			margin-left: 69%;
		}
	</style>
</head>
<body>

	<div class="container mx-auto ">
		<h1>HopsDBMS|<br>Doc Login</h1>
		<div class="mx-auto wd bg_color ">
			<form action="dLogin" method="post">
				<span class="font-weight-bold">User Name</span><br> 
				<input type="text" class="form-control" id="inputUserName"
					placeholder="UserName" name="UserName"><br> 
				<span class="font-weight-bold">Password</span><br> 
				<input type="password" class="form-control" id="inputPassword"
					placeholder="Password" name="pwd"><br> 
				<span>Don't have an account? <a href="doc_signUp.jsp">Create account</a><br>
				</span>
					<b> <font color="red"> ${error}</font>
					</b>
				<button type="submit" class="btn btn-primary pull-right"
					name="submit">
					Login <i class="fa fa-arrow-circle-right"></i>
				</button>
			</form>

		</div>
	</div>
</body>
</html>