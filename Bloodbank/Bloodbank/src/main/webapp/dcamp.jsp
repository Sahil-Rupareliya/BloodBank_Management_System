
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
   
 <link rel="stylesheet" type="text/css" href="css/design_dashboard.css" />
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
       .first-section{
	height:80px;
	width:100%;
	background-color:#FFFFFF;
	
	padding-top:5px;
	box-shadow: 0 2px 2px 0 rgba(0,0,0,.1);
	display:flex;
	padding-bottom:5px;
	text-align:center;
	align-items:center;
        top:0px;
	position: sticky;
    
}
img{
	width:80px;
	height:80px;
	padding-left:80px;
	padding-bottom:5px;
}
.button1{
	margin-left:800px;
	width:108px;
	height:40px;
	text-decoration: none;
	margin-top:-10px;
}
.h3{
	
	margin-left: 100px;
        font-size: 20px;
        color: red;
}
.mid-left{
         width:400px;
	margin-top:30px;
        margin-left: 10px;
		position: sticky;
        
        top: 200px;
       
}
.mid-left ul {
  list-style: none;
  padding: 0;
  margin: 0;
  width:50%;
}

.mid-left li {
  border: 1px solid black;
  padding: 10px;
  margin-bottom: 10px;
  border-radius:10px;
}

.mid-left li:hover {
  background-color: #ddd;
}
a{
  text-decoration: none;
  font-size:20px;
  
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
.button1 {
 
  border: 1px solid #FFFFFF;
  border-radius: 6px;
  box-shadow: rgba(0, 0, 0, 0.1) 1px 2px 4px;
  box-sizing: border-box;
  color: #FFFFFF;
}
.name
{
    height:50px;
    font-size: 30px;
    padding-left:70px;
    top:90px;
    position: sticky;
    box-shadow: 0 2px 2px 0 rgba(0,0,0,.1);
    margin-top: 20px;
	padding-top: 10px;
	z-index: 999;
	background-color: #fff;
        
}
     </style>
     
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
	color: #ff0000; /* change color to your preference */
	text-transform: uppercase;
	letter-spacing: 0.04em;
	/*margin-top: 4rem;
	margin-bottom: 2rem;*/
        margin-left:300px;
        margin-top:-200px;
	
}

.heading {
	text-align: center;
	font-size: 30px;
	color: #333;
	transition: all 0.2s ease-in-out;
	font-family: Georgia, serif;
        margin-left: 300px;
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
	width: 1050px;
	//margin-top: 30px;
	border-collapse: collapse;
	//margin-left: 360px;
	//margin-bottom: 60px;
        //width: 800px;
 
  
  margin-left: 300px;
  margin-top: 30px;
   border-radius: 5px;
  box-shadow: 0 0 10px rgba(0,0,0,0.3);
  background-color: #fff;
  color:black;
}

table th, table td {
	padding: 10px;
	border: 1px solid #ccc;
	align-items: center;
	justify-content: center;
		font-family: Georgia, serif;
	
}

