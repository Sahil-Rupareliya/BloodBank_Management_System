
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DELETE BANKS</title>
    </head>
    <body>
         <input type="hidden" id="status" value="<%= request.getAttribute("status")%>">
       
       
       
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
                String sql = "DELETE FROM addbb WHERE id="+id;
                ps = con.prepareStatement(sql);
                int i = ps.executeUpdate();
              dispatcher = request.getRequestDispatcher("mbank.jsp");
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
             catch(SQLException sqe)
             {
                request.setAttribute("error", sqe);
                 out.println(sqe);
             }
        }
        %>  
    </body>
</html>
