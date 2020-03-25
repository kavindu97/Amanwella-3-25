<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<meta charset="utf-8">
<link rel="stylesheet" href="css/supplier.css" />
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="DataTables/datatables.min.css"/>
<title>Insert title here</title>
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
    <link rel="stylesheet" href="css/admin.css" />
</head>
<body>
	<%
	  	String email = (String)session.getAttribute("email");
		
		if(email == null) {
			response.sendRedirect("admin_login.jsp");
		}
  	%>
	<jsp:include page="admin_nav.jsp"></jsp:include>
				<div class="row">
					<div class="add_new_supplier_btn">
						<button class="btn btn-primary" onclick="window.location.href='supplier.jsp'">ADD NEW SUPPLIER</button>
					</div>
						<table class="table table-bordered table-dark" id="supplier_table">
							<thead>
								<tr>
								   <th scope="col">First Name</th>
								   <th scope="col">Last Name</th>
								   <th scope="col">E-Mail</th>
								   <th scope="col">Mobile</th>
								   <th scope="col">Birthday</th>
								   <th scope="col">Location</th>
								   <th scope="col">Gender</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${list}" var="supplier">
								<tr>
									<td><c:out value="${supplier.first_name}"/></td>
									<td><c:out value="${supplier.last_name}"/></td>
									<td><c:out value="${supplier.email}"/></td>
									<td><c:out value="${supplier.mobile}"/></td>
									<td><c:out value="${supplier.dob}"/></td>
									<td><c:out value="${supplier.address}"/></td>
									<td><c:out value="${supplier.gender}"/></td>
									<td><button class="btn btn-primary" onclick="window.location.href='${pageContext.request.contextPath}/supplier_sevlet?action=EDIT&id=${supplier.id}'">EDIT</button></td>
									<td><button class="btn btn-primary" onclick="window.location.href='${pageContext.request.contextPath}/supplier_sevlet?action=DELETE&id=${supplier.id}'">DELETE</button></td>
									<td><button class="btn btn-primary">PROFILE</button></td>
								</tr>
							</c:forEach>
							</tbody>
						</table>
				</div>
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
	<script src="https://unpkg.com/jquery@3.3.1/dist/jquery.min.js"></script>
	<script type="text/javascript" src="DataTables/datatables.min.js"></script>
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
	<script>
		$(document).ready(function() {
	    	$('#supplier_table').DataTable();
		} );
	</script>
</body>
</html>