table th {
	background-color: #FAA0A0;#FAA0A0
	font-weight: bold;
	color: #C41E3A;
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
     </style>
    </head>
    <body>
        <div class="first-section">
        <img src="photos/1logo.png" alt="logo">
        <div class="h3">
            <h3 style="font-size:30px;">Indian Red Cross Society</h3>
        </div>
        <button class="button1"><a href="Logout" class="a" style="color:red">Logout</a></button>
    
    </div>
       <div class="name">
               Welcome&nbsp;&nbsp;&nbsp;<%=session.getAttribute("name")%>&nbsp;&nbsp;!!

               </div>
      <div class="mid-left">
		<ul class="mid-left-sec-1 nav sticky">
			<li class="nav__item"><a class="nav__link "   href="donordashboard.jsp">Home</a></li>
		</ul>
		<ul class="mid-left-sec-2 nav sticky" style="top: 255px;">
			<li class="nav__item"><a class="nav__link "   href="dprofile.jsp">Manage Profile</a></li>
		</ul>
		<!-- comment -->
		<ul class="mid-left-sec-3  nav sticky" style="top: 310px;">
			<li class="nav__item"><a class="nav__link "   href="dfeedback.jsp">Give Feedback</a></li>
		</ul>
		<ul class="mid-left-sec-5 nav sticky" style="top: 365px;">
			<li class="nav__item"><a class="nav__link active"   href="dcamp.jsp">View Blood Camp </a></li>
		</ul>
		<!-- comment -->
		<ul class="mid-left-sec-7 nav  sticky" style="top: 420px;">
			<li class="nav__item"><a class="nav__link "   href="dblood.jsp">Donate Blood</a></li>
		</ul>
             </div>
            
            
            
          
            
    </div>
        
        <h2 class="heading" align="center" style="margin-right:160px; ">Search Blood Camps By selecting
		district:</h2>
	<div class="container">

		<form action="dcamp.jsp" method="post" class="search">

			<div class="col-sm-5">

				<form>

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
        
        
     	<%
				try {
					Class.forName("com.mysql.jdbc.Driver").newInstance();
					Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank?useSSl=false", "root","Chintan@123");
					Statement stm = conn.createStatement();
					ResultSet rs = stm.executeQuery("select distinct campid,o_name,o_contactno,o_email,camp_name,camp_address,state,city,camp_date,camp_start_time,camp_end_time from vbdcamp");
					// ResultSet rs=stm.executeQuery("select distinct city from addbb ");

					while (rs.next()) {
						// <select class="form-control" name="cmbcity" onchange="this.form.submit();">
						// <option value="0" align="center">select city</option>
						// <option> <%=rs.getString("city")
				%>


				<%
				}
				conn.close();
				rs.close();

				} catch (Exception e) {
				e.printStackTrace();
				}
				%>
				
		</form>
		<br>
	</div>
	<br>

	<table class="table table-bordered table-striped" width=60%
		border="2px solid green" align="center">
		<tr>

			<th>SR.NO</th>
			<th>ORGANIZER NAME</th>
			<th>ORGANIZER CONTACT NO</th>
			<th>EMAIL</th>
			<th>CAMP NAME</th>
			<th>CAMP ADDRESS</th>
			<th>STATE</th>
			<th>CITY</th>
			<th>CAMP DATE</th>
			<th>CAMP START TIME</th>
			<th>CAMP END TIME</th>
		</tr>

		<%
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank?useSSl=false", "root",
			"Chintan@123");
			Statement stmt = con.createStatement();
			ResultSet resultset = stmt
			.executeQuery("select campid,o_name,o_contactno,o_email,camp_name,camp_address,state,city,camp_date,camp_start_time,camp_end_time from vbdcamps where status='success' AND city='"
					+ request.getParameter("city") + "'");

			if (resultset.next()) {
				do {
		%>
		<tr>
			<td><%=resultset.getString("campid")%></td>
			<td><%=resultset.getString("o_name")%></td>
			<td><%=resultset.getString("o_contactno")%></td>
			<td><%=resultset.getString("o_email")%></td>
			<td><%=resultset.getString("camp_name")%></td>
			<td><%=resultset.getString("camp_address")%></td>
			<td><%=resultset.getString("state")%></td>
			<td><%=resultset.getString("city")%></td>
			<td><%=resultset.getString("camp_date")%></td>
			<td><%=resultset.getString("camp_start_time")%></td>
			<td><%=resultset.getString("camp_end_time")%></td>
			
		</tr>


		<%
		} while (resultset.next());
		} else {
		%>
		<tr class="datanotfound">
			<td class="datanot" colspan="11">you have  not selected a city  <br>Or<br> Your City blood camp Data Not Available!!!</td>
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
             </div>
                <script src="js/blood_bank_address.js"></script>
                <script>
    document.addEventListener('DOMContentLoaded', function() {
    	const selector = '.nav__link';
    	const elems = Array.from( document.querySelectorAll( selector ) );
    	const navigation = document.querySelector( 'nav' );

    	function makeActive( evt ) {
    	  const target = evt.target;
    	  
    	  if ( !target || !target.matches( selector ) ) {
    	    return;
    	  }
    	  
    	  elems.forEach( elem => elem.classList.remove( 'active' ) );
    	    
    	    evt.target.classList.add( 'active' );
    	};

    	navigation.addEventListener( 'mousedown', makeActive );

    	} );
    </script>
    </body>
</html>