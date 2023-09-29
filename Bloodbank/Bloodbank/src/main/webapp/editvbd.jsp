<%-- 
    Document   : editbank
    Created on : Mar 18, 2023, 6:12:54 PM
    Author     : CHINTAN
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>EDIT VBD CAMPS</title>
<link rel="stylesheet" href="css/vbdcamps.css" type="text/css" />
<link rel="stylesheet" href="css/blooddonor_reg.css">
        
       <style>
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
	margin-top: 5px;
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
}</style>
          
           <style>
form {
	width: 800px;
	height: 800px;
	margin-left: 400px;
	margin-top: -400px;
	border-radius: 5px;
	padding-top:20px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
	background-color: #fff;
	z-index: -1;
	color:black;
	
}
</style>
</head>
<body>
	<input type="hidden" id="status" value="<%= request.getAttribute("status")%>">
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


	<div class="name">
		Welcome&nbsp;&nbsp;Admin!!&nbsp;&nbsp;

	</div>

   
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
			<li class="nav__item"  ><a class="nav__link "  href="mbank.jsp">Manage Blood Bank</li>
		</ul>
		<ul class="mid-left-sec-7 nav" style="position:sticky; top:400px;">
			<li class="nav__item"><a class="nav__link"  href="mpatient.jsp">Manage Thalessemia Patient</li>
		</ul>
		<ul class="mid-left-sec-8 nav" style="position:sticky; top:470px;">
			<li class="nav__item" ><a class="nav__link active"  href="mvbdcamps.jsp">Manage VBD Camps</li>
		</ul>
		<ul class="mid-left-sec-9 nav" style="position:sticky; top:518px;">
			<li class="nav__item"><a class="nav__link"  href="mpatientrequest.jsp">Manage Thalessemia Blood patient request</li>
		</ul>
		</ul>
                 <ul class="mid-left-sec-10 nav" style="position:sticky; top:600px;">
			<li><a class="nav__link" href="mpatients.jsp">Manage patient request </li>
		</ul>
		<a href=""></a>


	<input type="hidden" id="status"
		value="<%=request.getAttribute("status")%>">
	<%
	String campid = request.getParameter("campid");
	String driver = "com.mysql.jdbc.Driver";
	String connectionUrl = "jdbc:mysql://localhost:3306/";
	String database = "bloodbank";
	String userid = "root";
	String password = "Chintan@123";
	try {
		Class.forName(driver);
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	}
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
	%>
	<%
	try {
		connection = DriverManager.getConnection(connectionUrl + database, userid, password);
		statement = connection.createStatement();
		String sql = "select * from vbdcamps where campid=" + campid;
		resultSet = statement.executeQuery(sql);
		while (resultSet.next()) {
	%>
	<form method="post" action="updatevbd.jsp">
	
		<div class="left-form">
		<h1>Manage Vbd Camps</h1>
		<br>
		<br>
		<hr>
		<hr>
		<br>
		<label for="campid">Camp Id*</label>
          <input type="text" id="id" name="campid" value="<%=resultSet.getString("campid") %>"  required>
          <br>
          <br>
          <label for="o_name">Organizer Name*</label>
          <input type="text" id="o_name" name="o_name" value="<%=resultSet.getString("o_name") %>"  required>
         <br>
         <br>
            
          <label for="o_contactno">Organizer Contact No:*</label>
          <input type="text" id="o_contactno" name="o_contactno" value="<%=resultSet.getString("o_contactno") %>" required>
        <br>
        <br>
          <label for="camp_name">Camp Name:*</label>
          <input type="text" id="camp_name" name="camp_name" value="<%=resultSet.getString("camp_name") %>" required>
    <br><br>
          
    
    
          <label for="camp_date">Camp Date:</label>
          <input type="date" id="camp_date" name="camp_date"  value="<%=resultSet.getString("camp_date") %>" required>
    
          
    
       
    
        <div style="clear: both;"></div>
    
    <br>
   
    
          
    
        <input type="submit" value="Update Now" style="margin-right:80px;">
         <input type="reset" value="Cancel"  style="margin-right:80px;">
         <br>
         <br>
         
     
	</form>

	<%
	}
	connection.close();
	} catch (Exception e) {
	e.printStackTrace();
	}
	%>
	
</body>
</html>
