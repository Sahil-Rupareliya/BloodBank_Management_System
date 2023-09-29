<%-- 
    Document   : patientblood
    Created on : Apr 4, 2023, 9:42:21 AM
    Author     : JENISH,CHINTAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Blood Request</title>
<link rel="stylesheet" type="text/css" href="css/blooddonor_reg.css" />

<style>
*::before, *::after {
    box-sizing: border-box;
}

.container {
  display: block;
}

ul {
  list-style: none;
}

a {
  text-decoration: none;
}

.nav {
  justify-content: space-around;
  align-items: center;
}


.nav__item {
=}

.nav__link {
  display: block;
  text-transform: uppercase;
}

.nav__link.active  {
  color: #ff4b4c;
}
input[type="text"], input[type="date"], input[type="email"], input[type="password"]

textarea, select {
	width: 100%;
	padding: 10px;
	border-radius: 5px;
	border: 1px solid #ccc;
	box-sizing: border-box;
	margin-bottom: 10px;
}

input[type="submit"], input[type="reset"] {
	background-color: #4CAF50;
	color: #fff;
	border: none;
	padding: 10px 20px;
	border-radius: 5px;
	cursor: pointer;
	margin-left: 70px;
	width: 80%;
	margin-top: 30px;
}

.name {
	margin-top: 20px;
	padding-top: 10px;
	z-index: 999;
	background-color: #fff;
}

.first-section {
	z-index: 1;
}

.sticky {
	position: sticky;
	top: 200px;
}

.first-section {
	height: 80px;
	width: 100%;
	background-color: #FFFFFF;
	padding-top: 5px;
	box-shadow: 0 2px 2px 0 rgba(0, 0, 0, .1);
	display: flex;
	padding-bottom: 5px;
	text-align: center;
	align-items: center;
	top: 0px;
	position: sticky;
}

img {
	width: 80px;
	height: 80px;
	padding-left: 80px;
	padding-bottom: 5px;
}

.button1 {
	box-shadow: rgba(0, 0, 0, 0.4) 1px 2px 4px;
	box-sizing: border-box;
	cursor: pointer;
	font-family: nunito, roboto, proxima-nova, "proxima nova", sans-serif;
	font-size: 16px;
	font-weight: 800;
	line-height: 16px;
	min-height: 40px;
	outline: 0;
	padding: 12px 14px;
	text-align: center;
	text-rendering: geometricprecision;
	text-transform: none;
	user-select: none;
	-webkit-user-select: none;
	touch-action: manipulation;
	vertical-align: middle;
	background-color: #FFFFFF;
	background-position: 0 0;
	color: #6e0202;
	margin-left: 750px;
}

.button1:hover, .button1:active {
	background-color: #FFFFFF;
	background-position: 0 0;
	color: #6e0202;
}

.button1:active {
	opacity: .5;
}

.h3 {
	margin-left: 100px;
	font-size: 26px;
	color: red;
}

.mid-left {
	margin-top: 30px;
	margin-left: 50px;
	position: sticky;
	color: red;
	top: 200px;
}

.mid-left ul {
	list-style: none;
	padding: 0;
	margin: 0;
	width: 17%;
}

.mid-left li {
	border: 1px solid black;
	padding: 10px;
	margin-bottom: 10px;
	border-radius: 10px;
}

.mid-left li:hover {
	background-color: #ddd;
}

a {
	text-decoration: none;
	font-size: 20px;
}

.mid-left li a {
	display: inline-block;
}

.mid-left li:hover {
	background-color: #ddd;
}

.mid-left li {
	border: 1px solid black;
	padding: 10px;
	margin-bottom: 10px;
}

.mid-left li a {
	display: block;
}

.mid-left li:hover {
	background-color: #ddd;
}

.name {
	height: 50px;
	font-size: 30px;
	padding-left: 70px;
	top: 90px;
	position: sticky;
	box-shadow: 0 2px 2px 0 rgba(0, 0, 0, .1);
}
</style>


<style>
.first-section {
	z-index: 1;
}

.sticky {
	position: sticky;
	top: 200px;
}

