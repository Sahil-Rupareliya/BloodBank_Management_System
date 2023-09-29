<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DONOR REGISTRATION</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
    <link rel="stylesheet" href="css/donor_register.css">
<style>
label,input,h1,option,select{
font-family: Georgia, serif;
}
.buttons {
			padding: 10px 20px;
			background-color: #4CAF50;
			color: white;
			border: none;
			border-radius: 5px;
			cursor: pointer;
			font-size: 18px;
			margin-bottom: 20px;
		}
.buttons:hover{
  background-color: #45a049;

}
</style>
</head>
<body>
    <input type="hidden" id="status" value="<%= request.getAttribute("status")%>">
 <section class="up">

    </section>
    <section class="p1"></section>
    <hr class="h1">
       <nav class="navbar background">
        <ul class="nav-list">
          <div class="logo"><img src="photos/1logo.png"alt="logo"></div>
          <li><a href="./index.html">HOME</a></li>
    
          <li><a href="#donate">WANT TO DONATE BLOOD &nbsp;+</a>
          <ul class="submenu">
            <li><a href="./blood_camps.jsp">BLOOD CAMPS </a></li>
            <li><a href="./donor_login.jsp">DONOR LOGIN</a></li>
            <li><a href="./about_blood_donation.html">ABOUT BLOOD DONATION</a></li>
            <li><a href="./vbd_camps.jsp">REGISTER VBD CAMPS</a></li>
          </ul>
          </li>
    
          <li><a href="#need">LOOKING FOR BLOOD  &nbsp;+</a>
            <ul class="submenu">
              <li><a href="./patient.jsp">PATIENT BLOOD REQUEST</a></li>
              <li><a href="./patient_login.jsp">THALASEMIA/BLOOD DISORDER PATIENT LOGIN</a></li>
              <li><a href="./blood_bank_directory.jsp">BLOOD BANK DIRECTORY</a></li>
            </ul></li>
          <li><a href="#blood bank">BLOOD BANKS&nbsp;+</a>
            <ul class="submenu">
            <li><a href="./admin_login.jsp">ADMIN</a></li>
            <li><a href="./blood_banks.jsp">ADD BLOOD BANK</a></li>
          </ul>
          </li>
          <li><a href="./contact_us.jsp">CONTACT US</a></li>
          <li><a href="./inquiry_form.jsp">INQUIRY</a></li>
          <li><a href="./about_us.jsp">ABOUT US</a></li>
        </ul>
      </nav>

 
         <form action="email_check" method="post" onsubmit="return validateForm()">       
        <h1 style="text-align: center;" style="text-decoration: underline;">DONOR REGISTRATION FORM</h1>
        <br>
        <hr>
        <hr>
        <hr>
        <br>
        <br>
        <label for="name">Full Name:</label>*
        <input type="text" id="name" name="name" required>
        <br><br>
        <label for="address">Address:</label>*
        <input type="text" id="address" name="address" required>
        <br><br>
        <label for="state">State:</label>*
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
         <label for="district">District:</label>*
          <select id="city" name="city" required>
            <option value="">Select District</option>
        </select>
        <br><br>
        <label for="pincode">Pincode:</label>*
        <input type="text" id="pincode" name="pincode" required>
        <br><br>
    
        <label for="gender">Gender:</label>*
        &nbsp;
        <input type="radio" id="gender" name="gender" value="male" required>
        <label for="male">Male</label>
        &nbsp;
        <input type="radio" id="gender" name="gender" value="female" required>
        <label for="female">Female</label>
        &nbsp;
        <input type="radio" id="gender" name="gender" value="other" required>
        <label for="Other">Other</label>
    
      <br>
      <br>
        <label for="age">Age:</label>*
        <input type="text" id="age" name="age" required>
        <br><br>
        <label for="bloodgroup">Blood Group:</label>*
        <select id="bloodgroup" name="bloodgroup" >
          <option value=""></option>
          <option value="A+">A+</option>
          <option value="A-">A-</option>
          <option value="B+">B+</option>
          <option value="B-">B-</option>
          <option value="AB+">AB+</option>
          <option value="AB-">AB-</option>
          <option value="O+">O+</option>
          <option value="O-">O-</option>
        </select>
        <br><br>
          <label for="email">Email:</label>*
          <input class="form-control" type="text" name="email" id="email-for-pass"  required>  
           
          <br>
        <br>
        <label for="mobile no">Mobile no:</label>*
        <input type="text" id="mobileno" name="mobileno" required >
        <br><br>
        <label for="password">Password:</label>*
        <input type="password" id="password" name="password"  required>
        <br>
        <br>
        <label for="retypepassword">Retype Password:</label>*
        <input type="password" id="retypepassword" name="retypepassword" required >
        <br>
        <br>
 
		<br>
		<section id="otp-section" style="display: none;">
        <p style="font-size:22px;color:red;">Please wait for OTP...</p>
        </section>
        <input type="submit" value="CLICK HEAR...." name="signup" id="signup">
        <input type="reset" value="CANCEL" name="" id="">
        
        <br>
        <br>
        
        <lable>Already A Member??<a href="donor_login.jsp" style="text-decoration:underline">Login Now</a></lable>
        
      </form>
      
       
     
       
       
       
       
       
       
       
       
       
       
       
       
       

 


     
<hr class="h1">

