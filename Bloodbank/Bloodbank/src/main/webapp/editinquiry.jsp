<%-- 
    Document   : editinquiry
    Created on : Mar 18, 2023, 8:41:18 PM
    Author     : JENISH
--%>

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
        <title>EDIT INQUIRY</title>
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
}</style>
          
           <style>
form {
	width: 800px;
	height: 700px;
	margin-left: 400px;
	margin-top: -360px;
	border-radius: 5px;
	padding-top:70px;
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
		<ul class="mid-left-sec-1" style="position:sticky; top:200px;">
			<li><a href="admin.jsp">Home</li>
		</ul>
		<ul class="mid-left-sec-2" style="position:sticky; top:250px;">
			<li><a href="mdonor.jsp">Manage Donor</li>
		</ul>
		<!-- comment -->

		<ul class="mid-left-sec-4" style="position:sticky; top:300px;">
			<li><a href="minquiry.jsp">Manage Inquiry</li>
		</ul>
		<ul class="mid-left-sec-5" style="position:sticky; top:350px;">
			<li><a href="mstoc.jsp">Mange Blood stock</li>
		</ul>
		<!-- comment -->
		<ul class="mid-left-sec-6" style="position:sticky; top:400px;">
			<li><a href="mbank.jsp">Manage Blood Bank</li>
		</ul>
		<ul class="mid-left-sec-7" style="position:sticky; top:450px;">
			<li><a href="mpatient.jsp">Manage Thalessemia Patient</li>
		</ul>
		<ul class="mid-left-sec-8" style="position:sticky; top:526px;">
			<li><a href="mvbdcamps.jsp">Manage VBD Camps</li>
		</ul>
   <a href=""></a>
         <%
String id = request.getParameter("id");
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
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from dinquiry where id="+id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<form method="post" action="updateinquiry.jsp">
<input type="hidden" name="id" value="<%=resultSet.getString("id") %>">
id:<input type="text" name="id" value="<%=resultSet.getString("id") %>">
<br><br>
First name:
<input type="text" name="firstname" value="<%=resultSet.getString("firstname") %>">
<br><br>
Last name:
<input type="text" name="lastname" value="<%=resultSet.getString("lastname") %>">
<br><br>
Email Id:
<input type="email" name="mailid" value="<%=resultSet.getString("mailid") %>">
<br><br>
 State:*
      <select id="country" name="country"  required>
          <option value="<%=resultSet.getString("country") %>">Select State</option>
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
        </select>
          <br><br>
subject:
<input type="text" name="subject" value="<%=resultSet.getString("subject") %>">
<br>
<input type="submit" value="submit">
</form>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
   <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js">  </script>
   <link rel="stylesheet" href="alert/dist/sweetalert.css">
   <script type="text/javascript">
           var status = document.getElementById("status").value;
           if(status=="success")
	   {
	   swal("Congrats"," Form data updated Successfully","success");
	   }
   </script>
    </body>
</html>
