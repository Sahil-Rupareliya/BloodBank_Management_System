<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
.frame
{
    width:100%;
    height:900px;
   background-color: #fff;
     border: 1px solid #ccc;
  box-sizing: border-box;
   
}
.sub3
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
.h1
{
    margin-left: 25px;
}

.sub1{
     width: 200px;
    height: 100px;
   background-color:whitesmoke;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0,0,0,0.3);
    margin-left: 140px;
    padding:10px;
    margin-top: 20px;
    display: inline-block;
}

.sub2{
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

.sub5{
     width: 200px;
    height: 100px;
    
    background-color:whitesmoke;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0,0,0,0.3);
    margin-left: 140px;
    padding:10px;
    margin-top: 20px;
    
   
}
.on
{
    margin-left: 25px;
}

.sub4{
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


        

 
 .feedback
{
    width:100%;
    height:450px;
   background-color:green;
     border: 1px solid #ccc;
  box-sizing: border-box;
    
}
.feed{
     width: 250px;
    height: 250px;
   background-color:whitesmoke;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0,0,0,0.3);
    margin-left: 300px;
    padding:10px;
    margin-top: 20px;
    display: inline-block;
}
.feed1{
     width: 250px;
    height: 250px;
   background-color:whitesmoke;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0,0,0,0.3);
    margin-left: 50px;
    padding:10px;
    margin-top: 20px;
    display: inline-block;
}
.feed2{
     width: 250px;
    height: 250px;
   background-color:whitesmoke;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0,0,0,0.3);
    margin-left: 50px;
    padding:10px;
    margin-top: 20px;
    display: inline-block;
}
 


  .container
            {
                position: relative;
                display:flex;
                justify-content: center;
                 align-items: center;
                 flex-wrap: wrap;
                 padding: 50px 0;
                 gap: 40px 60px;

            }
            .container .drop
            {
                position: relative;
                width: 350px;
                height:350px;
             
               
                box-shadow: inset 20px 20px 20px rgba(0,0,0,0.05),25px 35px 20px rgba(0,0,0,0.05),25px 30px 30px rgba(0,0,0,0.05),inset -20px -20px 25px rgba(255,255,255,0.9);
                transition: 0.5s ease-in-out;
              display: flex;
              justify-content: center;
              align-items: center;
            }
            .container .drop:nth-child(1)
            {
                border-radius: 57% 43% 43% 57%/43% 43% 57% 57%;
            }
             .container .drop:nth-child(2)
            {
                border-radius: 57% 43% 43% 57%/43% 43% 57% 57%;
            }
             .container .drop:nth-child(3)
            {
                border-radius: 57% 43% 43% 57%/43% 43% 57% 57%;
            }
            .container .drop::hover
            {
                 border-radius: 50%;
            }
            .container .drop::before
            {
                content: '';
                position: absolute;
                width: 35px;
                height: 35px;
                top:90px;
                left:50px;
                background:red;
                border-radius: 50%;
                opacity: 0.6;
            }
            .container .drop::after
            {
                content: '';
                position: absolute;
                width: 15px;
                height: 15px;
                top:120px;
                left:90px;
                background:red;
                border-radius: 50%;
                opacity: 0.6;
            }
            .container .drop .content
            {
                position: relative;
                 display:flex;
                justify-content: center;
                 align-items: center;
                 flex-direction: column;
                 text-align: center;
                 padding: 30px;
                 gap: 5px;
            }
            .container .drop .content h1
            {
                 position: relative;
                 width: 80px;
                 height: 80px;
                 background: #eff0f4;
                 border-radius: 50%;
                 display: flex;
                 justify-content: center;
                 align-items: center;
                 font-size: 2em;
                 color: var(--clr);
                  box-shadow: inset 2px 5px 10px rgba(0,0,0,0.1),inset -2px -5px 10px rgba(255,255,255,1),15px 15px 10px rgba(0,0,0,0.05), 15px 10px 15px rgba(0,0,0,0.025);
                top:-60px;
            }
            .container .drop .content .name{
                 position: relative;
                 padding: 10px 25px;
                   background:  var(--clr);
                   text-decoration: none;
                   color: #fff;
                   border-radius: 25px;
                   font-weight: 500;
                   text-shadow: 0 2px 2px rgba(0,0,0.0.25);
                   opacity: 0.75;
                   transition: 0.5s;
                 top:60px;
                 left:17px;
            }
             
 
 </style>
</head>
<body>
 <%
try
{
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank","root","Chintan@123");     
    Statement st=con.createStatement();
    String strQuery = "SELECT * FROM dfeedback where id= 11";
    ResultSet rs = st.executeQuery(strQuery);
    String Countrow="";
      while(rs.next()){
      Countrow = rs.getString(1);
      %>
       <div class="container">
            <div class="drop" style="--clr:#ff0f5b;">
                <div class="content">
                    <h1>01</h1>
                    <p><%=rs.getString("subject")%></p>
                     <p class="name"><%=rs.getString("firstname")%></p>
                </div>
            </div>
               
        <%
      //out.println("Total b- Row :" +Countrow);
       } 

        String strQuery1 = "SELECT * FROM dfeedback where id=12";
    ResultSet rs1 = st.executeQuery(strQuery1);
    String Countrow1="";
      while(rs1.next()){
      Countrow1 = rs1.getString(1);
      %>
     
           <div class="drop" style="--clr:#be01fe;">
                <div class="content">
                    <h1>02</h1>
                    <p><%=rs1.getString("subject")%></p>
                    <p class="name"><%=rs1.getString("firstname")%></p>
                </div>
            </div>
               
        <%
      //out.println("Total b- Row :" +Countrow);
       } 
 String strQuery2 = "SELECT * FROM dfeedback where id=14";
    ResultSet rs2 = st.executeQuery(strQuery2);
    String Countrow2="";
      while(rs2.next()){
      Countrow2 = rs2.getString(1);
      %>
      
            <div class="drop" style="--clr:#01b4ff;">
                <div class="content">
                    <h1>03</h1>
                    <p><%=rs2.getString("subject")%></p>
                    <p class="name"><%=rs2.getString("firstname")%></p>
                </div>
            </div>
       </div>
        <%
      //out.println("Total b- Row :" +Countrow);
       } 


  
}
catch (Exception e){
    e.printStackTrace();
  }
  %>
<button class="button-42" ><a style="color:white;" href="index.html">Return</a></button>
</body>
</html>