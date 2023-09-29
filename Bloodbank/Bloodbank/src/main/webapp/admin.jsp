<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>WELCOME ADMIN</title>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css" integrity="sha512-1PKOgIY59xJ8Co8+NE6FZ+LOAZKjy+KY8iq0G4B3CyeY6wYHN3yt9PW0XpSriVlkMXe40PTKnXrLnZ9+fkDaog==" crossorigin="anonymous" />
 
<style>
form {
  width: 800px;
  height:1350px;
   align-items: center;
  justify-content: center;
  border-radius: 5px;
   padding: 20px;
  margin-left: 400px;
  margin-top: -220px;
   border-radius: 5px;
  box-shadow: 0 0 10px rgba(0,0,0,0.3);
  background-color: #fff;
  color:black;
}

.frame
{
    width:1150px;
    height:500px;
   background-color: #fff;
  box-sizing: border-box;
    margin-top:-400px;
    margin-left:340px;
}
.bg
{
    width: 200px;
    height: 100px;
    
 background-color:whitesmoke;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0,0,0,0.3);
    margin-left: 50px;
    padding:10px;
    margin-top: 30px;
    display: inline-block;
}
.img
{
    width: 100px;
    height: 100px;
   margin-left: 37px;
   margin-top: -70px;
}
.h1
{
    margin-left: 25px;
}

