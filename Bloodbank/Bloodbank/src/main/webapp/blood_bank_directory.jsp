<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>BLOOD BANK DIRECTORY</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
<link rel="stylesheet" href="css/blood_bank_directory.css">
   
<style>
option{
	font-family: Georgia, serif;
}
.font
{
    font-weight:bold;
    font-family: Georgia, serif;  
    font-size:18px;
}
.heading {
	text-align: center;
	font-size: 1.5rem;
	font-weight: bold;
	color: #ff0000; 
	text-transform: uppercase;
	letter-spacing: 0.04em;
	margin-top: 4rem;
	margin-bottom: 2rem;
	
}

.heading {
	text-align: center;
	font-size: 30px;
	color: #333;
	transition: all 0.2s ease-in-out;
	font-family: Georgia, serif;
}

.heading:hover {
	color: #ff0000;
	transform: scale(1.05);
}

#state {
	font-size: 16px;
	width: 200px;
	padding: 10px;
	border: none;
	border-radius: 5px;
	background-color: #f1f1f1;
	appearance: none;
	-webkit-appearance: none;
	-moz-appearance: none;
	cursor: pointer;
	margin-top: 50px;
		font-family: Georgia, serif;
	
}

#state:focus {
	outline: none;
	box-shadow: 0 0 5px #ff0000;
}

/* style for the district dropdown */
#city {
	font-size: 16px;
	width: 200px;
	padding: 10px;
	border: none;
	border-radius: 5px;
	background-color: #f1f1f1;
	appearance: none;
	-webkit-appearance: none;
	-moz-appearance: none;
	cursor: pointer;
	margin-top: 10px;
	margin-top: 40px;
		font-family: Georgia, serif;
	
}

#city:focus {
	outline: none;
	box-shadow: 0 0 5px #ff0000;
}

/* style for the options within the dropdowns */
select option {
	font-size: 16px;
	padding: 10px;
	background-color: #f1f1f1;
	color: #333;
}

.search {
	display: flex;
	flex-direction: column;
	align-items: center;
}

/* Style the label and select elements */
label {
	display: inline-block;
	margin-right: 5px;
}

select {
	padding: 5px;
	margin-right: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
}

/* Style the table */
table {
	width: 90%;
	margin-top: 70px;
	border-collapse: collapse;
	margin-left: 80px;
	margin-bottom: 60px;
}

table th, table td {
	padding: 10px;
	border: 1px solid #ccc;
	align-items: center;
	justify-content: center;
		font-family: Georgia, serif;
	
}

table th {
	background-color: #C41E3A;
	font-weight: bold;
	color: #FFFFFF;
}

/* Style the table rows */
table tr:nth-child(even) {
	background-color: #f2f2f2;
}

table tr:hover {
	background-color: #ddd;
}

.datanot {
	justify-content: center;
	align-items: center;
	padding-left: 0px;
	color: #333; /* change color to your preference */
	text-transform: uppercase;
	letter-spacing: 0.1em;
	font-size: 1.2 rem;
	font-weight: bold;
	font-family: Georgia, serif;
	text-align:center;
	
}
.datanot:hover {
	color: #ff0000;
	transform: scale(1.05);
}

</style>


</head>
<body>
	<section class="up"></section>
	<section class="p1"></section>
	<hr class="h1">
	<nav class="navbar background">
		<ul class="nav-list">
			<div class="logo">
				<img src="photos/1logo.png" alt="logo">
			</div>
			<li><a href="./index.html">HOME</a></li>

			<li><a href="#donate">WANT TO DONATE BLOOD &nbsp;+</a>
				<ul class="submenu">
					<li><a href="./blood_camps.jsp">BLOOD CAMPS </a></li>
					<li><a href="./donor_login.jsp">DONOR LOGIN</a></li>
					<li><a href="./about_blood_donation.html">ABOUT BLOOD
							DONATION</a></li>
					<li><a href="./vbd_camps.jsp">REGISTER VBD CAMPS</a></li>
				</ul></li>

			<li><a href="#need">LOOKING FOR BLOOD &nbsp;+</a>
				<ul class="submenu">
              <li><a href="./patient.jsp">PATIENT BLOOD REQUEST</a></li>
					<li><a href="./patient_login.jsp">THALASEMIA/BLOOD
							DISORDER PATIENT LOGIN</a></li>
					<li><a href="./blood_bank_directory.jsp">BLOOD BANK
							DIRECTORY</a></li>
				</ul></li>
			<li><a href="#blood bank">BLOOD BANKS&nbsp;+</a>
				<ul class="submenu">
					<li><a href="./admin_login.jsp">ADMIN</a></li>
					<li><a href="./blood_banks.jsp">ADD BLOOD BANK</a></li>
				</ul></li>
			<li><a href="./contact_us.jsp">CONTACT US</a></li>
			<li><a href="./inquiry_form.jsp">INQUIRY</a></li>
			<li><a href="./about_us.jsp">ABOUT US</a></li>
		</ul>
	</nav>


	<h2 class="heading" align="center">Search Blood Bank By selecting
		district:</h2>
	<div class="container">

		<form action="blood_bank_directory.jsp" method="post" class="search">

			<div class="col-sm-5">

					<label for="state" class="font">STATE:-*&nbsp;&nbsp;&nbsp;</label> <select
						id="state" name="state" required>
						<option value="" style=>SELECT STATE</option>
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
					</select> <label for="district" class="font">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DISTRICT:-*&nbsp;&nbsp;&nbsp;</label>
					<select class="form-control" name="city" id="city"
						onchange="this.form.submit();">
						<option value="">SELECT DISTRICT</option>
					</select>

				</form>

			
		<br>
	</div>
	<br>

	<table>
		<tr>

			<th>SR.NO</th>
			<th>STATE</th>
			<th>CITY</th>
			<th>NAME</th>
			<th>EMAIL</th>
			<th>CONTACT-NO</th>
			<th>ADDRESS</th>
			<th>PIN CODE</th>
		</tr>



		<%
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank?useSSl=false", "root",
			"Chintan@123");
			Statement stmt = con.createStatement();
			ResultSet resultset = stmt
			.executeQuery("select id,state,city,name,email,contactno,address,pcode from addbb where status='success' AND city='"
					+ request.getParameter("city") + "'");

			if (resultset.next()) {
				do {
		%>
		<tr>
			<td><%=resultset.getString("id")%></td>
			<td><%=resultset.getString("state")%></td>
			<td><%=resultset.getString("city")%></td>
			<td><%=resultset.getString("name")%></td>
			<td><%=resultset.getString("email")%></td>
			<td><%=resultset.getString("contactno")%></td>
			<td><%=resultset.getString("address")%></td>
			<td><%=resultset.getString("pcode")%></td>
		</tr>

		<%
		} while (resultset.next());
		} else {
		%>
		<tr class="datanotfound">
			<td class="datanot" colspan="11">you have not selected a city <br>Or<br>  Your City Blood bank Data Not Available !!!</td>
		</tr>
		<%
		}

		resultset.close();
		con.close();

		} catch (Exception e) {
		e.printStackTrace();
		}
		%>

	</table>





     
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

</body>
</html>

