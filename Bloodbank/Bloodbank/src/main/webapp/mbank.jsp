<%-- 
    Document   : mbank
    Created on : Mar 18, 2023, 5:59:55 PM
    Author     : CHINTAN
--%>


<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BLOOD BANKS</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css" integrity="sha512-1PKOgIY59xJ8Co8+NE6FZ+LOAZKjy+KY8iq0G4B3CyeY6wYHN3yt9PW0XpSriVlkMXe40PTKnXrLnZ9+fkDaog==" crossorigin="anonymous" />


<style>
.pagination{
  text-decoration: none;
   color: white;
   background: #dc3545;
   padding: 7px 10px;
   border-radius: 4px;  
   font-size: 19px;
   margin-left:600px;
   }
.a{
color:white;
}
.pagination1{
  text-decoration: none;
   color: white;
   background: #dc3545;
   padding: 7px 10px;
   border-radius: 4px;  
   font-size: 19px;
   margin-left:415px;
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

img {
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
	margin-top: 10px;
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
</style>
<style>
table {
	width: 950px;
	margin-top: -460px;
	border-collapse: collapse;
	margin-left: 280px;
	margin-bottom: 60px;
	color: black;
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

.btn-edit, .btn-delete {
	border: none;
	color: white;
	padding: 10px 20px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 5px 10px;
	cursor: pointer;
	border-radius: 5px;
}

.btn-edit {
	background-color: #007bff;
}

.btn-delete {
	background-color: #dc3545;
}
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
}

.nav__link.active  {
  color: #ff4b4c;
}
</style>

</head>
<body>
	<input type="hidden" id="status"
		value="<%=request.getAttribute("status")%>">
<body>
	<div class="first-section">
		<img src="photos/1logo.png" alt="logo">
		<div class="h3">
			<h3>Indian Red Cross Society</h3>
		</div>
		<button class="button1">
			<a href="admin_login.jsp" class="a" style="color: #6e0202;">Logout</a>
		</button>

	</div>


	<div class="name">Welcome&nbsp;&nbsp;Admin!!&nbsp;&nbsp;</div>


	  <div class="mid-left">
		<ul class="mid-left-sec-1 nav" style="position:sticky; top:200px;">
			<li class="nav__item"><a class="nav__link "  href="admin.jsp">Home</li>
		</ul>
		<ul class="mid-left-sec-2 nav" style="position:sticky; top:250px;">
			<li class="nav__item"><a class="nav__link "  href="mdonor.jsp">Manage Donor</li>
		</ul>
		<!-- comment -->

		<ul class="mid-left-sec-4 nav" style="position:sticky; top:300px;">
			<li class="nav__item" ><a class="nav__link "  href="minquiry.jsp">Manage Inquiry</li>
		</ul>
		
		<!-- comment -->
		<ul class="mid-left-sec-6 nav" style="position:sticky; top:350px;">
			<li class="nav__item"  ><a class="nav__link active"  href="mbank.jsp">Manage Blood Bank</li>
		</ul>
		<ul class="mid-left-sec-7 nav" style="position:sticky; top:400px;">
			<li class="nav__item"><a class="nav__link"  href="mpatient.jsp">Manage Thalessemia Patient</li>
		</ul>
		<ul class="mid-left-sec-8 nav" style="position:sticky; top:470px;">
			<li class="nav__item" ><a class="nav__link"  href="mvbdcamps.jsp">Manage VBD Camps</li>
		</ul>
		<ul class="mid-left-sec-9 nav" style="position:sticky; top:518px;">
			<li class="nav__item"><a class="nav__link"  href="mpatientrequest.jsp">Manage Thalessemia Blood patient request</li>
		</ul>
		</ul>
                 <ul class="mid-left-sec-10 nav" style="position:sticky; top:590px;">
			<li><a class="nav__link" href="mpatients.jsp">Manage patient request </li>
		</ul>
		<a href=""></a>


		
			 <%
// Get the page number from the request parameter or set to 1 if not present
int page1 = request.getParameter("page") != null ? Integer.parseInt(request.getParameter("page")) : 1;

// Set the number of records to display per page
int recordsPerPage = 3;

// Calculate the starting record for the current page
int start = (page1 - 1) * recordsPerPage;

// Connect to the database
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank?useSSl=false","root","Chintan@123");

// Execute the query to get the total number of records in the table
PreparedStatement countStmt = conn.prepareStatement("SELECT COUNT(*) FROM addbb");
ResultSet countRs = countStmt.executeQuery();
countRs.next();
int totalRecords = countRs.getInt(1);

// Calculate the total number of pages
int totalPages = (int) Math.ceil((double) totalRecords / recordsPerPage);

// Execute the query to get the records for the current page
PreparedStatement stmt = conn.prepareStatement("SELECT * FROM addbb LIMIT ?, ?");
stmt.setInt(1, start);
stmt.setInt(2, recordsPerPage);
ResultSet resultset = stmt.executeQuery();

// Loop through the records and display them in a table
%>

		<div class="table">
			<!--<div class="table-r1">
         <h2> list of inquiry</h2>
     </div>-->
			<table class="intable" border="3px solid black" padding="10px">
				<tr>
				<tr>
					<th>ID</th>
					<th>STATE</th>
					<th>CITY</th>
					<th>NAME</th>
					<th>CONTACTNO</th>
					<th>ADDRESS</th>
					<th>PIN CODE</th>
                                           <th>STATUS</th>
					<th>EDIT</th>
					<th>DELETE</th>
                                     
                                        <th>RESULT</th>
                                                                                <th>SEND MAIL</th>
                                        

				</tr>

				</tr>
				</div>
				
				 <% while (resultset.next()) { %>
				<tr class="inner">
				<tr>
					<td><%=resultset.getString("id")%></td>
					<td><%=resultset.getString("state")%></td>
					<td><%=resultset.getString("city")%></td>
					<td><%=resultset.getString("name")%></td>
					<td><%=resultset.getString("contactno")%></td>
					<td><%=resultset.getString("address")%></td>
					<td><%=resultset.getInt("pcode")%></td>
                                        <td><%=resultset.getString("status")%></td>
					<td><a href="editbank.jsp?id=<%=resultset.getString("id")%>"><button
								class="btn-edit">
								<i class="fas fa-pencil-alt"></i>Edit
							</button></a></td>
					</a>
					</td>
					<td><a href="deletebank.jsp?id=<%=resultset.getString("id")%>"><button
								class="btn-delete">
								<i class="fas fa-trash-alt"></i>Delete
							</button></a></td>
					</a>
					</td>
                                         <td><a href="resultbank.jsp?id=<%=resultset.getString("id") %>"><button type="button" style="background-color:green;" class="btn-delete">        <i class="fas fa-envelope-open-text"></i>
                                         RESULT</button></a></td>
                  <td><a href="sendbankstatus.jsp?id=<%=resultset.getString("id") %>"><button type="button" style="background-color:orange;" class="btn-delete"> <i class="fas fa-info-circle"></i>SEND</button></a></td>
                                       
				


				</tr>
                                 <% } %>
			</table>
			<% if (page1 > 1) { %>
<button class="pagination1"> <a href="?page=<%= page1 - 1 %>" class="a" > << Previous Page</a></button>
<% } %>

<% if (page1 < totalPages) { %>
<button class="pagination"><a href="?page=<%= page1 + 1 %>" class="a" >Next Page >></a></button>
<% } %>
		</div>
	</div>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js">
		
	</script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	<script type="text/javascript">
		var status = document.getElementById("status").value;
		if (status == "success") {
			swal("Congrats", "Entry Deleted Successfully", "success");
		}
		if (status == "success1") {
			swal("Congrats", "Edit Data Successfully", "success");
		}
	</script>
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
