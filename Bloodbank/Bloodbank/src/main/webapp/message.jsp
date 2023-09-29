<%-- 
    Document   : message
    Created on : Apr 6, 2023, 9:58:45 AM
    Author     : JENISH,CHINTAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>STATUS</title>
    </head>
    <style>
    .button-42 {
  background-color: initial;
  background-image: linear-gradient(-180deg, #FF7E31, #E62C03);
  border-radius: 6px;
  box-shadow: rgba(0, 0, 0, 0.1) 0 2px 4px;
  color: #FFFFFF;
  cursor: pointer;
  display: inline-block;
  font-family: Inter,-apple-system,system-ui,Roboto,"Helvetica Neue",Arial,sans-serif;
  height: 40px;
  line-height: 40px;
  outline: 0;
  overflow: hidden;
  padding: 0 20px;
  pointer-events: auto;
  position: relative;
  text-align: center;
  touch-action: manipulation;
  user-select: none;
  -webkit-user-select: none;
  vertical-align: top;
  white-space: nowrap;
  width: 20%;
  z-index: 9;
  border: 0;
  transition: box-shadow .2s;
}

.button-42:hover {
  box-shadow: rgba(253, 76, 0, 0.5) 0 3px 8px;
}
</style>
<style>
body {
	background-position: center;
	background-color: #eee;
	background-repeat: no-repeat;
	background-size: cover;
	color: #505050;
	font-family: "Rubik", Helvetica, Arial, sans-serif;
	font-size: 14px;
	font-weight: normal;
	line-height: 1.5;
	text-transform: none
}

.forgot {
	background-color: #fff;
	padding: 12px;
	border: 1px solid #dfdfdf
}

.padding-bottom-3x {
	padding-bottom: 72px !important
}

.card-footer {
	background-color: #fff
}

.btn {
	font-size: 13px
}

.form-control:focus {
	color: #495057;
	background-color: #fff;
	border-color: #76b7e9;
	outline: 0;
	box-shadow: 0 0 0 0px #28a745
}
.newsection{
  width:100%;
  height:80px;
  background-color:#C41E3A;
  color:#FFFFFF;
  font-weight:bold;
  font-size:40px;
  padding-top:10px;
  padding-left:50px;
}
.scondsection{
width:100%;
height:10px;
background-color:#FFFFFI;

}
</style>
</head>

<body oncontextmenu='return false' class='snippet-body'>
<section class="scondsection"></section>
<section class="newsection" style="font-family: Georgia, serif;">Red Cross Blood Service
</section>
<section class="secondsection">
</section>
<br>
<br>
<br>
<br>
<br>
<br>
<br><br>
<br>
<br>
<br>
       <center>
  <div class="alert alert-success">
      <strong><%=request.getAttribute("Message")%></strong>
      <br>
      <br>
      
             <a href="patientblood.jsp"><button class="button-42">RETURN</button></a>
  </div>
 </center>
    </body>
</html>
