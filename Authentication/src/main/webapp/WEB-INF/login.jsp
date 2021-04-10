<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="Vivek Yadav">
<!-- <link rel="icon" href="" type="image/icon type"> -->
<title>Let's Start</title>

<!-- Custom fonts for this template-->
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Custom styles for this template-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6"
	crossorigin="anonymous">

<style>
#work-in-progress {
	position: fixed;
	width: 100%;
	height: 100%;
	font-size: 150px;
	text-align: center;
	vertical-align: middle;
	color: #000000;
	z-index: 200000;
	background-color: #FFFFFF;
}

.work-spinner {
	background-color: rgba(0, 0, 0, 0);
	border: 9px solid rgba(27, 61, 226, 0.9);
	opacity: .9;
	border-left: 5px solid rgba(0, 0, 0, 0);
	border-radius: 120px;
	-webkit-box-shadow: 0 0 35px #1B3DE2;
	box-shadow: 0 0 35px #1B3DE2;
	width: 100px;
	height: 100px;
	margin: 0 auto;
	-moz-animation: spin .5s infinite linear;
	-webkit-animation: spin .5s infinite linear;
	-o-animation: spin .5s infinite linear;
	animation: spin .5s infinite linear;
}

@
-moz-keyframes spin {from { -moz-transform:rotate(0deg);
	
}

to {
	-moz-transform: rotate(360deg);
}

}
@
-webkit-keyframes spin {from { -webkit-transform:rotate(0deg);
	
}

to {
	-webkit-transform: rotate(360deg);
}

}
@
keyframes spin {from { transform:rotate(0deg);
	
}

to {
	transform: rotate(360deg);
}

}
@
-o-keyframes spin {from { transform:rotate(0deg);
	
}

to {
	transform: rotate(360deg);
}
}
</style>
</head>

