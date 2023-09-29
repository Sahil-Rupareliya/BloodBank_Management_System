<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ADD BLOOD BANKS</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
    <link rel="stylesheet" href="css/bloodbanks.css">
    <style>
    label,h3,input,option,select{
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


<form method="post" action="addbb" onsubmit="return validateForm()" name="myForm">
      <div class="location-container">
        <hr>
        <hr>
        <hr>
        <div class="location-box">
             <h1 style="text-align:center; padding-bottom:30px;font-family: Georgia, serif;">ADD BLOOD BANK HEAR..... </h1>
        
          <h3 class="location-address" style="font-family: Georgia, serif;">Blood Bank Address</h3>
          <br>
          <hr>
          <hr>
          <hr>
          <br>
          <label for="state">State:*</label>
          <select id="state" name="state" required>
         
            <option value="">Select State:</option>
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
            <!-- Add more options for other states -->
          </select>
          <label for="district">District:*</label>
          <select id="city" name="city" required>
            <option value="">Select District</option>
          </select>
          <br><br><br><br><br>
          <h3 class="location-address">Blood Bank Details</h3>
          <br>
          <hr>
          <hr>
          <hr>
          <br>
        
            <label for="name">Blood Bank Name:*</label>
            <input type="text" id="name" name="name" required>
            <br><br>
            <label for="address">Email:*</label>
            <input type="text" id="address" name="email" required>
        
          <br>
          <br>
            
            <label for="mobile no">Contact no:*</label>
            <input type="text" id="contact-no" name="contactno" required>
            <br><br>
            <label for="password">Fax no:*</label>
            <input type="fax-no" id="fax-no" name="faxno" required>
            <br>
            <br>
            <label for="retypepassword">Licence No:*</label>
            <input type="licence" id="licence" name="licence" required>
            <br>
            <br>
            <br>
            <br>
            <br>
            <h3 class="location-address">Postal Address</h3>
            <br>
             <hr>
          <hr>
          
          <hr>
          <br>
            <label for="name">Address:*</label>
            <input type="text" id="address" name="address" required>
            <label for="name">Pincode:*</label>
            <input type="text" id="pcode" name="pcode" required>
    <br><br><section id="otp-section" style="display: none;">
        <p style="font-size:22px;color:red;">Please wait for OTP...</p>
        </section><br><br>
    
            <input type="submit" value="Add Blood Bank">
            <input type="submit" type="reset" value="Cancel">
        </div>

      </div>
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
  <script src="./js/blood_bank_address.js"></script>
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js">  </script>
   <link rel="stylesheet" href="alert/dist/sweetalert.css">
   
   <script type="text/javascript">
   var status = document.getElementById("status").value;
   if(status=="success")
	   {
	   swal("Conrats","Blood Bank Add Successfully","success");
	   }
   if(status=="failed")
   {
   swal("Conrats","Blood Bank Not Added","error");
   }
   if(status=="Email_already_registered")
   {
   swal("Sorry","Email Already Register","error");   
   }
   </script>
   <script>
   function validateLicenseNumber(licenseNumber) {
	   const regex = /^[A-Z]{2}\d{2}-\d{5}$/; // Pattern: two uppercase letters, two digits, a hyphen, and five digits
	   return regex.test(licenseNumber);
	 }
   function validateForm() {
	   // Get input values
	   const state = document.getElementById("state").value;
	   const district = document.getElementById("city").value;
	   const name = document.getElementById("name").value;
	   const email = document.getElementById("address").value;
	   const contactNo = document.getElementById("contact-no").value;
	   const faxNo = document.getElementById("fax-no").value;
	   const licence = document.getElementById("licence").value;
	   const licenseNo = document.getElementById("licence").value.trim();
	   const address = document.getElementById("address").value;
	   var pcode = document.forms["myForm"]["pcode"].value;
	   var regex = /^\d{6}$/; // regular expression to match 6 digits

	   // Validate state and district selection
	   if (state === "" || district === "") {
	     alert("Please select a state and district.");
	     return false;
	   }

	   // Validate Blood Bank Name
	   if (name === "") {
	     alert("Please enter a Blood Bank Name.");
	     return false;
	   }
	   else if(name.length <=6)
		   {
		   alert("Blood Bank Name Is To Short");
		     return false;
		   }
	   else if(name.length >50)
	   {
	   alert("Blood Bank Name Is To long");
	     return false;
	   }

	   // Validate Email
	   if (email === "") {
	     alert("Please enter an Email.");
	     return false;
	   }

	   // Validate Contact Number
	   if (contactNo === "") {
	     alert("Please enter a Contact Number.");
	     return false;
	   }

	   // Validate Fax Number
	   if (faxNo === "") {
	     alert("Please enter a Fax Number.");
	     return false;
	   }
	   var faxNumber = document.getElementById("fax-no").value;
	   if (faxNumber.length != 6 || isNaN(faxNumber)) {
	     alert("Fax number should be exactly 6 digits long and must contain only numbers.");
	     return false;
	   }
	   // Validate Licence Number
	   if (licence === "") {
	     alert("Please enter a Licence Number.");
	     return false;
	   }
	   const licenseRegex = /^[a-zA-Z]{2}[0-9]{4}$/;
	   if (!licenseRegex.test(licenseNo)) {
	     alert("Please enter a valid license number with 2 alphabets and 4 numbers (total of 6 characters).");
	     return false;
	   }
	   

	   // Validate Address
	   if (address === "") {
	     alert("Please enter an Address.");
	     return
	 false;
	 }
	   else if(address.length <=6)
	   {
	   alert("address Is To Short");
	     return false;
	   }
   else if(address.length >100)
   {
   alert("address Is To long");
     return false;
   }

	 // Validate Postal Code
	 if (pcode === "") {
	 alert("Please enter a Postal Code.");
	 return false;
	 }
	 
	 if (pcode.length !== 6) {
		    alert("Postal code should be 6 digits.");
		    return false;
		  }
	
	 if (!regex.test(pcode)) {
		    alert("Postal code must be a 6-digit number.");
		    return false;
		  }
	 // Validate Email format using regular expression
	 const emailRegex = /^[^\s@]+@[^\s@]+.[^\s@]+$/;
	 if (!emailRegex.test(email)) {
	 alert("Please enter a valid Email.");
	 return false;
	 }

	 // Validate Contact Number format using regular expression
	 const contactRegex = /^\d{10}$/;
	 if (!contactRegex.test(contactNo)) {
	 alert("Please enter a valid Contact Number.");
	 return false;
	 }

	 
     const licenseNumberRegex = /^[a-zA-Z]{2}\d+$/;
     if (!licenseNumberRegex.test(licence)) 
     {
    	 alert("Please enter a valid(AB1234) Fax Number.");
    	 return false;
     }


	 

	   document.getElementById("otp-section").style.display = "block";
	 return true;
	 }</script>
  </body>
  </html> 
  
    