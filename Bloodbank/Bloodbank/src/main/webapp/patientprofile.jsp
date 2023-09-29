<%-- 
    Document   : patientprofile
    Created on : Apr 4, 2023, 9:41:58 AM
    Author     : JENISH,CHINTAN
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PROFILE</title>
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

input[type="submit"],input[type="reset"]  {
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
}</style>
                   



       <style>
            form {
  width: 800px;
  height:1500px;
   align-items: center;
  justify-content: center;
  border-radius: 5px;
   padding: 20px;
  margin-left: 400px;
  margin-top: -150px;
   border-radius: 5px;
  box-shadow: 0 0 10px rgba(0,0,0,0.3);
  background-color: #fff;
  color:black;
}
 .first-section{
z-index:1;
}
.sticky{
    position: sticky;
    top:200px;
}

       </style>
    </head>
    
    <body>
    <input type="hidden" id="status" value="<%= request.getAttribute("status")%>">
    
        <section class="first-section">
    <img src="photos/1logo.png"alt="logo">
    <div class="h3"><h3>Indian Red Cross Society</h3></div>
    <button class="button1"><a href="patient_login.jsp" class="a">Logout</a></button>
    
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
                      <li class="nav__item"><a class="nav__link active" href="patientprofile.jsp">Manage Profile</a></li>
                  </ul><!-- comment -->
                   <ul class="mid-left-sec-3 nev sticky" style="top:300px;">
                       <li class="nav__item"><a class="nav__link " href="patientblood.jsp">Request for blood</a></li>
                 </ul>
                   <ul class="mid-left-sec-4 nev sticky" style="top:350px;">
                       <li class="nav__item"><a class="nav__link " href="patientrequest.jsp">view request</a></li>
                 </ul>
                  
                  
            
  
        <%
String id = request.getParameter("patient_id");
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
String sql ="select * from patient_reg where name=" +"name";
resultSet = statement.executeQuery(sql);
if(resultSet.next()){
%>
<form method="post" action="updatedpatient.jsp" onsubmit="return validateForm()"> 
                <h1>Manage Profile Form</h1>
                
                <hr>
                <hr>
         <br>
         <label for="id"></label>
        <input type="hidden" id="id" name="patient_id" value="<%=resultSet.getString("patient_id") %>" width="50%" required>
        <br><br>
             <label for="first_name">Full Name:*</label>
          <input type="text" id="first_name" name="name" value="<%=resultSet.getString("name") %>"required>
        <br><br>
          <label for="dob">DOB:*</label>
          <input type="date" id="dob" name="dob" value="<%=resultSet.getString("dob") %>" required>
    <br><br>
          <label for="gender">Gender:*</label>
          <select id="gender" name="gender" required>
            <option value="">Select Gender</option>
            <option value="male">Male</option>
            <option value="female">Female</option>
             <option value="Other">Other</option>
            <!-- Add more options here -->
          </select>
    <br><br>
          <label for="email">Email:*</label>
          <input type="email" id="email" name="email" value="<%=resultSet.getString("email") %>" required>
    <br><br>
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
           <br><br>
         <label for="district">City:*</label>
          <select id="city" name="city" required>
            <option value="">Select District</option>
        </select>
         <br><br>
          <label for="pincode">Pincode:*</label>
          <input type="text" id="pincode" name="pincode" value="<%=resultSet.getString("pincode") %>" required>
    
    <br><br>
          <label for="nearest_blood_bank">Nearest Blood Bank Name:</label>
          <input type="text" id="nearest_blood_bank" name="nearestbloodbank" value="<%=resultSet.getString("nearestbloodbank") %>"required>
    <br><br>
          <label for="blood_group">Blood Group:*</label>
          <select id="blood_group" name="bloodgroup" required>
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
          </select>
    <br><br>
          <label for="rh">RH:*</label>
          <select id="rh" name="rh" required>
            <option value="">Select RH</option>
            <option value="positive">Positive</option>
            <option value="negative">Negative</option>
          </select>
       
    <br><br>
        
        <label for="mobile_no">Mobile Number:*</label>
          <input type="text" id="mobile_no" name="mobileno" value="<%=resultSet.getString("mobileno") %>"required>
          <br><br>
          <label for="password">Password:*</label>
          <input type="password" id="password" name="password" value="<%=resultSet.getString("password") %>" required>
        <br><br>
          <label for="confirm_password">Confirm Password:*</label>
          <input type="password" id="confirm_password" name="confirm_password" value="<%=resultSet.getString("confirm_password") %>"required>
          <br><br>
          <input type="submit" value="Update ">
                    <input type="reset" value="Cancel ">
          
       
       
           </form>
             </div>
           <%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
   
         <script src="js/blood_bank_address.js"></script>
         
          <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js">  </script>
   <link rel="stylesheet" href="alert/dist/sweetalert.css">
   <script type="text/javascript">
           var status = document.getElementById("status").value;
           if(status=="success")
	   {
	   swal("Congrats"," Form data updated Successfully","success");
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
   function validateForm() {
	   // Get values from form
	   const fullName = document.getElementById("first_name").value;
	   const dob = document.getElementById("dob").value;
	   const gender = document.getElementById("gender").value;
	   const email = document.getElementById("email").value;
	   const state = document.getElementById("state").value;
	   const city = document.getElementById("city").value;
	   const pincode = document.getElementById("pincode").value;
	   const nearestBloodBank = document.getElementById("nearest_blood_bank").value;
	   const bloodGroup = document.getElementById("blood_group").value;
	   const rh = document.getElementById("rh").value;
	   const mobileNo = document.getElementById("mobile_no").value;
	   const password = document.getElementById("password").value;
	   const confirmPassword = document.getElementById("confirm_password").value;

	   // Regular expressions for validation
	   const nameRegex = /^[a-zA-Z\s]{10,50}$/;
	   const pincodeRegex = /^\d{6}$/;
	   const mobileNoRegex = /^\d{10}$/;
	   const passwordRegex = /^(?=.*[a-zA-Z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$/;

	   // Validation
	   if (!fullName.match(nameRegex)) {
	     alert("Please enter a valid name (10-50 characters).");
	     return false;
	   }

	   if (!dob) {
	     alert("Please enter your date of birth.");
	     return false;
	   }

	   if (!gender) {
	     alert("Please select your gender.");
	     return false;
	   }

	   if (!email) {
	     alert("Please enter your email address.");
	     return false;
	   }

	   if (!state) {
	     alert("Please select your state.");
	     return false;
	   }

	   if (!city) {
	     alert("Please select your city/district.");
	     return false;
	   }

	   if (!pincode.match(pincodeRegex)) {
	     alert("Please enter a valid pincode (6 digits).");
	     return false;
	   }

	   if (!nearestBloodBank) {
	     alert("Please enter the name of your nearest blood bank.");
	     return false;
	   }

	   if (!bloodGroup) {
	     alert("Please select your blood group.");
	     return false;
	   }

	   if (!rh) {
	     alert("Please select your RH.");
	     return false;
	   }

	   if (!mobileNo.match(mobileNoRegex)) {
	     alert("Please enter a valid mobile number (10 digits).");
	     return false;
	   }

	   if (!password.match(passwordRegex)) {
	     alert("Please enter a valid password (minimum 8 characters, at least 1 letter, 1 number and 1 special character).");
	     return false;
	   }

	   if (password !== confirmPassword) {
	     alert("Passwords do not match.");
	     return false;
	   }
	   
	   document.getElementById("otp-section").style.display = "block";

	   // If form is valid, return true
	   return true;
	 }</script>
    </body>
</html>



