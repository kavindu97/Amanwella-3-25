<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <link rel="stylesheet" href="css/admin.css" />
    <link rel="stylesheet" href="css/supplier.css" />
	<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<script src="https://kit.fontawesome.com/6bcee8e3da.js"></script>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	<link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.css"
      integrity="sha256-9mbkOfVho3ZPXfM7W8sV2SndrGDuh7wuyLjtsWeTI1Q="
      crossorigin="anonymous"
    />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css"
      integrity="sha256-+N4/V/SbAFiW1MPBCXnfnP9QSN3+Keu+NlB+0ev/YKQ="
      crossorigin="anonymous"
    />
<title>Insert title here</title>
<link rel="stylesheet" href="css/supplier.css" />
</head>
<body>
	<%
	  	String email = (String)session.getAttribute("email");
		
		if(email == null) {
			response.sendRedirect("admin_login.jsp");
		}
  	%>
	<jsp:include page="admin_nav.jsp"></jsp:include>
		<div class="add_supplier_form">
			
			<div class="row">
			    		<div class="container">
						<form method="post" action="supplier_sevlet">
							<div class="row">
								<div class="col-sm-6">
									<div class="form-group">
							    	<label for="exampleInputEmail1">First Name</label>
							    	<input type="text" class="form-control" name="fname" aria-describedby="emailHelp" placeholder="Enter First Name" value="${supplier.first_name}">
									</div>
								</div>
								<div class="col-sm-6">
									<div class="form-group">
							    	<label for="exampleInputEmail1">Last Name</label>
							    		<input type="text" class="form-control" name="lname" aria-describedby="emailHelp" placeholder="Enter Last Name" value="${supplier.last_name}">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-6">
									<div class="form-group">
							    		<label for="exampleInputEmail1">E-Mail</label>
							    		<input type="email" class="form-control" name="email" aria-describedby="emailHelp" placeholder="Enter email" value="${supplier.email}">
									</div>
								</div>
								<div class="col-sm-6">
									<div class="form-group">
							    	<label for="exampleInputPassword1">Mobile</label>
							    	<input type="text" class="form-control" name="mobile" placeholder="Enter Mobile" value="${supplier.mobile}">
									</div>
								</div>
							</div>
							<div class="form-group">
							    <label for="exampleInputPassword1">Date of Birth</label>
							    <input type="date" class="form-control" name="dob" placeholder="Enter Date of Birth" value="${supplier.dob}">
							</div>
							<div class="form-group">
							    <label for="exampleFormControlTextarea1">Address</label>
							    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="address">${supplier.address}</textarea>
							 </div>
							 <div class="row">
									<div class="col-sm-3">
										<label class="form-check-label">
								        Gender
									    </label>
									    <div class="gender_male">
									    	<div class="form-check">
										      <label class="form-check-label" for="radio1">
										       	<input type="radio" class="form-check-input" id="radio1" name="gender" value="Male" checked>Male
										      </label>
										    </div>
									    </div>
									    <div class="form-check">
									      <label class="form-check-label" for="radio2">
									        <input type="radio" class="form-check-input" id="radio2" name="gender" value="Female">Female
									      </label>
									    </div>  
									</div>
									<div class="col-sm-3">
										<div class="form-group">
								    		<label for="exampleFormControlFile1">Profile Picture</label>
								    		<input type="file" class="form-control-file" id="exampleFormControlFile1" name="profile_picture">
										</div>
									</div>
							</div>
							<input type="hidden" value="${supplier.id}" name="id">
							<div class="add_suplier_btn">
								<button type="submit" class="btn btn-primary">ADD SUPPLIER</button>
							</div>
						</form>
			      		</div>
		 		</div>
		 </div>
	<script
      src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"
      integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.js"
      integrity="sha256-t8GepnyPmw9t+foMh3mKNvcorqNHamSKtKRxxpUEgFI="
      crossorigin="anonymous"
    ></script>
    <script src="./js/admin.js"></script>
</body>
</html>