form {
	width: 800px;
	height: 740px;
	align-items: center;
	justify-content: center;
	border-radius: 5px;
	padding: 20px;
	margin-left: 400px;
	margin-top: -160px;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
	background-color: #fff;
	color: black;
}
</style>
</head>
<body>
	<section class="first-section">
		<img src="photos/1logo.png" alt="logo">
		<div class="h3">
			<h3>Indian Red Cross Society</h3>
		</div>
		<button class="button1">
			<a href="patient_login.jsp" class="a">Logout</a>
		</button>

	</section>






	<div class="name">
		Welcome&nbsp;&nbsp;&nbsp;<%=session.getAttribute("name")%>&nbsp;&nbsp;!!

	</div>


	<hr>

	 <div class="mid-left">
                 <ul class="mid-left-sec-1 nev sticky" style="top:200px;">
                     <li class="nav__item"><a class="nav__link " href="patientdashboard.jsp">Home</a></li>
                 </ul>
                  <ul class="mid-left-sec-2 nev sticky" style="top:250px;">
                      <li class="nav__item"><a class="nav__link " href="patientprofile.jsp">Manage Profile</a></li>
                  </ul><!-- comment -->
                   <ul class="mid-left-sec-3 nev sticky" style="top:300px;">
                       <li class="nav__item"><a class="nav__link active" href="patientblood.jsp">Request for blood</a></li>
                 </ul>
                   <ul class="mid-left-sec-4 nev sticky" style="top:350px;">
                       <li class="nav__item"><a class="nav__link " href="patientrequest.jsp">view request</a></li>
                 </ul>



<form action="patientblood" method="post" enctype="multipart/form-data" onsubmit="return validateForm()">
			<h1>Blood Require Form</h1>
			<hr>
			<hr>
			<br> <label for="name">Name:</label> <input type="text"
				id="name" name="name" value="<%=session.getAttribute("name")%>">
			<br>
			<br> <label for="requiredate"> Require Date</label> <input
				type="date" id="requiredate" name="Requiredate" required> <br>
			<br> <label for="Quantity"> Quantity</label> <input type="text"
				id="Quantity" name="Quantity" required> <br>
			<br> <label for="blood_group">Blood Group:*</label> <select
				id="blood_group" name="blood_group" required>
				<option value="">Select Blood Group</option>
				<option value="A+">A+</option>
				<option value="B+">B+</option>
				<option value="O+">O+</option>
				<option value="AB+">AB+</option>
				<option value="A-">A-</option>
				<option value="B-">B-</option>
				<option value="O+">O-</option>
				<option value="AB+">AB-</option>
				<!-- Add more options here -->
			</select> <br>
			<br> <label for="file">Upload Doctor Receipt*</label><br> <input
				type="file" name="photo" required> <br>
			<br> <input type="submit" value="Submit">
						<br> <input type="reset" value="Cancel">
			
		</form>
	</div>
	<script>
	
	const form = document.querySelector('form');
	const nameInput = document.querySelector('#name');
	const requiredateInput = document.querySelector('#requiredate');
	const quantityInput = document.querySelector('#Quantity');
	const bloodGroupInput = document.querySelector('#blood_group');

	form.addEventListener('submit', (event) => {
	  // Validate name input
	  if (nameInput.value.trim().length < 10 || nameInput.value.trim().length > 50) {
	    event.preventDefault();
	    alert('Name should be between 10 to 50 characters');
	  }

	  // Validate require date input
	  const today = new Date();
	  const requiredate = new Date(requiredateInput.value);
	  if (requiredate < today) {
	    event.preventDefault();
	    alert('Require date should be today or in the future');
	  }

	  // Validate quantity input
	  const quantity = parseInt(quantityInput.value);
	  if (isNaN(quantity) || quantity < 1 || quantity > 4) {
	    event.preventDefault();
	    alert('Quantity should be between 1 to 4');
	  }

	  // Validate blood group input
	  if (bloodGroupInput.value === '') {
	    event.preventDefault();
	    alert('Please select a blood group');
	  }
	});
	</script>
<script>
    document.addEventListener('DOMContentLoaded', function() {
    	const selector = '.nav__link';
    	const elems = Array.from( document.querySelectorAll( selector ) );
    	const navigation = document.querySelector( 'nav' );

    	function makeActive( evt ) {
    	  const target = evt.target;
    	  
    	  if ( !target || !target.matches( selector ) ) {
    	    return;
    	  }
    	  
    	  elems.forEach( elem => elem.classList.remove( 'active' ) );
    	    
    	    evt.target.classList.add( 'active' );
    	};

    	navigation.addEventListener( 'mousedown', makeActive );

    	} );
    </script>
</body>
</html>
