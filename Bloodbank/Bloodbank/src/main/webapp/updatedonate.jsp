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
<title>UPDATE DONOR</title>
</head>
<body>
	<%!String driverName = "com.mysql.jdbc.Driver";%>
	<%!String url = "jdbc:mysql://localhost:3306/bloodbank";%>
	<%!String user = "root";%>
	<%!String psw = "Chintan@123";%>
	<%
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	String dob = request.getParameter("dob");
	String mno = request.getParameter("mno");
	String address = request.getParameter("address");
	String tdn = request.getParameter("tdn");

	if (id != null) {
		Connection con = null;
		PreparedStatement pst = null;
		RequestDispatcher dispatcher = null;

		int personID = Integer.parseInt(id);
		try {
			Class.forName(driverName);
			con = DriverManager.getConnection(url, user, psw);
			String sql = "Update  donateblood set id=?,name=?,gender=?,dob=?,mno=?,address=?,tdn=? where id="
			+ id;
			pst = con.prepareStatement(sql);
			pst.setString(1, id);
			pst.setString(2, name);
			pst.setString(3, gender);
			pst.setString(4, dob);
			pst.setString(5, mno);
			pst.setString(6, address);
			pst.setString(7, tdn);

			int i = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("mdonor.jsp");
			if (i > 0) {
		request.setAttribute("status", "success");
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