.bg1{
     width: 200px;
    height: 100px;
   background-color:whitesmoke;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0,0,0,0.3);
    margin-left: 50px;
    padding:10px;
    margin-top: 20px;
    display: inline-block;
}
.bp
{
    margin-left: 25px;
}
.img1
{
    width: 100px;
    height: 100px;
   margin-left: 37px;
   margin-top: -70px;
}
.bg2{
     width: 200px;
    height: 100px;
    
    background-color:whitesmoke;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0,0,0,0.3);
    margin-left: 50px;
    padding:10px;
    margin-top: 20px;
    display: inline-block;
}
.op
{
    margin-left: 25px;
}
.img2
{
    width: 100px;
    height: 100px;
   margin-left: 37px;
   margin-top: -70px;
}
.bg3{
     width: 200px;
    height: 100px;
    
    background-color:whitesmoke;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0,0,0,0.3);
    margin-left: 50px;
    padding:10px;
    margin-top: 20px;
    display: inline-block;
}
.abp
{
    margin-left: 25px;
}
.img3
{
    width: 100px;
    height: 100px;
   margin-left: 37px;
   margin-top: -70px;
}
.bg4{
     width: 200px;
    height: 100px;
    
    background-color:whitesmoke;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0,0,0,0.3);
    margin-left: 50px;
    padding:10px;
    margin-top: 20px;
    display: inline-block;
}
.an
{
    margin-left: 25px;
}
.img4
{
    width: 100px;
    height: 100px;
   margin-left: 37px;
   margin-top: -70px;
}
.bg5{
     width: 200px;
    height: 100px;
    
    background-color:whitesmoke;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0,0,0,0.3);
    margin-left: 50px;
    padding:10px;
    margin-top: 20px;
    display: inline-block;
   
}
.bn
{
    margin-left: 25px;
}
.img5
{
    width: 100px;
    height: 100px;
   margin-left: 37px;
   margin-top: -70px;
}
.bg6{
     width: 200px;
    height: 100px;
    
    background-color:whitesmoke;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0,0,0,0.3);
    margin-left: 50px;
    padding:10px;
    margin-top: 20px;
    display: inline-block;
   
}
.on
{
    margin-left: 25px;
}
.img6
{
    width: 100px;
    height: 100px;
   margin-left: 37px;
   margin-top: -70px;
}
.bg7{
     width: 200px;
    height: 100px;
    
    background-color:whitesmoke;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0,0,0,0.3);
    margin-left: 50px;
    padding:10px;
    margin-top: 20px;
    display: inline-block;
}
.abn
{
    margin-left: 25px;
}
.img7
{
    width: 100px;
    height: 100px;
   margin-left: 37px;
   margin-top: -70px;
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
	margin-top: 0px;
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
			<li class="nav__item"><a class="nav__link active"  href="admin.jsp">Home</li>
		</ul>
		<ul class="mid-left-sec-2 nav" style="position:sticky; top:250px;">
			<li class="nav__item"><a class="nav__link "  href="mdonor.jsp">Manage Donor</li>
		</ul>
		<!-- comment -->

		<ul class="mid-left-sec-4 nav" style="position:sticky; top:300px;">
			<li class="nav__item" ><a class="nav__link"  href="minquiry.jsp">Manage Inquiry</li>
		</ul>
		
		<!-- comment -->
		<ul class="mid-left-sec-6 nav" style="position:sticky; top:350px;">
			<li class="nav__item"  ><a class="nav__link"  href="mbank.jsp">Manage Blood Bank</li>
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
                 <ul class="mid-left-sec-10 nav" style="position:sticky; top:610px;">
			<li><a class="nav__link" href="mpatients.jsp">Manage patient request </li>
		</ul>
		<a href=""></a>
		
             </div>
    </div>
    <%
try
{
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank","root","Chintan@123");     
    Statement st=con.createStatement();
    String strQuery = "SELECT COUNT(*) FROM donor_reg where blood_group='b+'";
    ResultSet rs = st.executeQuery(strQuery);
    
   
    String Countrow="";
      while(rs.next()){
      Countrow = rs.getString(1);
      %>
      <div class="frame">
         <h2 class="h2"> WELCOME BACK SATYADEV </h2>
         <div class="bg1">
                 <h1 class="bp"> <%=Countrow%>&nbsp;&nbsp; B+ </h1>
                  <div class="img1">
                    
                    <img src="photos/blood.png" alt=""  />
                 </div>
           </div>
        <%
      //out.println("Total b- Row :" +Countrow);
       } 
       
     String strQuery1 = "SELECT COUNT(*) FROM donor_reg where blood_group='b-'";
     ResultSet rs1 = st.executeQuery(strQuery1);
     String Countrow1="";
      while(rs1.next())
      {
      Countrow1 = rs1.getString(1);
        %>
        <div class="bg5">
                <h1 class="bn"> <%=Countrow1%>&nbsp;&nbsp;B-</h1>
                 <div class="img5">
                   
  <img src="photos/blood.png" alt=""  />
                  </div>
          </div>
        <%
      } 


       String strQuery2 = "SELECT COUNT(*) FROM donor_reg where blood_group='a+'";
     ResultSet rs2 = st.executeQuery(strQuery2);
     String Countrow2="";
      while(rs2.next())
      {
      Countrow2 = rs2.getString(1);
        %>
         <div class="bg">
                <h1 class="h1"><%=Countrow2%>&nbsp;&nbsp;  A+</h1>
                <div class="img">
                    
                      <img src="photos/blood.png" alt=""  />
                 </div>
           </div>
        <%
      } 

       String strQuery3 = "SELECT COUNT(*) FROM donor_reg where blood_group='a-'";
     ResultSet rs3 = st.executeQuery(strQuery3);
     String Countrow3="";
      while(rs3.next())
      {
      Countrow3 = rs3.getString(1);
        %>
        <div class="bg4">
               <h1 class="an"><%=Countrow3%>&nbsp;&nbsp;A-</h1>
                 <div class="img4">
               
                     <img src="photos/blood.png" alt=""  />
                 </div>
            </div>
        <%
      } 
      
      
      String strQuery4 = "SELECT COUNT(*) FROM donor_reg where blood_group='ab+'";
     ResultSet rs4 = st.executeQuery(strQuery4);
     String Countrow4="";
      while(rs4.next())
      {
      Countrow4 = rs4.getString(1);
        %>
        <div class="bg3">
                 <h1 class="abp"><%=Countrow4%>&nbsp;&nbsp;AB+</h1>
                  <div class="img3">
                    
                      <img src="photos/blood.png" alt=""  />
                 </div>
           </div>
        <%
      } 

     


       String strQuery5 = "SELECT COUNT(*) FROM donor_reg where blood_group='ab-'";
     ResultSet rs5 = st.executeQuery(strQuery5);
     String Countrow5="";
      while(rs5.next())
      {
      Countrow5 = rs5.getString(1);
        %>
        <div class="bg7">
                <h1 class="abn"><%=Countrow5%>&nbsp;&nbsp;AB-</h1>
                 <div class="img7">
                   
                     <img src="photos/blood.png" alt=""  />
                </div>
          </div>
        <%
      } 

       String strQuery6 = "SELECT COUNT(*) FROM donor_reg where blood_group='o+'";
     ResultSet rs6 = st.executeQuery(strQuery6);
     String Countrow6="";
      while(rs6.next())
      {
      Countrow6 = rs6.getString(1);
        %>
        <div class="bg2">
                 <h1 class="op"><%=Countrow6%>&nbsp;&nbsp;O+</h1>
                  <div class="img2">
                    
                      <img src="photos/blood.png" alt=""  />
                 </div>
           </div>
        <%
      } 

      String strQuery7 = "SELECT COUNT(*) FROM donor_reg where blood_group='o-'";
      ResultSet rs7 = st.executeQuery(strQuery7);
      String Countrow7="";
       while(rs7.next())
       {
       Countrow7 = rs7.getString(1);
         %>
         <div class="bg6">
                <h1 class="on"><%=Countrow7%>&nbsp;&nbsp;O-</h1>
                 <div class="img6">
                   
                     <img src="photos/blood.png" alt=""  />
                </div>
          </div>
      </div>
         <%
       } 


    }
catch (Exception e){
    e.printStackTrace();
  }
  %>
  
  
    </body>
</html>
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
