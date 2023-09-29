<%-- 
    Document   : deleteinquiry
    Created on : Mar 18, 2023, 8:41:34 PM
    Author     : CHINTAN
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DELETE DONOR</title>
    </head>
    <body>
    
      <%! String driverName = "com.mysql.jdbc.Driver";%>
        <%!String url = "jdbc:mysql://localhost:3306/bloodbank";%>
        <%!String user = "root";%>
        <%!String psw = "Chintan@123";%>
        <%
             RequestDispatcher dispatcher=null;
        String id = request.getParameter("id");
        if(id != null)
        {
             Connection con = null;
             PreparedStatement ps = null;
             int ID = Integer.parseInt(id);
             try
             {
                Class.forName(driverName);
                con = DriverManager.getConnection(url,user,psw);
                String sql = "DELETE FROM donateblood WHERE id="+id;
                ps = con.prepareStatement(sql);
                int i = ps.executeUpdate();
              dispatcher = request.getRequestDispatcher("mdonor.jsp");
			if(i >0)
			{
				request.setAttribute("status","success1");
			}
			else
			{
				request.setAttribute("status","failed");

			}
			dispatcher.forward(request, response);
             }
             catch(SQLException sqe)
             {
                request.setAttribute("error", sqe);
                 out.println(sqe);
             }
        }
        %>    
       
       
      
       
       
      
      
    </body>
</html>
