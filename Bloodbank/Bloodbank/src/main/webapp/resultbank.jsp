<%-- 
    Document   : chat
    Created on : Apr 7, 2023, 3:59:44 PM
    Author     : JENISH
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
        <title>RESULT BLOOD BANK</title>
        <script type='text/javascript'
	src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
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
</head>

<body oncontextmenu='return false' class='snippet-body'>
<section class="scondsection"></section>
<section class="newsection" style="font-family: Georgia, serif;">Red Cross Blood Service
</section>
   
    
       <%
              String id = request.getParameter("id");
              String driver = "com.mysql.jdbc.Driver";
              String connectionUrl = "jdbc:mysql://localhost:3306/";
              String database = "bloodbank";
              String userid = "root";
              String password = "Chintan@123";
              try 
              {
                   Class.forName(driver);
              } 
              catch (ClassNotFoundException e) 
              {
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
                String sql ="select * from addbb where id="+id;
                resultSet = statement.executeQuery(sql);
                if(resultSet.next()){
                %>

  <h1 >Blood bank</h1>
  <p >NAME:-&nbsp; <%=resultSet.getString("name") %></p>
  <p >CONTACTNO:- &nbsp;<%=resultSet.getString("contactno") %></p>
  
  <p >EMAIL:-&nbsp; <%=resultSet.getString("email") %></p>
 
  
  <form method="post" action="resultbank" style="taxt-align:center;">
    <input type="hidden" name="id" value="<%=resultSet.getString("id") %>">
    <input type="submit" name="accept" value="Accept" class="button-42">
    <input type="submit" name="reject" value="Reject" class="button-42">
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