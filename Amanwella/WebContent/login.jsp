<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/log-reg.css">
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://kit.fontawesome.com/6bcee8e3da.js"></script>


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<title>Login</title>
</head>
<body>

	<jsp:include page="naviBar-user.jsp"></jsp:include>
	<div class="reg-log-main-div">
	<div class="mainImgDiv">
			<img src="img/log-reg/rg_bg_1.jpg">
	</div>
	<div class="mainFormDiv mainFormDiv-log" >
			<div class="trpdiv">
			<span class="status-warning">
				</span>
				<form action="UserHandler" method="post" >
					<h2>Login</h2>
					<label style="font-size: 14px;margin-top: 10px;font-weight: 600;">Already have an account? <span ><a href="reg.jsp">Register.</a></span></label>
					
					<input type="hidden" name="action" value="login">

					<div class="trpdiv_form_div">
						<div class="trpdiv_form_group">
							<div class="trpdiv_form_info trpdiv_form_info-log">
								<label>Username | Email</label>
								<input type="text" name="userName">
							</div>
						</div>
					</div>
					<div class="trpdiv_form_div">
						<div class="trpdiv_form_group">
							<div class="trpdiv_form_info trpdiv_form_info-log">
								<label>password</label>
								<input type="password" name="password">
							</div>
						</div>
					</div>
					<div class="trpdiv_form_group">
							<div class="">
								<label class="container"> 
									<input type="checkbox" name="confirmEmailMessage" ><span class="checkmark"></span>
								</label>
									<span class="condition">Remember me.</span>
							</div>	
					</div>
					<input type="submit" value="Login">
				</form>
			</div>
		</div>
</div>
</body>
</html>