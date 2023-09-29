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
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String address = request.getParameter("address");
	String state = request.getParameter("state");
	String city = request.getParameter("city");
	String pincode = request.getParameter("pincode");
	String gender = request.getParameter("gender");
	String age = request.getParameter("age");
	String blood_group = request.getParameter("blood_group");
	String mobile_no = request.getParameter("mobile_no");
	String password = request.getParameter("password");
	String retype_pass = request.getParameter("retype_pass");


	if (id != null) {
		Connection con = null;
		PreparedStatement pst = null;
		RequestDispatcher dispatcher = null;

		int personID = Integer.parseInt(id);
		try {
			Class.forName(driverName);
			con = DriverManager.getConnection(url, user, psw);
			String sql = "update  donor_reg set name=?,address=?,city=?,state=?,pincode=?,gender=?,age=?,blood_group=?,mobile_no=?,password=?,retype_pass=? where id=" + 2;
			pst = con.prepareStatement(sql);
			pst.setString(1, name);
			pst.setString(2, address);
			pst.setString(3, city);
			pst.setString(4, state);
			pst.setString(5, pincode);
			pst.setString(6, gender);
			pst.setString(7, age);
			pst.setString(8, blood_group);
			pst.setString(9, mobile_no);
			pst.setString(10, password);
			pst.setString(11, retype_pass);

			int i = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("dprofile.jsp");
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
