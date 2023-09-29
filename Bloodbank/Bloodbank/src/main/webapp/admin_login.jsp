<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ADMIN LOGIN</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
</head>
<style>

*{
    margin: 0;
    padding:0;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    
}

body
{
    overflow-x: hidden;
}

.navbar
{
   display: flex;
   align-items: center;
   justify-content: center;
   position: sticky;
   top: 0;
   cursor: pointer;
   font-weight: 500;
   box-shadow: 0 1px 4px rgba(0, 0, 0, 0.3),0 0 40px rgba(0, 0, 0, 0.1) inset;
   z-index: 5;
}
.navbar:before,
.navbar:after
{
    content: '';
    position: absolute;
    z-index: -1;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.8);
    top:50%;
    left :10px;
    border-radius: 100px/10px;
    /* z-index: 5; */
}

.nav-list
{
   width: 100%;
   height: 93px;
   display: flex;
   align-items: center;
   background: white;
   /* z-index: 5; */
   
}

.nav-list li
{
   list-style: none;
   position: relative;
   width: auto;
   /* z-index: 5; */
}
.nav-list li a
{
   text-decoration: none;
   color:#6e0202 ;
   font-weight: 700;
   /* z-index: 5;  */
}
.nav-list li a:hover
{
    color:white;
    font-size: 17px;
    background-color: #6e0202;


 }

.submenu
{
    left: 0;
    opacity: 0;
    position: absolute;
    top: 35px; 
    /* opacity: 0; */
    /* z-index: -1; */
}


li:hover ul.submenu
{
    opacity: 1;
    top: 53px; 
    /* z-index: 5; */
}

.submenu li
{
    float: none;
    width: 100%;
    /* z-index: 5; */
}


.submenu a:hover
{
    font-weight: 600;
    color: #6e0202;
     /* z-index: 4; */
}
.submenu a
{
    background-color: white;
    padding: 0;
    margin: auto;
    /* z-index: 5; */
}
.nav-list a
{
    display: block;
    font-weight: 200;
    padding: 15px 20px;
    text-align: center;
    text-decoration: none;
    transition: all 0.3s ease;
    background:white;
    /* z-index: 5; */
}
.logo
{
    width: 20%;
    height: 50%;
    display: flex;
    justify-content:center;
    align-items: center;
    /* z-index: 5; */
}
.logo img
{
    width: 30%;
    height: 90px;
    /* z-index: 5; */
}

  .submenu {
    display: none;
  }
  
  li:hover .submenu {
    display: block;
  }
  




.down{
    width: 100%;
    height: 280px;
    background-color: #454645;
    color: white;
    display: flex;
}
.fi{
    padding-top: 20px;
    padding-left: 60px;
    width: 70%;
    justify-content: left;
    text-align:left;
    color: white;

}
.s{
    width: 30%;
    text-align: center;
    padding-top: 60px;
    padding-left: 60px;
    
}
.t{
    width: 40%;
    padding-top: 60px;
    padding-left: 20px;
    text-align: center;
}
.last{
    width: 50%;
}
.part1{
   
    font-size:16px;
    font-weight: 700;
    cursor: pointer;
    list-style: none;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}
