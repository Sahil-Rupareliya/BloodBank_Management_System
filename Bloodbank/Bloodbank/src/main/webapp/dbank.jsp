

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
        <title>BLOOD BANKS</title>
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
   
     <link rel="stylesheet" type="text/css" href="css/admin.css" />
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
        margin-top:-1420px;
        margin-left:300px;
	
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
	width: 1050px;
	margin-top: 30px;
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
        <div class="main">
        <div class="top">
            <h2>Blood Bank Management System</h2>
            
       </div>
   
             <div class="mid-left">
                 <ul class="mid-left-sec-1">
                     <li><a href="donordashboard.jsp">Home</a></li>
                 </ul>
                  <ul class="mid-left-sec-2">
                     <li><a href="mprofile.jsp">Manage profile</a></li>
                  </ul><!-- comment -->
                   <ul class="mid-left-sec-3">
                     <li><a href="dfeedback.jsp">Give Feedback</a></li>
                 </ul>
                   <ul class="mid-left-sec-4">
                     <li><a href="dinquiry.jsp">Fill Inquiry</a></li>
                 </ul>
                   <ul class="mid-left-sec-5">
                     <li><a href="dcamp.jsp">View Blood Camp </a></li>
                   </ul><!-- comment -->
                    <ul class="mid-left-sec-6">
                        <li><a href="dbank.jsp">Search near Blood Bank</a></li>
                 </ul>
                    <ul class="mid-left-sec-7">
                        <li><a href="dblood.jsp">Donate Blood</a></li>
                 </ul>
             </div>
            
            
            
          
            
    </div>
        
        <h2 class="heading" align="center">Search Blood Camps By selecting
		district:</h2>
	<div class="container">

		<form action="dbank.jsp" method="post" class="search">

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
					ResultSet rs = stm.executeQuery("select distinct id,state,city,name,email,contactno,faxno,licence,pname,pcode from addbb ");
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

				} 
                               catch (Exception e) {
				e.printStackTrace();
				}
				%>
				
		</form>
		<br>
	</div>
	<br>

	<table>
		<tr>

			<th>id</th>
			<th>state</th>
			<th>city</th>
			<th>name</th>
			<th>email</th>
			<th>contactno</th>
            <th>faxno</th>
			<th>licence</th>
			<th>address</th>
			<th>pcode</th>
		</tr>



		<%
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank?useSSl=false", "root",
			"Chintan@123");
			Statement stmt = con.createStatement();
			ResultSet resultset = stmt
			.executeQuery("select id,state,city,name,email,contactno,faxno,licence,address,pcode from addbb where city='"
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
            <td><%=resultset.getString("faxno")%></td>
			<td><%=resultset.getString("licence")%></td>
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
             </div>
                <script src="js/blood_bank_address.js"></script>
    </body>
</html>
