<%-- 
    Document   : updatebank
    Created on : Mar 29, 2023, 9:21:25 PM
    Author     : CHINTAN
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>UPDATE BANK</title>
</head>
<body>
	<%!String driverName = "com.mysql.jdbc.Driver";%>
	<%!String url = "jdbc:mysql://localhost:3306/bloodbank";%>
	<%!String user = "root";%>
	<%!String psw = "Chintan@123";%>
	<%
	String campid = request.getParameter("campid");
	String o_name = request.getParameter("o_name");
	String o_contactno = request.getParameter("o_contactno");
	String camp_name = request.getParameter("camp_name");
	String camp_date = request.getParameter("camp_date");

	if (campid != null) {
		Connection con = null;
		PreparedStatement pst = null;
		RequestDispatcher dispatcher = null;

		int personID = Integer.parseInt(campid);
		try {
			Class.forName(driverName);
			con = DriverManager.getConnection(url, user, psw);
			String sql = "Update  vbdcamps set campid=?,o_name=?,o_contactno=?,camp_name=?,camp_date=? where campid=" + campid;
			pst = con.prepareStatement(sql);
			pst.setString(1, campid);
			pst.setString(2, o_name);
			pst.setString(3, o_contactno);
			pst.setString(4, camp_name);
			pst.setString(5, camp_date);

			int i = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("mvbdcamps.jsp");
			if (i > 0) {
		request.setAttribute("status", "success1");
			} else {
		request.setAttribute("status", "failed");

			}
			dispatcher.forward(request, response);
		} catch (SQLException sql) {
			request.setAttribute("error", sql);
			out.println(sql);
		}
	}
	%>
</body>
</html>
