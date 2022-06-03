<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>HOSPITAL DBMS</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="style.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
	integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
	<style type="text/css">
	body{
	background-image: url("bg3.jpg");
	background-repeat: no-repeat;
	background-size: cover;
	}
	</style>
</head>
<body>
	<header>
		<div class="container bgcolor rounded text-center">
			<div class="container bgcolor_none width_">
				<h1>HOSPITAL DBMS</h1>
			</div>
		</div>
	</header>
	<section class="container space">
		<img src="image.jpg" alt="..." class="rounded">
	</section>

	<div class="container space">
		<div class="row">
			<div class="col-md-5 bgcolor">
				<i class="fa-solid fa-user"></i> Admin Login 
				<a href="alogin.jsp">
					<button class="btn btn-primary">Login</button>
				</a>
			</div>
			<div class="col-md-3 bgcolor rounded">
				<i class="fa-solid fa-user-doctor"></i> Doctor Login
				<a href="dlogin.jsp">
					<button class="btn btn-primary">Login</button>
				</a>
			</div>
			<div class="col-md-4 bgcolor">
				<i class="fa-solid fa-users-line"></i> User Login <a
					href="plogin.jsp">
					<button class="btn btn-primary">Login</button>
				</a>
			</div>

		</div>
	</div>

	<section class="container border border-dark space">
		<h1>Hospital Management System</h1>
		<p class="text-lg">This is a hospital management user interface
			for managing, monitoring and controlling the system in a hospital.
			This application is developed using java, which mainly focuses on
			basic operations in a hospital like adding new patient information,
			and updating new information, assigning the doctor for patient. It
			features a familiar and well thought-out, an attractive online user
			interface, combined with strong management capabilities. The backend
			of the project is</p>
	</section>
</body>
</html>