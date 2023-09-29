<%-- 
    Document   : updatefeed.jsp
    Created on : Mar 26, 2023, 9:38:05 AM
    Author     : CHINTAN
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>UPDATE DATA FEEDBACK</title>
    </head>
    <body>
       <%
           /*String id=request.getParameter("id");
        String firstname=request.getParameter("firstname");
        String lastname=request.getParameter("lastname");
        String mailid=request.getParameter("mailid");
        String country=request.getParameter("country");
        String subject=request.getParameter("subject");
        
        RequestDispatcher dispatcher=null;
		Connection con=null;
                
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
	    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank?useSSl=false","root","#jenish2002");
	    PreparedStatement pst = con.prepareStatement("Update dfeedback set  firstname=?, lastname=?,mailid=?,country=?,subject=? where id=?" );
	   
           pst.setString(1,firstname);
            pst.setString(2,lastname);
            pst.setString(3,mailid);
            pst.setString(4,country);
            pst.setString(5,subject);
            // pst.setString(1,firstname);
           pst.setString(6,id);
            int rowCount =pst.executeUpdate();
			
			dispatcher = request.getRequestDispatcher("editfeedback.jsp");
			if(rowCount >0)
			{
				request.setAttribute("status","success");
			}
			else
			{
				request.setAttribute("status","failed");

			}
			dispatcher.forward(request, response);
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        finally
	{
	    try {
			con.close();
		}
		catch(Exception e)
		{
       		    e.printStackTrace();
       		}
	}*/
      %>
       
       
       
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
String sql="Update dfeedback set id=?,firstname=?,lastname=?,mailid=?,country=?,subject=? where id="+id;
ps = con.prepareStatement(sql);
ps.setString(1,id);
ps.setString(2, firstname);
ps.setString(3, lastname);
ps.setString(4, mailid);
ps.setString(5, country);
ps.setString(6, subject);

int i = ps.executeUpdate();
 //int rowCount =ps.executeUpdate();
			
			dispatcher = request.getRequestDispatcher("editfeedback.jsp");
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
