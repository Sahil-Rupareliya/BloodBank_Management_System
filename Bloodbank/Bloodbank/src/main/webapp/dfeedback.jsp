<%-- 
    Document   : dfeedback
    Created on : Mar 29, 2023, 9:41:20 PM
    Author     : CHINTAN
--%>

<%-- 
    Document   : dfeedback
    Created on : Mar 18, 2023, 9:42:56 PM
    Author     : CHINTAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>DONOR FEEDBACK</title>
 <link rel="stylesheet" type="text/css" href="css/design_dashboard.css" />
    
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
      /* Add styles for the form */
     form {
  width: 800px;
  height:800px;
  padding:20px;
  margin-left: 400px;
  margin-top: -230px;
   border-radius: 5px;
  box-shadow: 0 0 10px rgba(0,0,0,0.3);
  background-color: #fff;
  color:black;
}

h1{
    text-align: center;
    }

label {
  display: block;
  margin-bottom: 5px;
  font-weight: bold;
}

input[type="text"],
input[type="date"],
input[type="email"],
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

input[type="submit"]:hover {
  background-color: #3e8e41;
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
			<li class="nav__item"><a class="nav__link active"   href="dfeedback.jsp">Give Feedback</a></li>
		</ul>
		<ul class="mid-left-sec-5 nav sticky" style="top: 365px;">
			<li class="nav__item"><a class="nav__link "   href="dcamp.jsp">View Blood Camp </a></li>
		</ul>
		<!-- comment -->
		<ul class="mid-left-sec-7 nav  sticky" style="top: 420px;">
			<li class="nav__item"><a class="nav__link "   href="dblood.jsp">Donate Blood</a></li>
		</ul>
   
   
   
<form name="myForm" action="dfeedback" method="POST" onsubmit="return validateForm()">
         <h1>Feedback Form</h1>
         <hr><hr><br>
         
       <label for="fname">First Name</label>       
       <input type="text" id="fname" name="firstname" placeholder="Your name.."> 
       
        <label for="lname">last Name</label>       
       <input type="text" id="lname" name="lastname" placeholder="Your name.."> 

       <label for="email">Email </label>
      <input type="email" id="email" name="email" required>
      

             <label for="country">State:*</label>
      <select id="country" name="country" required>
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
             
        <label for="feed_back">Feed Back</label>        
        <textarea id="subject" name="subject" placeholder="Write something.." style="height:200px"></textarea>
      

      <input type="submit" value="SUBMIT">
            <input type="reset" value="RESET">
      
    </form>
  </div>
  
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js">  </script>
   <link rel="stylesheet" href="alert/dist/sweetalert.css">
   <script type="text/javascript">
           var status = document.getElementById("status").value;
           if(status=="success")
	   {
	   swal("Congrats","FeedBack Form submitted Successfully","success");
	   }
           if(status=="failed")
    	   {
    	   swal("Congrats","Feedback Form Not Submitted ","error");
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
    	  var firstName = document.forms["myForm"]["firstname"].value;
    	  var lastName = document.forms["myForm"]["lastname"].value;
    	  var email = document.forms["myForm"]["email"].value;
    	  var country = document.forms["myForm"]["country"].value;
    	  var feedback = document.forms["myForm"]["subject"].value;

    	  // Validate first name
    	  if (firstName == "") {
    	    alert("First name must be filled out");
    	    return false;
    	  }

    	  // Validate last name
    	  if (lastName == "") {
    	    alert("Last name must be filled out");
    	    return false;
    	  }

    	  // Validate email
    	  if (email == "") {
    	    alert("Email must be filled out");
    	    return false;
    	  } else {
    	    // Regular expression to validate email format
    	    var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    	    if (!emailRegex.test(email)) {
    	      alert("Invalid email format");
    	      return false;
    	    }
    	  }

    	  // Validate country
    	  if (country == "") {
    	    alert("Please select a state");
    	    return false;
    	  }

    	  // Validate feedback
    	  if (feedback == "") {
    	    alert("Feedback must be filled out");
    	    return false;
    	  }

    	  // If all fields are valid, submit the form
    	  return true;
    	}

    </script>
    </body>
</html>