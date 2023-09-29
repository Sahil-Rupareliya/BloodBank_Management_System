<%-- 
    Document   : showfile
    Created on : Apr 6, 2023, 10:03:58 AM
    Author     : JENISH,CHINTAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FILE VIEW</title>
    </head>
    <body>
        <%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<% 
Blob photo = null;
Connection con = null;
byte[ ] imgData = null ;
Statement stmt = null;
ResultSet rs = null;
try {
    String id =request.getParameter("id");
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank","root","Chintan@123");
    stmt = con.createStatement();
       String sql ="select photo from patient where id = "+id;
                rs = stmt.executeQuery(sql);
    //rs = stmt.executeQuery("select photo from users where id = "+id );
    if (rs.next()) {
    photo = rs.getBlob(1);
    imgData = photo.getBytes(1,(int)photo.length());
    } 
    else {
    out.println("Display Blob Example");
    out.println("image not found for given id>");
    return;
    }
    // display the image
    response.setContentType("text");
    OutputStream o = response.getOutputStream();
    o.write(imgData);
    o.flush();
    o.close();
     rs.close();
    stmt.close();
    con.close();
}
catch (Exception e) 
{
        out.println("Unable To Display image");
    out.println("Image Display Error=" + e.getMessage());
    return;
} 


%>
    </body>
</html>
