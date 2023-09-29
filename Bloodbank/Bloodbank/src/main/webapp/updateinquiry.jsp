<%-- 
    Document   : updateinquiry
    Created on : Mar 28, 2023, 8:41:00 PM
    Author     : CHINTAN
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>UPADTE INQUIRY</title>
    </head>
    <body>
       <%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/bloodbank";%>
<%!String user = "root";%>
<%!String psw = "Chintan@123";%>
<%
String id = request.getParameter("id");
String firstname=request.getParameter("firstname");
String lastname=request.getParameter("lastname");
String mailid=request.getParameter("mailid");
String country=request.getParameter("country");
String subject=request.getParameter("subject");
if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
RequestDispatcher dispatcher=null;

int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update dinquiry set id=?,firstname=?,lastname=?,mailid=?,country=?,subject=? where id="+id;
ps = con.prepareStatement(sql);
ps.setString(1,id);
ps.setString(2, firstname);
ps.setString(3, lastname);
ps.setString(4, mailid);
ps.setString(5, country);
ps.setString(6, subject);

int i = ps.executeUpdate();
dispatcher = request.getRequestDispatcher("editinquiry.jsp");
			if(i >0)
			{
				request.setAttribute("status","success");
			}
			else
			{
				request.setAttribute("status","failed");

			}
			dispatcher.forward(request, response);
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>
    </body>
</html>
