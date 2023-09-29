<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ADD VBD CAMPS</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
<link rel="stylesheet" href="css/vbdcamps.css" type="text/css" />
<style>
label, input, h1, label, option, select, textarea, h2 {
	font-family: Georgia, serif;
}
</style>
</head>
<body>
	<input type="hidden" id="status"
		value="<%=request.getAttribute("status")%>">

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


	</section>

	<form action=campotp class="form" method="Post"
		onsubmit="return validateForm()">
		<h2>Voluntary Blood Camp Registration Form</h2>
		<hr>
		<hr>
		<hr>

		<br> <br> <label for="org_name">Organizer Name:</label>* <input
			type="text" id="org_name" name="o_name" required> <label
			for="org_mobile">Organizer Mobile No:</label>* <input type="number"
			id="org_mobile" name="o_contactno" required> <label
			for="org_email">Organizer Email ID:</label>* <input type="email"
			id="org_email" name="o_email" required> <label
			for="camp_name">Camp Name:</label>* <input type="text" id="camp_name"
			name="camp_name" required> <label for="camp_address">Camp
			Address:</label>*
		<textarea id="camp_address" name="camp_address" required></textarea>

		<label for="state">State:</label>* <select id="state" name="state"
			required>
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
		</select> <label for="district">City:</label>* <select id="city" name="city"
			required>
			<option value="">Select District</option>
		</select> <br> <br> <label for="camp_date">Camp Date:</label>* <input
			type="date" id="camp_date" name="camp_date" required> <label
			for="camp_start_time">Camp Start Time:</label>* <input type="time"
			id="camp_start_time" name="camp_start_time" required> <label
			for="camp_end_time">Camp End Time:</label>* <input type="time"
			id="camp_end_time" name="camp_end_time" required> <br> <br>
		<br> <label for="remark">Remark:</label>
		<textarea id="remark" name="remark"></textarea>
