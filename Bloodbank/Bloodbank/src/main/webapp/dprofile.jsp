<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>UPDATE PROFILE</title>
<link rel="stylesheet" type="text/css" href="css/blood_donor_reg.css" />

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
form {
	width: 800px;
	height: 1300px;
	margin-left: 400px;
	margin-top: -220px;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
	background-color: #fff;
	z-index: -1;
	color:black;
	
}
input[type="text"],
input[type="date"],
input[type="email"],
input[type="password"],

textarea,
select {
  width: 100%;
  padding: 10px;
  border-radius: 5px;
  border: 1px solid #ccc;
  box-sizing: border-box;
  margin-bottom: 10px;
}
input[type="submit"],input[type="reset"] {
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
</style>




<style>
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

</head>
<body>



<input type="hidden" id="status" value="<%= request.getAttribute("status")%>">



	<div class="first-section">
		<img src="photos/1logo.png" alt="logo">
		<div class="h3">
			<h3>Indian Red Cross Society</h3>
		</div>
		<button class="button1">
			<a href="Logout" class="a" style="color: #6e0202;">Logout</a>
		</button>

	</div>


	<div class="name">
		Welcome&nbsp;&nbsp;&nbsp;<%=session.getAttribute("name")%>&nbsp;&nbsp;!!

	</div>

	<div class="mid-left">
		<ul class="mid-left-sec-1 nav sticky">
			<li class="nav__item"><a class="nav__link "   href="donordashboard.jsp">Home</a></li>
		</ul>
		<ul class="mid-left-sec-2 nav sticky" style="top: 255px;">
			<li class="nav__item"><a class="nav__link active"   href="dprofile.jsp">Manage Profile</a></li>
		</ul>
		<!-- comment -->
		<ul class="mid-left-sec-3  nav sticky" style="top: 310px;">
			<li class="nav__item"><a class="nav__link "   href="dfeedback.jsp">Give Feedback</a></li>
		</ul>
		<ul class="mid-left-sec-5 nav sticky" style="top: 365px;">
			<li class="nav__item"><a class="nav__link "   href="dcamp.jsp">View Blood Camp </a></li>
		</ul>
		<!-- comment -->
		<ul class="mid-left-sec-7 nav  sticky" style="top: 420px;">
			<li class="nav__item"><a class="nav__link "   href="dblood.jsp">Donate Blood</a></li>
		</ul>

	

		<%
		String id = request.getParameter("id");
		String driver = "com.mysql.jdbc.Driver";
		String connectionUrl = "jdbc:mysql://localhost:3306/";
		String database = "bloodbank";
		String userid = "root";
		String password = "Chintan@123";
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
		%>
		<%
		try {
			connection = DriverManager.getConnection(connectionUrl + database, userid, password);
			statement = connection.createStatement();
			String sql = "select * from donor_reg where id="+ "id";
			resultSet = statement.executeQuery(sql);
			if (resultSet.next()) {
		%>
<form action="updateprofile.jsp" method="POST" onsubmit="return validateForm()">
			<h1>Edit Your Profile</h1>
			<hr>
			<hr>
			<hr>
			<br> 
			 <label for="id"></label> <input type="hidden"
				id="id" name="id" value="<%=resultSet.getString("id")%>"
				required> <br><br>
				
			<label for="name">Full Name:*</label> <input type="text"
				id="name" name="name" value="<%=resultSet.getString("name")%>"
				required> <br>
			<br> <label for="address">Address:*</label> <input type="text"
				id="address" name="address"
				value="<%=resultSet.getString("address")%>" required> <br>
			<br>  <label for="state">State:*</label>
        <select id="state" name="state" value="<%=resultSet.getString("name")%>" required >
          <option value="<%=resultSet.getString("state")%>">Select State</option>
                <option value="Andhra Pradesh">Andhra Pradesh</option>
                <option value="Arunachal Pradesh">Arunachal Pradesh</option>
                <option value="Assam">Assam</option>
                <option value="Bihar">Bihar</option>
                <option value="Chhattisgarh">Chhattisgarh</option>
                <option value="Goa">Goa</option>
                <option value="Gujarat">Gujarat</option>
                <option value="Haryana">Haryana</option>
                <option value="Himachal Pradesh">Himachal Pradesh</option>
                <option value="Jharkhand">Jharkhand</option>
                <option value="Karnataka">Karnataka</option>
                <option value="Kerala">Kerala</option>
                <option value="Madhya Pradesh">Madhya Pradesh</option>
                <option value="Maharashtra">Maharashtra</option>
                <option value="Manipur">Manipur</option>
                <option value="Meghalaya">Meghalaya</option>
                <option value="Mizoram">Mizoram</option>
                <option value="Nagaland">Nagaland</option>
                <option value="Odisha">Odisha</option>
                <option value="Punjab">Punjab</option>
                <option value="Rajasthan">Rajasthan</option>
                <option value="Sikkim">Sikkim</option>
                <option value="Tamil Nadu">Tamil Nadu</option>
                <option value="Telangana">Telangana</option>
                <option value="Tripura">Tripura</option>
                <option value="Uttarakhand">Uttarakhand</option>
                <option value="Uttar Pradesh">Uttar Pradesh</option>
                <option value="West Bengal">West Bengal</option>
        </select>
         <label for="district">District:*</label>
          <select id="city" name="city" required>
            <option value="<%=resultSet.getString("city")%>">Select District</option>
        </select>
        
        <br><br><label for="pincode">Pincode:*</label> <input type="text"
				id="pincode" name="pincode"
				value="<%=resultSet.getString("pincode")%>" required> <br>
			<br> <label for="gender">Gender:*</label> <input type="radio"
				id="gender" name="gender"
				value="<%=resultSet.getString("gender")%>" required>Male <input
				type="radio" id="gender" name="gender"
				value="<%=resultSet.getString("gender")%>" required>Female
			<input type="radio" id="gender" name="gender"
				value="<%=resultSet.getString("gender")%>" required>Other <br>
			<br> <label for="age">Age:*</label> <input type="text" id="age"
				name="age" value="<%=resultSet.getString("age")%>" required>
			<br>
			<br> <label for="bloodgroup">Blood Group:*</label> <select
				id="bloodgroup" name="blood_group"
				value="<%=resultSet.getString("blood_group")%>">
				<option value=""></option>
				<option value="A+">A+</option>
				<option value="A-">A-</option>
				<option value="B+">B+</option>
				<option value="B-">B-</option>
				<option value="AB+">AB+</option>
				<option value="AB-">AB-</option>
				<option value="O+">O+</option>
				<option value="O-">O-</option>
			</select> <br>
			<br> <label for="mobile no">Mobile
				no:*</label> <input type="text" id="mobileno" name="mobile_no"
				value="<%=resultSet.getString("mobile_no")%>" required> <br>
			<br> <label for="password">Password:*</label> <input
				type="password" id="password" name="password"
				value="<%=resultSet.getString("password")%>" required> <br>
			<br> <label for="retypepassword">Retype Password:*</label> <input
				type="password" id="retypepassword" name="retype_pass"
				value="<%=resultSet.getString("retype_pass")%>" required>
			<br> <br> <br> <input type="submit"
				value="UPDATE PROFILE" name="signup" id="signup">
				
				<input type="reset"
				value="CANCEL" name="signup" id="signup"> <br> <br>
		</form>
	</div>

	<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js">
		
	</script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	<script type="text/javascript">
		var status = document.getElementById("status").value;
		
		if (status == "success1") {
			swal("Congrats", "Edit Data Successfully", "success");
		}
	</script>
   <script src="./js/blood_bank_address.js"></script>

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
    <script>
    function validateForm() {
    	  var name = document.getElementById("name").value;
    	  var address = document.getElementById("address").value;
    	  var state = document.getElementById("state").value;
    	  var city = document.getElementById("city").value;
    	  var pincode = document.getElementById("pincode").value;
    	  var gender = document.getElementsByName("gender");
    	  var age = document.getElementById("age").value;
    	  var blood_group = document.getElementById("bloodgroup").value;
    	  var mobile_no = document.getElementById("mobileno").value;

    	  // Check if all required fields are filled
    	  if (name == "" || address == "" || state == "" || city == "" || pincode == "" || age == "" || blood_group == "" || mobile_no == "") {
    	    alert("All fields must be filled out");
    	    return false;
    	  }

    	  // Check the format of the input fields
    	  var name_regex = /^[a-zA-Z\s]+$/;
    	  var pincode_regex = /^\d{6}$/;
    	  var mobile_no_regex = /^[6789]\d{9}$/;

    	  if (!name_regex.test(name)) {
    	    alert("Name field should only contain alphabets");
    	    return false;
    	  }

    	  const ageNum = Number(age);
    	  
    	  // Check if the age is a number between 18 and 45
    	  if (isNaN(ageNum) || ageNum < 18 || ageNum > 45) {
    	    alert("Please enter a valid age between 18 and 45.");
    	    return false;
    	  }
    	  
    	  if (!pincode_regex.test(pincode)) {
    	    alert("Pincode should be 6 digits");
    	    return false;
    	  }

    	  if (!mobile_no_regex.test(mobile_no)) {
    	    alert("Mobile no should be 10 digits starting with 6, 7, 8, or 9");
    	    return false;
    	  }

    	  // Check if gender is selected
    	  var gender_selected = false;
    	  for (var i = 0; i < gender.length; i++) {
    	    if (gender[i].checked) {
    	      gender_selected = true;
    	      break;
    	    }
    	  }

    	  if (!gender_selected) {
    	    alert("Gender field is required");
    	    return false;
    	  }

    	  // If all validations pass, return true
    	  return true;
    	}

    </script>
</body>
</html>