.part1 li a{
    text-decoration: none;
    color: white;
}
.part1 li::before{
    content: "\00BB";
}
.part1 li a:hover{
    color: #9c6666;
    text-decoration: underline;
}
.h2{
    text-decoration: underline;
    text-align: left;
}
.foot{
    width: 100%;
    height: 70px;
    color: white;
    background-color:  #363736;
    justify-content: center;
    text-align: center;
    padding-top: 30px;
}
@import url('https://fonts.googleapis.com/css?family=Poppins:400,500,600,700&display=swap');
.sec1
{
  display: grid;
  height: 60px;
  width: 100%;
  padding-left: 0%;
  place-items: center;
  background:#363736;
  
}
.wrapper .button
{
  display: inline-block;
  height: 60px;
  width: 60px;
  /* float: left; */
  margin: 0 5px;
  overflow: hidden;
  background: #fff;
  border-radius: 50px;
  cursor: pointer;
  /* box-shadow: 0px 10px 10px rgba(0,0,0,0.1); */
  transition: all 0.3s ease-out;
  
}
.wrapper .button:hover
{
  width: 180px;
}
.wrapper .button .icon
{
  display: inline-block;
  height: 60px;
  width: 60px;
  text-align: center;
  border-radius: 50px;
  box-sizing: border-box;
  line-height: 60px;
  transition: all 0.3s ease-out;
}
.wrapper .button:nth-child(1):hover .icon
{
  background: #4267B2;
}
.wrapper .button:nth-child(2):hover .icon
{
  background: #1DA1F2;
}
.wrapper .button:nth-child(3):hover .icon
{
  background: #E1306C;
}
.wrapper .button:nth-child(4):hover .icon
{
  background: #333;
}
.wrapper .button:nth-child(5):hover .icon
{
  background: #ff0000;
}
.wrapper .button .icon i
{
  font-size: 25px;
  line-height: 60px;
  transition: all 0.3s ease-out;
}
.wrapper .button:hover .icon i
{
  color: #fff;
}
.wrapper .button span
{
  font-size: 20px;
  font-weight: 500;
  line-height: 60px;
  margin-left: 10px;
  transition: all 0.3s ease-out;
}
.wrapper .button:nth-child(1) span
{
  color: #4267B2;
}
.wrapper .button:nth-child(2) span
{
  color: #1DA1F2;
}
.wrapper .button:nth-child(3) span
{
  color: #E1306C;
}
.wrapper .button:nth-child(4) span
{
  color: #333;
}
.wrapper .button:nth-child(5) span
{
  color: #ff0000;
}







 .login-container {
  display: flex;
  flex-direction: column;
  align-items: center;
  margin-top: 50px;
}

/* Logo image */
.logo2 {
  width: 100px;
  height: 100px;
  border-radius: 50%;
  margin-bottom: 20px;
}

/* Login form */
form {
  display: flex;
  flex-direction: column;
  align-items: center;
  border: 2px solid #ddd;
  padding: 20px;
  border-radius: 10px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
  width: 300px;
  margin-bottom:50px;
}

/* Heading */
h1 {
  margin-top: 0;
  margin-bottom: 20px;
  font-size: 24px;
  color: #333;
  text-align: center;
}

/* Form inputs */
.form-input {
  display: flex;
  flex-direction: column;
  margin-bottom: 20px;
}

input[type="email"],
input[type="password"] {
  width: 100%;
  padding: 10px;
  border: none;
  border-bottom: 2px solid #ddd;
  margin-bottom: 10px;
  font-size: 16px;
  color: #333;
  outline: none;
}

input[type="email"]::placeholder,
input[type="password"]::placeholder {
  color: #999;
}

/* Submit button */
button[type="submit"] {
  background-color: #ff4d4d;
  color: #fff;
  border: none;
  padding: 10px 20px;
  border-radius: 5px;
  font-size: 16px;
  cursor: pointer;
  transition: background-color 0.2s ease-in-out;
}

button[type="submit"]:hover {
  background-color: #ff6666;
}
</style>
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



 
 <div class="login-container">
  <img src="./photos/blood drop.jpg" alt="Blood Drop" class="logo2">
  
<form name="admin_login" method="post" action="admin_login">
  <h1>Admin Login</h1>
  <div class="form-input">
    <input type="email" placeholder="Email" name="email" required>
    <input type="password" placeholder="Password" name="password" required>
  </div>
  <button type="submit">Sign In</button>
</form>
  
  </div>

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js">  </script>
   <link rel="stylesheet" href="alert/dist/sweetalert.css">
     <script type="text/javascript">
   var status = document.getElementById("status").value;
   if(status == "failed")
	   {
	   swal("Sorry","Wrong Email or Password","error");
	   }
   </script>









     
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
  


  </body>
  </html>