<body class="bg-gradient-light">
	<div id="work-in-progress" class="d-none">
		<div class="work-spinner"></div>
	</div>
	<div class="container">
		<!-- Outer Row -->
		<div class="row justify-content-center">
			<div class="col-xl-10 col-lg-12 col-md-9">
				<div class="card o-hidden border-0 shadow-lg my-5">
					<div class="card-body p-0">
						<!-- Nested Row within Card Body -->
						<div id="inputUserName" class="row collapse show">
							<div class="col-lg-3 d-none d-lg-block "></div>
							<div class="col-lg-6">
								<div class="p-5">
									<div class="text-center">
										<h1 class="h4 text-gray-900 mb-2 font-weight-bold">
											<b>Login Here?</b><br>
										</h1>
										<span class="text-danger">${error}</span> 
										<p class="mb-4" style="text-align: justify;">Please enter
											your USER-NAME, and click on Submit. You will be redirected
											to enter your password, try the redefined Login Experience!</p>
									</div>
									<div class=" form-group">
										<input type="text" name="username"
											class="form-control form-control-user text-lg-center"
											id="userName" placeholder="enter User-Name ...">
									</div>
									<div class="d-grid p-2 px-5">
										<button class="btn btn-sm btn-success font-weight-bold"
											onclick="submitUserName()">SUBMIT</button>
									</div>
									
									
									<hr>
									<div class="text-sm-center">
										<a class="small text-decoration-none" href="/register">Create
											an Account !</a>

										<!-- |
										<a class="small text-decoration-none" href="/forgot">Forgot Password ?</a> | -->
									</div>
								</div>
							</div>

						</div>

						<div id="inputPassword" class="row collapse">

							<div class="col-md-6">
								<div class="p-5">
									<div class="text-center">
										<h1 class="h4 text-gray-900 mb-2 font-weight-bold">
											<b>Verify Password ?</b>
										</h1>
									</div>
									<form action="" method="POST">
										<input type="hidden" name="hiddenUserName" id="hiddenUserName">
										<div class=" form-group mb-2">
											<input type="password" class="form-control form-control-user"
												maxlength="4" placeholder="####" id="token1" name="token1"
												pattern="^[.\S]{4}$"
												title="Password must be of 4 alpha-numeric characters"
												style="letter-spacing: 2rem; text-align: center; font-size: large; font-weight: bolder;" />
										</div>
										<div class=" form-group mb-2">
											<input type="password" class="form-control form-control-user"
												maxlength="4" placeholder="####" id="token2" name="token2"
												pattern="^[.\S]{4}$"
												title="Password must be of 4 alpha-numeric characters"
												style="letter-spacing: 2rem; text-align: center; font-size: large; font-weight: bolder;" />
										</div>
										<div class=" form-group mb-2">
											<input type="password" class="form-control form-control-user"
												maxlength="4" placeholder="####" id="token3" name="token3"
												pattern="^[.\S]{4}$"
												title="Password must be of 4 alpha-numeric characters"
												style="letter-spacing: 2rem; text-align: center; font-size: large; font-weight: bolder;" />
										</div>
										<div class=" form-group mb-2">
											<input type="password" class="form-control form-control-user"
												maxlength="4" placeholder="####" id="token4" name="token4"
												pattern="^[.\S]{4}$"
												title="Password must be of 4 alpha-numeric characters"
												style="letter-spacing: 2rem; text-align: center; font-size: large; font-weight: bolder;" />
										</div>
										<div class="text-center">
											<button type="submit" id="btnVerify"
												class="btn btn-secondary btn-user btn-block font-weight-bolder text-light">Verify
												Token</button>
										</div>

									</form>


									<hr>
								</div>
							</div>
							<div class="col-md-6">
								<div class="p-5">
									<div class="text-center">
										<h1 class="h3 text-gray-900 mb-2 font-weight-bold">
											<b>Redefined Login!!</b>
										</h1>
										<p class="" style="text-align: justify;">Please verify
											your login attempt, Through safe and redefined login process</p>
										<p class="font-weight-bold text-success">Stay safe from
											Shoulder Surfing</p>
										<p class="mb-4" style="text-align: justify;">Lorem ipsum
											dolor sit amet consectetur elit. Necessitatibus beatae
											accusamus, ab sit quam, odit fugiat ipsam, error natus eum
											ea. Expedita, minima soluta nihil molestias a?</p>
									</div>
									<hr>
									<div class="text-center">
										<a class="small" href="/register">Create an Account!</a>
									</div>
									<div class="text-center">
										<a class="small" href="/login">Already have an account?
											Login!</a>
									</div>
								</div>
							</div>
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

	<script>
		function submitUserName() {
			let userId = $('#userName').val();
			console.log(userId);
			if (!userId) {
				alert('Please enter UserName to continue forward');
			} else {
				$(window).bind("load", function() {
					$('#work-in-progress').fadeOut(100);
				});
				$.ajax({
					type : "POST",
					url : "validateUserName",
					contentType : "application/json; charset=utf-8",
					data : userId,
					cache : false,
					success : function(result) {
						var response = result;

						if (response == 200) {
							// User Exist Proceed to enter password
							$('#inputUserName').collapse('hide');
							$('#inputPassword').collapse('show');
							$('#hiddenUserName').val(userId);
							//  $('#hidden_userId').val(userId);
						} else if (response == 403) {
							// Account blocked permanently
							alert("Your Account has been blocked permanently. Please Contact Administrator.");
						} else if (response == 404) {
							alert("Username does not exist");
						} else {
							// window.location.href = "login";
							alert("Unecessary Error Faced, Please try again.");
						}

					},
					error : function(err) {
						alert("Error Faced, Please try Again!!!!");
					}
				});
				
				/* $.ajax({
				    type: "POST",
				    url: "blocked",
				    contentType : "application/json; charset=utf-8",
				    data : userId,
				   cache : false,
				    success: function(result) {
				        var response = result;
				        
				      /*   if (response > 0) {
				           $('#inputUserName').collapse('hide');
				           $('#inputPassword').collapse('show');
				           $('#hiddenUserName').val(userId);
				          //  $('#hidden_userId').val(userId);
				        } else {
				            alert("Username does not exist");
				        } */

				/*  if (response >0) {
					 $('#inputUserName').collapse('show');
				     $('#hiddenUserName').val(userId);
				   //  $('#hidden_userId').val(userId);
				    
				 } else {
					 alert("Account is blocked");
				 }
				},
				error: function(err){
					alert("Error Faced, Please try Again!!!!");
				 }
				}); */

			}
		}
	</script>

</body>

</html>