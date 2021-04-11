<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="Vivek Yadav">
<link rel="icon" href="" type="image/icon type">
<title>Let's Start</title>

<!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">


<!-- Custom styles for this template-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6"
	crossorigin="anonymous">
</head>

<body class="bg-gradient-light ">
	<div class="container">
		<div class="card o-hidden border-0 shadow-lg my-5">
			<div class="card-body p-0">
				<!-- Nested Row within Card Body -->
				<div class="row justify-content-around">
					
					<div class="col-xl-6 col-lg-6 col-md-10 p-5">
						<div class="p-5">
							<div class="text-center">
                               <h1 class="h3 fw-bolder mb-4">Reset Password   <img src="looking_eye.gif" width=10% height="10%"></h1>
                               
							</div>
							<form class="user" action="" method="post">
								<div class="form-group ">
									<div class="row mb-3">
										<div class="input-group flex-nowrap">
											<span class="input-group-text" id="addon-wrapping"><i
												class="fa fa-key" aria-hidden="true"></i></span> <input type="password"
												class="form-control" placeholder="Current Password" name="currpassword"
												maxlength="4" pattern="^[.\S]{4}$" title="Password must be of 4 alpha-numeric characters"                                                aria-label="currpassword" aria-describedby="addon-wrapping"
												required>
										</div>
										<!-- <input type="text" class="form-control form-control-user" id="userName" name="userName" placeholder="UserName" required pattern=".{1,50}" title="Limit Characters to 50 only" /> -->
									</div>

									<div class="row mb-3">
										<div class="input-group flex-nowrap">
											<span class="input-group-text" id="addon-wrapping"> <i class="fa fa-lock" aria-hidden="true"></i>
											</span> <input type="password" class="form-control"
												placeholder="New Password" name="newpassword" aria-label="newpassword"
												maxlength="4" pattern="^[.\S]{4}$" title="Password must be of 4 alpha-numeric characters"                                                aria-describedby="addon-wrapping" required>
										</div>
										<!-- <input type="text" class="form-control form-control-user" id="userName" name="userName" placeholder="UserName" required pattern=".{1,50}" title="Limit Characters to 50 only" /> -->
									</div>

									<div class="row mb-3">
										<div class="input-group flex-nowrap">
											<span class="input-group-text" id="addon-wrapping"><i class="fa fa-lock" aria-hidden="true"></i></span> <input
												type="password" class="form-control form-control-user"
												aria-label="rePassword" aria-describedby="addon-wrapping"
												id="repassword" name="repassword" placeholder="Retype Password"
												required maxlength="4" pattern="^[.\S]{4}$"
												title="Password must be of 4 alpha-numeric characters"
												required />
										</div>
									</div>
									<div class="row mb-3 p-3">
										<button type="submit" name="userRegister"
											class="btn btn-primary btn-user btn-block">Change Password</button>
									</div>

								</div>
							</form>
						</div>
					</div>
				</div>

			</div>
		</div>

	</div>

	<!-- JavaScript Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf"
		crossorigin="anonymous"></script>


</body>

</html>