<section id="otp-section" style="display: none;">
        <p style="font-size:22px;color:red;">Please wait for OTP...</p>
        </section>
		<input type="reset" value="Cancel"> &nbsp;&nbsp;&nbsp; <input
			type="submit" value="Submit">


	</form>




	<hr class="h1">

	<section class="down">
		<div class="f">
			<p class="fi" style="font-family: Georgia, serif;">
				<br> <strong
					style="font-size: 20px; font-family: Georgia, serif;">Contact
					Us:-</strong> <br> <br> Gujarat Brahmkshatriya Society J l Thakor
				Red Cross Bhavan, 18, Flora Residency Rd, Behind Suvidha Shopping
				Centre, Paldi, Ahmedabad, Gujarat 380007
			</p>

			<p class="fi" style="font-family: Georgia, serif;">Phone: 097222
				69610</p>
			<p class="fi" style="font-family: Georgia, serif;">Email:
				redcross.ahmedabad@gmail.com.</p>
		</div>
		<div class="t">
			<h4 style="font-size: 20px;">Looking For Blood</h4>
			<br>
			<div class="part1">
              <li><a href="./patient.jsp">Patient Blood Request</a></li>

				<li><a href="./patient_login.jsp">Thalasemia & Blood
						Disorder Patient Login</a></li>

				<li><a href="./blood_bank_directory.jsp">Blood Bank
						Directory</a></li>
			</div>
		</div>
		<div class="s">
			<h4 style="font-size: 20px;">Want to Donate Blood</h4>
			<br>
			<div class="part1">
				<li><a href="./blood_camps.jsp">Blood Camps </a></li>
				<li><a href="./donor_login.jsp">Donor Login</a></li>
				<li><a href="./about_blood_donation.html">About Blood
						Donation</a></li>
				<li><a href="./vbd_camps.jsp">Register vbd camps</a></li>
			</div>
		</div>

		<div class="last"></div>
	</section>




	<footer class="foot" style="font-family: Georgia, serif;">
		<span style="font-family: Georgia, serif;"><strong
			style="font-family: Georgia, serif;">&copy; Copyright : </strong>&nbsp;All
			Right Are Reserved </span>
		<p style="font-family: Georgia, serif;">
			<strong style="font-family: Georgia, serif;">Created By</strong>&nbsp;Chintan
			Gabani Jenish Akoliya Priyank Chuahan
		</p>
	</footer>




	<section class="sec1">
		<div class="wrapper">
			<div class="button">
				<div class="icon">
					<i class="fab fa-facebook-f"></i>
				</div>
				<a
					href="https://www.facebook.com/chintan.gabani.5667?mibextid=ZbWKwL"
					class="facebook" target="_blank"><span>Facebook</span></a>
			</div>
			<div class="button">
				<div class="icon">
					<a href="https://www.facebook.com/yourpage" target="_blank"></a> <i
						class="fab fa-twitter"></i>
				</div>
				<a href="https://twitter.com/CN_GABANI" class="twitter"
					target="_blank"><span>Twitter</span></a>
			</div>
			<div class="button">
				<div class="icon">
					<i class="fab fa-instagram"></i>
				</div>
				<a href="https://www.instagram.com/chintan_gabani___/"
					class="instagram" target="_blank"><span>instagram</span></a>

			</div>
			<div class="button">
				<div class="icon">
					<i class="fab fa-youtube"></i>
				</div>
				<a href="https://youtube.com/@mysteryend4802" class="youtube"
					target="_blank"><span>YouTube</span></a>

			</div>
		</div>
	</section>
	<script src="./js/blood_bank_address.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js">
		
	</script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">

	<script type="text/javascript">
		var status = document.getElementById("status").value;
		if (status == "success") {
			swal("Conrats", "Blood Camp Register Successfully", "success");
		}
		if(status=="failed")
		   {
		   swal("Congrats","Account Not Created ","error");
		   }
	</script>
	<script>
		function validateForm() {
			// Get form inputs
			const orgName = document.getElementById("org_name").value.trim();
			const orgMobile = document.getElementById("org_mobile").value
					.trim();
			const orgEmail = document.getElementById("org_email").value.trim();
			const campName = document.getElementById("camp_name").value.trim();
			const campAddress = document.getElementById("camp_address").value
					.trim();
			const state = document.getElementById("state").value.trim();
			const city = document.getElementById("city").value.trim();
			const campDate = document.getElementById("camp_date");
			const campStartTime = document.getElementById("camp_start_time");
			const campEndTime = document.getElementById("camp_end_time");
			const remark = document.getElementById("remark").value.trim();

			// Validate organizer name
			const orgNameRegex = /^[a-zA-Z ]{3,}$/;
			if (!orgNameRegex.test(orgName)) {
				alert("Please enter a valid organizer name with only alphabets and minimum 3 characters.");
				return false;
			}

			// Validate organizer mobile number
			const orgMobileRegex = /^[0-9]{10}$/;
			if (!orgMobileRegex.test(orgMobile)) {
				alert("Please enter a valid organizer mobile number with 10 digits only.");
				return false;
			}

			// Validate organizer email ID
			const orgEmailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
			if (!orgEmailRegex.test(orgEmail)) {
				alert("Please enter a valid organizer email ID.");
				return false;
			}

			// Validate camp name
			const campNameRegex = /^[a-zA-Z ]{3,}$/;
			if (!campNameRegex.test(campName)) {
				alert("Please enter a valid camp name with only alphabets and minimum 3 characters.");
				return false;
			}

			// Validate camp address
			const campAddressRegex = /^[a-zA-Z0-9\s,#/-]+$/;
			if (!campAddressRegex.test(campAddress)) {
				alert("Please enter a valid camp address with only alphabets, numbers, spaces, commas, hash, slash, hyphen, and pound characters.");
				return false;
			}

			// Validate state and city
			if (state === "" || city === "") {
				alert("Please select a valid state and city.");
				return false;
			}

			// Validate camp date
			// Check if the camp date is tomorrow or later
			const today = new Date();

			// Check if the camp date is tomorrow or later
			const selectedDate = new Date(campDate.value);
			const timeDiff = selectedDate.getTime() - today.getTime();
			const diffDays = timeDiff / (1000 * 3600 * 24);

			if (diffDays < 1) {
				alert('Please select a date that is tomorrows later date.');
				return false;
			}

			// Check if the start time is before the end time
			if (campStartTime.value >= campEndTime.value) {
				alert('Please select a start time that is before the end time.');
				return false;
			}

			// Check if the start time is after the current time
			const currentTime = new Date().toLocaleTimeString([], {
				hour : '2-digit',
				minute : '2-digit'
			});

			if (selectedDate.toDateString() === today.toDateString()
					&& campStartTime.value < currentTime) {
				alert('Please select a start time that is after the current time.');
				return false;
			}
			// Validate remark
			if (remark.length > 500) {
				alert("Please enter a remark of maximum 500 characters.");
				return false;
			}

			   document.getElementById("otp-section").style.display = "block";
			return true;
		}
	</script>
</body>
</html>