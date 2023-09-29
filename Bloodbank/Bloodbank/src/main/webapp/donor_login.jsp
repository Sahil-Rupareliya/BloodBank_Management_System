<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DONOR LOGIN</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
    <link rel="stylesheet" href="css/donor_logins.css">
    <style>
    h1,label,p,input{
    font-family: Georgia, serif;
    }
    .signup_link{
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



      <section class="login">
        
      <div class="log1">
        <img src="./photos/donor_login.jpg" alt="">
      </div>
         <div class="center">
          
             <h1 class="h1"> Donor Login</h1>
            
             <form name="donorloginform" method="post" action="Login">
               <div class="txt_field">
                  <input type="text" name="email" required>
                  <span></span>
                  <label>Username(Your Email Id Is Your Username)</label>
               </div>
               <div class="txt_field">
                <input type="password" name="password" autocomplete="current-password" required id="id_password">
                <i class="far fa-eye" id="togglePassword" style="margin-left: -30px; cursor: pointer;"></i>
                <span></span>
                <label> Password</label>
               </div>
      
               <p class="forgot-password">Forgot password? <a href="forgotPassword.jsp">Reset</a></p>
               <input type="submit" value="SIGN-IN" name="signin" id="signin" style="margin-top:20px">
      
               <div class="signup_link">Not a Register?<a href="donor_register.jsp" style="text-decoration:underline">Signup Now</a></div>
               <div class="log2">
        
               </div>
               
             </form>
             
         </div>
        </section>







     
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
   if(status == "failed")
   {
   swal("Sorry","Wrong Username or Password","error");
   }
   if(status == "invalidmobileno")
   {
   swal("Sorry","Please Enter Mobile Number","error");
   }
   if(status == "invalidpassword")
   {
   swal("Sorry","Please Enter Password","error");
   }
   if(status == "resetSuccess")
   {
   swal("Congrates","Password Reset Succssfully","success");
   }
   if(status == "resetFailed")
   {
   swal("Sorry","Password Reset Failed(Enter Only Register Email Address)","error");
   }
   </script>
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