<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BLOOD DONATION FORM</title>
           <link rel="stylesheet" href="css/blooddonor_reg.css">
           
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
	height: 1100px;
	margin-left: 400px;
	margin-top: -220px;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
	background-color: #fff;
	z-index: -1;
	color:black;
	
}
input[type="submit"],input[type="reset"]{
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
			<li class="nav__item"><a class="nav__link "   href="dprofile.jsp">Manage Profile</a></li>
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
			<li class="nav__item"><a class="nav__link active"   href="dblood.jsp">Donate Blood</a></li>
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
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from donateblood where id="+"id";
resultSet = statement.executeQuery(sql);
	
%>     
            <form action="dblood" method="post" >
      
         <h1>Donor Registration Form</h1>
         <hr>
         <hr>
         <br><br>
      <label for="name">Name:</label>
      <input type="text" id="name" name="name"  required>

       <label for="email">Email </label>
      <input type="email" id="email" name="email"  required>
      
      
      <label for="gender">Gender:</label>
      <select id="gender" name="gender" required>
        <option value="">Please select</option>
        <option value="male">Male</option>
        <option value="female">Female</option>
        <option value="other">Other</option>
      </select>

      <label for="dob">Date of Birth:</label>
      <input type="date" id="dob" name="dob"  required>

      <label for="mobile">Mobile Number:</label>
      <input type="text" id="mobile" name="mno" required>

      <label for="bloodgroup">Blood Group:</label>
      <select id="bloodgroup" name="bgroup"  required>
        <option value="">Please select</option>
        <option value="A+">A+</option>
        <option value="A-">A-</option>
        <option value="B+">B+</option>
        <option value="B-">B-</option>
        <option value="AB+">AB+</option>
        <option value="AB-">AB-</option>
        <option value="O+">O+</option>
        <option value="O-">O-</option>
      </select>

      <label for="address">Address:</label>
      <textarea id="address" name="address" required></textarea>
 <label for="state">State:*</label>
      <select id="state" name="state" required>
          <option value="">Select State</option>
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
          <select id="city" name="district"  required>
            <option value="">Select District</option>
        </select>
      <label for="bloodbank">Nearby Blood Bank Name:</label>
      <input type="text" id="bloodbank" name="nbn" required>

       
      
      <label for="tentative_date">Tentative Date of Donation:</label>
      <input type="date" id="tentative_date" name="tdn"  required>
      
      
      

      <input type="submit" value="DONATE NOW">
            <input type="reset" value="RESET">
      
      
    </form>
   
    
      
    <%

connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
        </div>
   
         <script src="js/blood_bank_address.js"></script>
          <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js">  </script>
          <link rel="stylesheet" href="alert/dist/sweetalert.css">
          <script type="text/javascript">
           var status = document.getElementById("status").value;
           if(status=="success")
	   {
	   swal("Congrats","Donate Blood Form Submitted Successfully","success");
	   }
           if(status=="failed")
    	   {
    	   swal("Congrats","Donate Blood Form  Not Submitted ","error");
    	   }
           if(status=="noteligible")
    	   {
    	   swal("Congrats","Your 3 Months are Not Complete You can Donate Blood Only 3 months After donation","error");
    	   }
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
       <script>
       const form = document.querySelector('form');

       form.addEventListener('submit', function(event) {
         event.preventDefault();
         
         const name = document.getElementById('name').value.trim();
         const email = document.getElementById('email').value.trim();
         const gender = document.getElementById('gender').value;
         const dob = new Date(document.getElementById('dob').value);
         const mobile = document.getElementById('mobile').value.trim();
         const bloodgroup = document.getElementById('bloodgroup').value;
         const address = document.getElementById('address').value.trim();
         const state = document.getElementById('state').value;
         const district = document.getElementById('city').value;
         const bloodbank = document.getElementById('bloodbank').value.trim();
         const tentative_date = new Date(document.getElementById('tentative_date').value);

         let errors = [];

         if (name.length < 3 || name.length > 40) {
           errors.push('Name should be between 3 and 40 characters');
         }

         if (email === '') {
           errors.push('Email is required');
         } else if (!isValidEmail(email)) {
           errors.push('Email is not valid');
         }

         if (gender === '') {
           errors.push('Gender is required');
         }

         if (calculateAge(dob) < 18) {
           errors.push('You should be at least 18 years old to donate blood');
         }

         if (!/^\d{10}$/.test(mobile)) {
           errors.push('Mobile number should have 10 digits');
         }

         if (bloodgroup === '') {
           errors.push('Blood group is required');
         }

         if (address.length < 9 || address.length > 70) {
           errors.push('Address should be between 9 and 70 characters');
         }

         if (state === '') {
           errors.push('State is required');
         }

         if (district === '') {
           errors.push('District is required');
         }

         if (bloodbank === '') {
           errors.push('Nearby blood bank name is required');
         }

         if (tentative_date.getTime() < new Date().setHours(0,0,0,0)) {
           errors.push('Tentative date of donation should not be in the past');
         }

         if (errors.length > 0) {
           alert(errors.join('\n'));
         } else {
           form.submit();
         }
       });

       function isValidEmail(email) {
         return /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email);
       }

       function calculateAge(date) {
         const diff = Date.now() - date.getTime();
         const ageDate = new Date(diff);
         return Math.abs(ageDate.getUTCFullYear() - 1970);
       }
   </script>
    </body>
</html>






