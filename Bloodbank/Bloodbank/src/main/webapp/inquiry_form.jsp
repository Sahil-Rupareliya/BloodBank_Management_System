<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>INQUIRY</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
    <link rel="stylesheet" href="css/inquiry_form.css">
    <style>
    .left{
    font-family: Georgia, serif;
    }
    input,button,h1,h3,p,strong{
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
          <div class="logo">
            <img src="photos/1logo.png"alt="logo">
          </div>
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


        
    <section class="main-contactus">

      <div class="background">
        <div class="containe">
          <div class="screen">
            <div class="screen-header">
              <div class="screen-header-left">
           
              </div>
              <div class="screen-header-right">
               
              </div>
            </div>
            
           <form id="inquiry-form" action="inquiry" method="post">
  <div class="screen-body">
    <div class="screen-body-item left">
      <div class="app-title">
        <span>INQUIRE</span>
      </div>
      <div class="app-contact">
        CONTACT INFO: 097222 69610<br>
        MAIL ID: redcross.ahmedabad@gmail.com.
      </div>
    </div>

    <div class="screen-body-item">
      <div class="app-form">
        <div class="app-form-group">
          <input class="app-form-control" placeholder="NAME" value="" name="name" required minlength="2" maxlength="50" pattern="[A-Za-z ]+" >
        </div>
        <div class="app-form-group">
          <input class="app-form-control" type="email" placeholder="EMAIL" name="email" required>
        </div>
        <div class="app-form-group">
          <input class="app-form-control" placeholder="CONTACT NO" name="mno" required pattern="^\d{10}$" >
        </div>
        <div class="app-form-group">
  <input class="app-form-control" type="date" placeholder="SELECT DATE" name="date" required id="date-input">
        </div>

        <div class="app-form-group message">
          <input class="app-form-control" placeholder="MESSAGE" name="msg" required minlength="10" maxlength="500">
        </div>
        <div class="app-form-group buttons">
          <button class="app-form-button" type="reset">CANCEL</button>
          <button class="app-form-button" type="submit" onclick="validateForm()">SEND</button>
        </div>
      </div>
    </div>
  </div>
</form>
          <div class="screen-header">
            <div class="screen-header-left">
             
            </div>
            <div class="screen-header-right">
             
            </div>
          </div>
         
        </div>
      </div>
      

    <div class="photu">
        <img src="./photos/inquiry.jpg.jpeg" alt="">
    </div>
</section>

<section class="blood">
<h1 class="clo clo1"><strong>Five Reasons Why You Should Donate Blood </strong></h1>
<br>
<h3 class="clo"><strong>1. Development of new red blood cells</strong></h3>

<p>Within the first 48 hours of blood donation, the donor's body starts replenishing the lost red blood cells. The replenishment process helps in staying healthy and productive at work.</p>
<br>
<h3 class="clo"><strong>2. Reducing risk of heart disease</strong></h3>

<p>As per several studies and reports, when there is a rise in the iron level in blood, it raises the chances of heart diseases. People should donate blood from time to time in order to reduce the iron level in the blood.</p>
<br>
<h3 class="clo"><strong>3. Burns calories</strong></h3>

<p>Donating blood can burn approximately 650 calories for each pint that is like 450 ml of blood.</p>
<br>
<h3 class="clo"><strong>4. Free blood test</strong></h3>

<p>On donating blood, the donor receives a free mini health screening and blood tests.</p>
<br>
<h3 class="clo"><strong>5. How often can one donate blood?</strong></h3>

<p>The minimum time advised between two donations is 3 months. This gap helps blood regain the normal haemoglobin count.</p>
<br>
<br>
<p><strong>Who can donate blood</strong><br />
  <br>
The age of the donor must be above 18 years and below 65 years of age. He/she must have a haemoglobin count that is not less than 12.5 g/dl. The Weigh should not less than 45 kgs. One should have a normal body temperature at the time of donation.</p>

<p>You should always drink lots of water before the donation. Also, keep in mind that you should take a well-balanced meal prior to and after donating blood. This will keep you healthy and fit.</p>

<p>Transfusion of blood is an essential part of modern health care management. The first Blood Centre was started in India by Indian Red Cross Society (IRCS) in 1942 at All India Institute of Hygiene &amp; Public Health, Calcutta (West Bengal).<br />
In 1977, the Blood Centre started operating from the Indian Red Cross Society, National Headquarters (IRCS, NHQ). The Blood Centre is running round the clock and provides the services to the needy patients. It was designated as Regional Blood Centre by State Govt. in 1996 and has been designated as Model Blood Centre in 2010 by National AIDS Control Organization, Ministry of Health and Family Welfare, Govt of India and is also certified by the BIS for ISO 9001:2008 and accredited by NABH &amp; NABL.</p>

<p>The NHQ Blood Centre focuses on encouraging voluntary blood donation. It collects approximately 25000 units of blood annually  sEwhich contributes about 10% of the total blood collected in Delhi. The percentage of voluntary blood collection is above 90% in IRCS as compared to the 20-50% ratio of the total collection made by other Blood Centres of Delhi. The Blood Centre provides 90% of total collection of blood free of service charges to the patients admitted in the General Ward of Govt. Hospitals in Delhi as well as to 975 Thalassaemic patients registered with it (which is about 50% of all the Thalassaemics in Delhi).</p>

<p><br />
The IRCS (NHQ) Blood Centre is fully equipped to collect blood at its premises and also has mobile teams, which go out frequently to hold Blood Donation Camps. The blood collected is tested for HIV I &amp; II, HBs Ag, HCV, VDRL &amp; Malaria. Blood grouping with Rh D and Antibodies Testing (three cell panel) is conducted by fully automated advance technology. To ensure effective utilization of blood, besides supplying whole blood, Red Cross also has the facility of component separation that provides different components of blood, like fresh frozen plasma, platelet rich plasma, platelet concentrate, packed cells, cryoprecipitate and platelet aphaeresis.</p>

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
   if(status=="success")
	   {
	   swal("Congrats","Inquiry Form Submitted Successfully","success");
	   }
   </script>

   
<script>
 
</script>
<script>
  var today = new Date().toISOString().split('T')[0];
  document.getElementById('date-input').setAttribute('max', today);
  document.getElementById('date-input').setAttribute('min', today);
</script>

  </body>
  </html> 
  
      