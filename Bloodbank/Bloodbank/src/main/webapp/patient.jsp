<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PATIENT REGISTRATION</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
    <link rel="stylesheet" href="css/patient_registrationn.css">
    <style>
    label,input,h1,option,select{
font-family: Georgia, serif;
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
      
<form action="patientsblood" method="post" enctype="multipart/form-data" onsubmit="return validateForm()">
        <div class="left-form">
            <h1 style="text-align: center;"> Patient Blood Require Form</h1>
            <br>
            <br>
            <hr>
            <hr>
            <hr>
            <br>
          <label for="first_name">Full Name:*</label>
          <input type="text" id="first_name" name="first_name" required>
        
          <label for="dob">DOB:*</label>
          <input type="date" id="dob" name="dob" required>
    <br><br>
          <label for="gender">Gender:*</label>
          <select id="gender" name="gender" required>
            <option value="">Select Gender</option>
            <option value="male">Male</option>
            <option value="female">Female</option>
             <option value="Other">Other</option>
            <!-- Add more options here -->
          </select>
    
          <label for="email">Email:*</label>
          <input type="email" id="email" name="email" required>
    
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
         <label for="district">City:*</label>
          <select id="city" name="city" required>
            <option value="">Select District</option>
        </select>
          <label for="pincode">Pincode:*</label>
          <input type="number" id="pincode" name="pincode" required>
    
    
        
    
          <label for="blood_group">Blood Group:*</label>
          <select id="blood_group" name="blood_group" required>
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
    
      
        </div>
    
        <div style="clear: both;"></div>
    
    <br>
   
       
        
        <label for="mobile_no">Mobile Number:*</label>
          <input type="number" id="mobile_no" name="mobile_no" required>
          <br>
         <label for="requiredate"> require date</label>       
       <input type="date" id="requiredate" name="Requiredate" required> 
       <br><br>
        
         <label for="Quantity"> Quantity</label>       
       <input type="text" id="Quantity" name="Quantity" required > 
        <br><br>
        <label for="file"> upload Document</label>       
       <input type="file"  name="photo" required> 
        <br><br>
        <input type="submit" value="SUBMIT">
         <input type="reset" value="CANCEL" >
         <br>
         
      </form>
    </body>
    </html>
    
    
    

  
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
   swal("Congrats","Account Not Created","error");
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
  <script>
//get form element by its ID
 const form = document.querySelector('form');
const firstName = document.getElementById('first_name');
const dob = document.getElementById('dob');
const gender = document.getElementById('gender');
const email = document.getElementById('email');
const state = document.getElementById('state');
const city = document.getElementById('city');
const pincode = document.getElementById('pincode');
const bloodGroup = document.getElementById('blood_group');
const mobileNo = document.getElementById('mobile_no');
const requireDate = document.getElementById('requiredate');
const quantity = document.getElementById('Quantity');
const fileUpload = document.querySelector('input[type="file"]');

const currentDate = new Date();
const today = new Date(currentDate.getFullYear(), currentDate.getMonth(), currentDate.getDate());

form.addEventListener('submit', (event) => {
  event.preventDefault();
  if (validate()) {
    form.submit();
  }
});

function validate() {
  let isValid = true;

  
  const selectedDob = new Date(dob.value);
  if (selectedDob >= today) {
    isValid = false;
    alert('DOB should be a past date.');
    dob.focus();
  }

  if (!gender.value) {
    isValid = false;
    alert('Please select Gender.');
    gender.focus();
  }

  if (!email.value || !/^\w+([.-]?\w+)*@\w+([.-]?\w+)*(\.\w{2,3})+$/.test(email.value)) {
    isValid = false;
    alert('Please enter a valid Email address.');
    email.focus();
  }

  if (!state.value) {
    isValid = false;
    alert('Please select State.');
    state.focus();
  }

  if (!city.value) {
    isValid = false;
    alert('Please select City.');
    city.focus();
  }

  if (!pincode.value || !/^\d{6}$/.test(pincode.value)) {
    isValid = false;
    alert('Pincode should contain exactly 6 digits.');
    pincode.focus();
  }

  if (!bloodGroup.value) {
    isValid = false;
    alert('Please select Blood Group.');
    bloodGroup.focus();
  }

  if (!mobileNo.value || !/^\d{10}$/.test(mobileNo.value)) {
    isValid = false;
    alert('Mobile No should contain exactly 10 digits.');
    mobileNo.focus();
  }

  const selectedRequireDate = new Date(requireDate.value);
  if (selectedRequireDate < today) {
    isValid = false;
    alert('Require date should be today or a future date.');
    requireDate.focus();
  }

  if (!quantity.value || !/^\d{1,4}$/.test(quantity.value) || quantity.value < 1 || quantity.value > 4) {
    isValid = false;
    alert('Quantity should be a number between 1 and 4 digits.');
    quantity.focus();
  }

  if (!fileUpload.value) {
    isValid = false;
    alert('Please upload a document.');
    fileUpload.focus();
  }

  return isValid;
}

  </script>
<script src="./js/blood_bank_address.js"></script>
  </body>
  </html>