<section class="down">
  <div class="f">
  <p class="fi" style="font-family: Georgia, serif;">
    <br>
    <strong style="font-size: 20px; font-family: Georgia, serif;" >Contact Us:-</strong>
    <br>
    <br>
    Gujarat Brahmkshatriya Society J l Thakor Red Cross Bhavan, 18, Flora Residency Rd, Behind Suvidha Shopping Centre, Paldi, Ahmedabad, Gujarat 380007
  </p>
  
  <p class="fi" style="font-family: Georgia, serif;">Phone: 097222 69610</p>
  <p class="fi" style="font-family: Georgia, serif;">Email: redcross.ahmedabad@gmail.com.</p>
  </div>
  <div class="t">
    <h4 style="font-size: 20px;">Looking For Blood</h4>
    <br>
    <div class="part1">
              <li><a href="./patient.jsp">Patient Blood Request</a></li>
    
      <li><a href="./patient_login.jsp">Thalasemia  & Blood Disorder Patient Login</a></li>
    
      <li><a href="./blood_bank_directory.jsp">Blood Bank Directory</a></li>
  </div>
  </div>
  <div class="s">
    <h4 style= "font-size: 20px;">Want to Donate Blood</h4>
  <br>
    <div class="part1">
        <li><a href="./blood_camps.jsp">Blood Camps </a></li>
        <li><a href="./donor_login.jsp">Donor Login</a></li>
        <li><a href="./about_blood_donation.html">About Blood Donation</a></li>
        <li><a href="./vbd_camps.jsp">Register vbd camps</a></li>
    </div>
  </div>
  
  <div class="last">
    
  </div>
  </section> 
  
  
  
  
  <footer class="foot" style="font-family: Georgia, serif;">
      <span style="font-family: Georgia, serif;"><strong style="font-family: Georgia, serif;">&copy; Copyright : </strong>&nbsp;All Right Are Reserved </span>
      <p style="font-family: Georgia, serif;"><strong style="font-family: Georgia, serif;">Created By</strong>&nbsp;Chintan Gabani Jenish Akoliya Priyank Chuahan</p>
  </footer>
    
  
  
  
  <section class="sec1">
    <div class="wrapper">
      <div class="button">
         <div class="icon">
            <i class="fab fa-facebook-f"></i>
         </div>
         <a href="https://www.facebook.com/chintan.gabani.5667?mibextid=ZbWKwL" class="facebook" target="_blank"><span>Facebook</span></a>
      </div>
      <div class="button">
         <div class="icon">
            <a href="https://www.facebook.com/yourpage" target="_blank"></a>
            <i class="fab fa-twitter"></i>
         </div>
         <a href="https://twitter.com/CN_GABANI" class="twitter" target="_blank"><span>Twitter</span></a> 
      </div>
      <div class="button">
         <div class="icon">
            <i class="fab fa-instagram"></i>
         </div>
         <a href="https://www.instagram.com/chintan_gabani___/" class="instagram" target="_blank"><span>instagram</span></a>
         
      </div>
      <div class="button">
         <div class="icon">
            <i class="fab fa-youtube"></i>
         </div>
         <a href="https://youtube.com/@mysteryend4802" class="youtube" target="_blank"><span>YouTube</span></a>
         
      </div>
   </div>
  </section>

    
   <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js">  </script>
   <link rel="stylesheet" href="alert/dist/sweetalert.css">
   <script type="text/javascript">
   var status = document.getElementById("status").value;
   if(status=="success")
	   {
	   swal("Conrats","Account Created Successfully","success");
	   }
   if(status=="failed")
   {
   swal("Congrats","Account Not Created ","error");
   }
   if(status=="invalidname")
   {
   swal("Sorry","Please Enter Name","error");
   }
   if(status=="invalidaddress")
   {
   swal("Sorry","Please Enter Address","error");
   }
   if(status=="invalidcity")
   {
   swal("Sorry","Please Enter State & City","error");
   }
   if(status=="invalidstate")
   {
   swal("Sorry","Please Enter State & City","error");
   }
   if(status=="invalidpincode")
   {
   swal("Sorry","Please Enter Pincode","error");   
   }
   if(status=="invalidgender")
   {
   swal("Sorry","Please Enter Gender","error");  
   }
   if(status=="invalidage")
   {
   swal("Sorry","Please Enter Age","error");   
   }
   if(status=="invalidageage")
   {
   swal("Sorry","Please Enter Valid age (Under 100)","error");   
   }
   if(status=="invalidbloodgroup")
   {
   swal("Sorry","Please Enter BloodGroup","error");   
   }
   if(status=="invalidemail")
   {
   swal("Sorry","Please Enter Email","error");  
   }
   if(status=="invalidmobileno")
   {
   swal("Sorry","Please Enter Mobile Number","error");   
   }
   if(status=="invalidmobilenolength")
   {
   swal("Sorry","Mobile Number Should Be 10 Digit","error");   
   }
   if(status=="invalidpassword")
   {
   swal("Sorry","Please Enter Password","error");   
   }
   if(status=="invalidrepassword")
   {
   swal("Sorry","Password Do Not Match","error");   
   }
   if(status=="Email_already_registered")
   {
   swal("Sorry","Email Already Register","error");   
   }
   </script>
   
   <script src="./js/blood_bank_address.js"></script>
      <script src="./js/donor_validate_reg.js"></script>
   

  <script>
const togglePassword = document.querySelector('#togglePassword');
const password = document.querySelector('#id_password');

togglePassword.addEventListener('click', function (e) {
  // toggle the type attribute
  const type = password.getAttribute('type') === 'password' ? 'text' : 'password';
  password.setAttribute('type', type);
  // toggle the eye slash icon
  this.classList.toggle('fa-eye-slash');
});</script>
    
 
  </body>
  </html>