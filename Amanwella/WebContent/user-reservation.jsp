<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/travel.css">
<link rel="stylesheet" href="css/room.css"> 
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<script src="https://kit.fontawesome.com/6bcee8e3da.js"></script>

</head>
<body onresize="resizeNavi()">

<jsp:include page="naviBar-user.jsp"></jsp:include>
<div class="main">
	<div class="roomCard">
		<div class="roomImg">
			<img src="img/Room/deluxe1.jpg">
		</div>
		<div class="roomForm">
			<h2 >Executive Room</h2>
			<div class="roomFeatures">
				<h3>Features</h3>
				
					<li>express check-in</li>
					<li>TV with DVD player</li>
					<li>Breakfast at the Executive Club Lounge</li>
					<li>Daily newspaper</li>
					<li>Free pressing of one suit/dress per night</li>
					<li>shoe shine service</li>
					<li>Internet Access</li>	
			</div>
			<form  action="res_sevlet" method="post" ><!-- onsubmit="return confirmInsert()" -->
				<input type="hidden" name="reservation_type" value="executive_room">
				<%	
					String status = request.getParameter("status");

					if(status !=null) {
						if(status.equals("false")) {
							out.println("maximum number of participants limit exceeded");
						}
					}
					
					
				%>
				<div class="selectDiv">
					<div class="selectCard">
						<p>Check-in</p>
						<input id="datefield1" type='date' name="check_in" min='1899-01-01' max='2022-07-01' onclick="dateGet()"></input>
					</div>
					<div class="selectCard">
						<p>Check-out</p>
						<input id="datefield2" type='date' name="check_out" min='1899-01-01' max='2022-07-01' onclick="dateGet()"></input>
					</div>
				</div>
				<div class="selectDiv">
					<div class="selectCard">
						<p>Adult</p>
						<input type="number" name="adults" max="5" min="0" value="0" required="required">
					</div>
					<div class="selectCard">
						<p>Children</p>
						<input type="number" name="children" max="10" min="0" value="0" required="required">
					</div>
					<div class="selectCard">
						<p>Room Count</p>
						<input type="number" name="room_count" max="10" min="0" value="0" required="required">
					</div>
				</div>
				<button type="submit" name="submit">Book now</button>		
			</form>
		</div>
	</div>
	<div class="roomCard roomCard-reverse" >
		<div class="roomForm">
			<h2 >Presidential Room</h2>
			<div class="roomFeatures">
				<h3>Features</h3>
					<li>express check-in</li>
					<li>Plasma TV with DVD player</li>
					<li>Breakfast at the Executive Club Lounge</li>
					<li>Daily newspaper</li>
					<li>Free pressing of one suit/dress per night</li>
					<li>shoe shine service</li>
					<li>Internet Access</li>	
			</div>
			<form  action="res_sevlet" method="post"><!-- onsubmit="return confirmInsert()" -->
				<input type="hidden" name="reservation_type" value="2">
				<input type="hidden" name="uid" value="">
				<input type="hidden" name="uname" value="">
				<div class="selectDiv">
					<div class="selectCard" >
						<p>Type of room :</p>
						<select name="air_type">
							<option value="1">A/C</option>
							<option value="2">Non A/C</option>
						</select>
					</div>
						<!--  <input type="radio" name="air_type" value="2" />A/C
						<input type="radio" name="air_type" value="1" />Non A/C	
						 -->
					<div class="selectCard">
						<p>Package type(per day)</p>
						<select name="budget_package_type">
							<option value="1500">Rs-1500</option>
							<option value="1850">Rs-1850(only breakfast)</option>
							<option value="2500">Rs-2500(only lunch + dessert)</option>
							<option value="2500">Rs-2700(only breakfast + lunch & dessert)</option>
							<option value="3200">Rs-3200(Breakfast + Lunch &Dinner)</option>
						</select>
					</div>
				</div>
				<div class="selectDiv">
					<div class="selectCard">
						<p>Check-in</p>
						<input id="datefield1" type='date' name="check_in" min='1899-01-01' max='2022-07-01' onclick="dateGet()"></input>
					</div>
					<div class="selectCard">
						<p>Check-out</p>
						<input id="datefield2" type='date' name="check_out" min='1899-01-01' max='2022-07-01' onclick="dateGet()"></input>
					</div>
				</div>
				<div class="selectDiv">
					<div class="selectCard">
						<p>Adult</p>
						<input type="number" name="adults" max="5" min="0" >
					</div>
					<div class="selectCard">
						<p>Children</p>
						<input type="number" name="children" max="10" min="0">
					</div>
				</div>
						<!-- 	<li><input type="radio" name="budget_package_type" value="1500">Rs-1500</li>
							<li><input type="radio" name="budget_package_type" value="1850">
							Rs-1850(only breakfast)</li>
							<li><input type="radio" name="budget_package_type" value="2500">
							Rs-2500(only lunch + dessert)</li>
							<li><input type="radio" name="budget_package_type" value="2500">
							Rs-2700(only breakfast + lunch & dessert)</li>
							<li><input type="radio" name="budget_package_type" value="3200">
							Rs-3200(Breakfast + Lunch &Dinner)</li>
							 -->
					
						<button type="submit" name="submit">Book now</button>
					
			</form>
		</div>
		<div class="roomImg">
			<img src="img/Room/ROOMS-Executive-Room-Twin_1920x10801.jpg">
		</div>
	</div>
	<div class="roomCard">
		<div class="roomImg">
			<img src="img/Room/deluxe1.jpg">
		</div>
		<div class="roomForm">
			<h2 >Deluxe Room</h2>
			<div class="roomFeatures">
				<h3>Features</h3>
				
					<li>express check-in</li>
					<li>TV with DVD player</li>
					<li>Breakfast at the Executive Club Lounge</li>
					<li>Daily newspaper</li>
					<li>Free pressing of one suit/dress per night</li>
					<li>shoe shine service</li>
					<li>Internet Access</li>	
			</div>
			<form  action="res_sevlet" method="post"><!-- onsubmit="return confirmInsert()" -->
				<input type="hidden" name="reservation_type" value="3">
				<input type="hidden" name="uid" value="">
				<input type="hidden" name="uname" value="">
				<div class="selectDiv">
					<div class="selectCard" >
						<p>Type of room :</p>
						<select name="air_type">
							<option value="1">A/C</option>
							<option value="2">Non A/C</option>
						</select>
					</div>
						<!--  <input type="radio" name="air_type" value="2" />A/C
						<input type="radio" name="air_type" value="1" />Non A/C	
						 -->
					<div class="selectCard">
						<p>Package type(per day)</p>
						<select name="budget_package_type">
							<option value="1500">Rs-1500</option>
							<option value="1850">Rs-1850(only breakfast)</option>
							<option value="2500">Rs-2500(only lunch + dessert)</option>
							<option value="2500">Rs-2700(only breakfast + lunch & dessert)</option>
							<option value="3200">Rs-3200(Breakfast + Lunch &Dinner)</option>
						</select>
					</div>
				</div>
				<div class="selectDiv">
					<div class="selectCard">
						<p>Check-in</p>
						<input id="datefield1" type='date' name="check_in" min='1899-01-01' max='2022-07-01' onclick="dateGet()"></input>
					</div>
					<div class="selectCard">
						<p>Check-out</p>
						<input id="datefield2" type='date' name="check_out" min='1899-01-01' max='2022-07-01' onclick="dateGet()"></input>
					</div>
				</div>
				<div class="selectDiv">
					<div class="selectCard">
						<p>Adult</p>
						<input type="number" name="adults" max="5" min="0" >
					</div>
					<div class="selectCard">
						<p>Children</p>
						<input type="number" name="children" max="10" min="0">
					</div>
				</div>
						<!-- 	<li><input type="radio" name="budget_package_type" value="1500">Rs-1500</li>
							<li><input type="radio" name="budget_package_type" value="1850">
							Rs-1850(only breakfast)</li>
							<li><input type="radio" name="budget_package_type" value="2500">
							Rs-2500(only lunch + dessert)</li>
							<li><input type="radio" name="budget_package_type" value="2500">
							Rs-2700(only breakfast + lunch & dessert)</li>
							<li><input type="radio" name="budget_package_type" value="3200">
							Rs-3200(Breakfast + Lunch &Dinner)</li>
							 -->
					
						<button type="submit" name="submit">Book now</button>
					
			</form>
		</div>
	</div>
</div>
</body>

</html>