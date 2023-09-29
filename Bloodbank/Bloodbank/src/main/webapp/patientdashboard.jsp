<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <% 
    if(session.getAttribute("name")==null)
    {
    	response.sendRedirect("patient_login.jsp");
    }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome Patient</title>
 
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

.img {
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
.img1 img{
width:300px;
height:250px;
float:left;
border :3px solid black;
margin-left:30px;
border-radius:30px;
}
h4{
color:black;
margin-left:20px;
}

.button-42 {
margin-left:900px;
  background-color: initial;
  background-image: linear-gradient(-180deg, #FF7E31, #E62C03);
  border-radius: 6px;
  box-shadow: rgba(0, 0, 0, 0.1) 0 2px 4px;
  color: #FFFFFF;
  cursor: pointer;
  display: inline-block;
  font-family: Inter,-apple-system,system-ui,Roboto,"Helvetica Neue",Arial,sans-serif;
  height: 40px;
  line-height: 40px;
  outline: 0;
  overflow: hidden;
  padding: 0 20px;
  pointer-events: auto;
  position: relative;
  text-align: center;
  touch-action: manipulation;
  user-select: none;
  -webkit-user-select: none;
  vertical-align: top;
  white-space: nowrap;
  width: 20%;
  z-index: 9;
  border: 0;
  transition: box-shadow .2s;
}

.button-42:hover {
  box-shadow: rgba(253, 76, 0, 0.5) 0 3px 8px;
}
</style>
          
</head>

<body>



    <section class="first-section">
    <img src="photos/1logo.png"alt="logo" class="img">
    <div class="h3"><h3>Indian Red Cross Society</h3></div>
    <button class="button1"><a href="patient_login.jsp" class="a">Logout</a></button>
    
    </section>
    
    

   
       
           
               <div class="name">
               Welcome&nbsp;&nbsp;&nbsp;<%=session.getAttribute("name")%>&nbsp;&nbsp;!!

            </div>
 
      
       <hr>
       
             <div class="mid-left">
                 <ul class="mid-left-sec-1 nev sticky" style="top:200px;">
                     <li class="nav__item"><a class="nav__link active" href="patientdashboard.jsp">Home</a></li>
                 </ul>
                  <ul class="mid-left-sec-2 nev sticky" style="top:250px;">
                      <li class="nav__item"><a class="nav__link " href="patientprofile.jsp">Manage Profile</a></li>
                  </ul><!-- comment -->
                   <ul class="mid-left-sec-3 nev sticky" style="top:300px;">
                       <li class="nav__item"><a class="nav__link " href="patientblood.jsp">Request for blood</a></li>
                 </ul>
                   <ul class="mid-left-sec-4 nev sticky" style="top:350px;">
                       <li class="nav__item"><a class="nav__link " href="patientrequest.jsp">view request</a></li>
                 </ul>
                   
                    <div class="img1" style="margin-left:270px;margin-top:-250px;">
                    
                    <img src="photos/jpg/patient.jpg" alt=""  />
                    <h4 style="margin-top:70px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The occasion of World Thalassemia Day reminds us to come together and support all those who are fighting with this  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;disease. Happy World Thalassemia Day to all.</h4>
<h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Warm greetings on World Thalassemia Day to everyone. Let us come forward and donate blood to save lives of patients &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;suffering from thalassemia.</h4>      
 <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Let us not forget how much of a struggle it is for people suffering from thalassemia. Let us support them and make this &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;life easier for them. Happy World Thalassemia Day.</h4>
       <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Warm greetings on the occasion of World Thalassemia Day to all. Just by donating your blood, you can make a &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;remarkable difference to many lives.</h4>
       <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;There are so many people out there suffering from thalassemia and they need our help. Let us step out and donate blood. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Happy World Thalassemia Day to all.</h4>
   <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Let us make the occasion of World Thalassemia Day an inspiring day for everyone by donating blood and by spreading happiness across many faces.</h4>
             <a href="patientblood.jsp"><button class="button-42">Want Blood Urgent??</button></a>
             
  
  </div>
                   
                   
                   

</body>
</html>