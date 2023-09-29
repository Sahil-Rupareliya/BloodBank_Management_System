
function validateForm() {
	  // Get the form fields
	  const name = document.getElementById("name").value;
	  const address = document.getElementById("address").value;
	  const state = document.getElementById("state").value;
	  const district = document.getElementById("city").value;
	  const pincode = document.getElementById("pincode").value;
	  const gender = document.querySelector('input[name="gender"]:checked');
	  const age = document.getElementById("age").value;
	  const bloodgroup = document.getElementById("bloodgroup").value;
	  const email = document.getElementById("email-for-pass").value;
	  const mobileno = document.getElementById("mobileno").value;
	  const password = document.getElementById("password").value;
	  const repassword = document.getElementById("retypepassword").value;

	  // Validate name
	   const nameRegex = /^[a-zA-Z\s]{10,50}$/;
	  if (!nameRegex.test(name) || name.length < 3 || name.length > 60) {
	    alert("Please enter a valid name with only alphabets and between 3 to 60 characters.");
	    return false;
	  }

	  // Validate address
	  if (address.length < 10 || address.length > 100) {
	    alert("Please enter a valid address between 10 to 100 characters.");
	    return false;
	  }

	  // Validate state
	  if (state === "") {
	    alert("Please select a state.");
	    return false;
	  }

	  // Validate district
	  if (district === "") {
	    alert("Please select a district.");
	    return false;
	  }

	  // Validate pincode
	  const pinRegex = /^\d{6}$/;
	  if (!pinRegex.test(pincode)) {
	    alert("Please enter a valid 6-digit pincode.");
	    return false;
	  }

	  // Validate gender
	  if (!gender) {
	    alert("Please select a gender.");
	    return false;
	  }

	  // Validate age
	  const ageRegex = /^(1[8-9]|[2-4][0-9]|45)$/;
	  if (!ageRegex.test(age)) {
	    alert("Please enter a valid age between 18 to 45.");
	    return false;
	  }

	  // Validate bloodgroup
	  if (bloodgroup === "") {
	    alert("Please select a blood group.");
	    return false;
	  }

	  // Validate email
	  const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
	  if (!emailRegex.test(email)) {
	    alert("Please enter a valid email address.");
	    return false;
	  }

	  // Validate mobileno
	  const mobileRegex = /^\d{10}$/;
	  if (!mobileRegex.test(mobileno)) {
	    alert("Please enter a valid 10-digit mobile number.");
	    return false;
	  }

	  // Validate password
	  const passwordRegex = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{1,15}$/;
	  if (!passwordRegex.test(password)) {
	    alert("Please enter a valid password with at least 1 special character, 1 digit, 1 alphabet and between 1 to 6 characters.");
	    return false;
	  }

	  // Validate repassword
	  if (password !== repassword) {
	    alert("Passwords do not match.");
	    return false;
	  }
 document.getElementById("otp-section").style.display = "block";
	  // If all validations pass, return true
	  return true;
	}
