<%-- 
    Document   : mfeedback
    Created on : Mar 24, 2023, 8:37:09 AM
    Author     : CHINTAN
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>FEEDBACK</title>
<!--  <link rel="stylesheet" href="minquiry.css">-->
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
}
</style>
<style>
table {
	width: 1050px;
	margin-top: -350px;
	border-collapse: collapse;
	margin-left: 360px;
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
</style>
</head>
<body>
    <input type="hidden" id="status" value="<%= request.getAttribute("status")%>">

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
		<ul class="mid-left-sec-1">
			<li><a href="admin.jsp">Home</li>
		</ul>
		<ul class="mid-left-sec-2">
			<li><a href="mdonor.jsp">Manage Donor</li>
		</ul>
		<!-- comment -->
		<ul class="mid-left-sec-3">
			<li><a href="mfeedback.jsp">Manage Feedback</li>
		</ul>
		<ul class="mid-left-sec-4">
			<li><a href="minquiry.jsp">Manage Inquiry</li>
		</ul>
		<ul class="mid-left-sec-5">
			<li><a href="mstoc.jsp">Mange Blood stock</li>
		</ul>
		<!-- comment -->
		<ul class="mid-left-sec-6">
			<li><a href="mbank.jsp">Manage Blood Bank</li>
		</ul>
		<ul class="mid-left-sec-7">
			<li><a href="mpatient.jsp">Manage Thalessemia Patient</li>
		</ul>




		<%
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

		<div class="table">
			<div class="table-r1">
				
			</div>
			<table class="intable" border="3px solid black" padding="10px">
				<tr>
					<th>id</th>
					<th>firstname</th>
					<th>lastname</th>
					<th>mailid</th>
					<th>date</th>
					<th>country</th>
					<th>edit</th>
					<th>delete</th>

				</tr>
				</div>
				<%
				try {
					connection = DriverManager.getConnection(connectionUrl + database, userid, password);
					statement = connection.createStatement();
					String sql = "select * from dfeedback";
					resultSet = statement.executeQuery(sql);
					int i = 0;
					while (resultSet.next()) {
				%>
				<tr>
					<td><%=resultSet.getInt("id")%></td>
					<td><%=resultSet.getString("firstname")%></td>
					<td><%=resultSet.getString("lastname")%></td>
					<td><%=resultSet.getString("mailid")%></td>
					<td><%=resultSet.getString("country")%></td>
					<td><%=resultSet.getString("subject")%></td>
					<td><a
						href="editfeedback.jsp?id=<%=resultSet.getString("id")%>"><button
								type="button" class="delete">edit</button></a></td>
					<td><a
						href="deletefeedback.jsp?id=<%=resultSet.getString("id")%>"><button
								type="button" class="delete">Delete</button></a></td>
				</tr>
				<%
				i++;
				}
				connection.close();
				} catch (Exception e) {
				e.printStackTrace();
				}
				%>
			</table>
		</div>
	</div>


	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js">
		
	</script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	<script type="text/javascript">
		var status = document.getElementById("status").value;
		if (status == "success") {
			swal("Congrats", "entry deleted Successfully", "success");
		}
	</script>
</body>
</html>
