<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/travel.css">
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" ></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://kit.fontawesome.com/6bcee8e3da.js"></script>
<title>Travel</title>
</head>

<body onload="notifyPopup()">
<body>

	<jsp:include page="naviBar-user.jsp"></jsp:include>
<div class="main">
	
	<section id="travelSug">
		<div class="popup-notification-pannel successColour" id="popup-notification-pannel">
			<p>
				<i class="fas fa-cog"></i>
			</p>
		</div>
		<div class="headTitle">
			<h2>Popular destinations in 2019</h2>
		</div>
		<div class="main_img_location_div">
			<div class="img_location">
				<img src="img/travel_pg/special_3.jpg">
				<div class="details">
					<h2 >ArugamBay</h2>
					<a href="#f1"><h4 id="ArugamBay" onclick="funcDestination('ArugamBay')">Pick</h4></a>
				</div>
			</div>
			<div class="img_location">
				<img src="img/travel_pg/special_1.jpg">
				<div class="details">
					<h2 >HortonPlace</h2>
					<a href="#f1"><h4 onclick="funcDestination('HortonPlace')">Pick</h4></a>
				</div>
			</div>
			<div class="img_location">
				<img src="img/travel_pg/special_2.jpg">
				<div class="details">
					<h2 >YalaPark</h2>
					<a href="#f1"><h4 onclick="funcDestination('YalaPark')">Pick</h4></a>
				</div>
			</div>
			<div class="img_location">
				<img src="img/travel_pg/special_4.jpg">
				<div class="details">
					<h2 >Trincomalee</h2>
					<a href="#f1"><h4 onclick="funcDestination('Trincomalee')">Pick</h4></a>
				</div>
			</div>
		</div>
	</section>
	<section>
		<div class="travel_main" id="f1">
			<div class="title_div">
				<h3>Find the Adventure of a lifetime</h3>
			</div>
			<div class="travel_req">
				<form action="TransManageHandler" method="post" onsubmit="return confirmInsert()">
					<input type="hidden" name="action" value="newTravel">
					<input type="hidden" name="uid" value="">
					<input type="hidden" name="uname" value="">
					
					<div class="find_item">
						<label >Destination</label>
						<a href="#travelSug"><input type="text" name="destination" id="dLocation" placeholder="Destination" required readonly="readonly"></a>
					</div>
					<div class="find_item">
						<label >Vehicle type</label>
						<!-- <input type="text" name="vehicle" id="vehicleType" placeholder="Vehicle type" required > -->
						<select name="vehicle" id="vehicleType" required>
							
							<option>Tuk</option>
							<option>Buddy</option>
							<option>Micro</option>
							<option>Mini</option>
							<option>Car</option>
							<option>Minivan</option>
							<option>Van</option>
							<option>Vip</option>
						</select>
	
					</div>
					<div class="find_item">
						<label >Cost (lkr)</label>
						<input type="text" name="cost" id="travelCost" placeholder="Cost" readonly="readonly">
	
					</div>
					<div class="find_item">
						<label>Need Date </label>
						<input id="datefield" type='date' name="needdate" min='1899-01-01' max='2022-07-01' onclick="dateGet()"></input>
						</div>
					<button type="submit">Arrange</button>
				</form>
				
			</div>
		</div>
	</section>
	<div class="travel_main_2" id="recentRideTable" >
		<div>
			<h3>Recent Ride</h3>
		</div>
	</div>
</div>
</body>
</html>
