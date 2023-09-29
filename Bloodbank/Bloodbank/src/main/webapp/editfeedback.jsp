<%-- 
    Document   : editfeedback
    Created on : Mar 25, 2023, 6:08:19 PM
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
        <title>EDIT FEEDBACK</title>
          
    </head>
    <body>
         <input type="hidden" id="status" value="<%= request.getAttribute("status")%>">
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
                String sql ="select * from dfeedback where id="+id;
                resultSet = statement.executeQuery(sql);
                while(resultSet.next()){
                %>
                  <form method="post" action="updatefeed.jsp">
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
