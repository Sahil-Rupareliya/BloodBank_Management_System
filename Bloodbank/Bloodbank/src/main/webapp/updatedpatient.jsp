<%-- 
    Document   : updatepatient
    Created on : Mar 29, 2023, 8:56:28 PM
    Author     : JENISH,CHINTAN
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>UPDATE PROFILE</title>
</head>
<body>
	<%!String driverName = "com.mysql.jdbc.Driver";%>
	<%!String url = "jdbc:mysql://localhost:3306/bloodbank";%>
	<%!String user = "root";%>
	<%!String psw = "Chintan@123";%>
	<%
	String patient_id = request.getParameter("patient_id");
	String name = request.getParameter("name");
	String dob = request.getParameter("dob");
	String gender = request.getParameter("gender");
	String email = request.getParameter("email");
	String state = request.getParameter("state");
	String city = request.getParameter("city");
	String pincode = request.getParameter("pincode");
	String nearbloodbank = request.getParameter("nearestbloodbank");
	String bg = request.getParameter("bloodgroup");
	String rh = request.getParameter("rh");
	String mobileno = request.getParameter("mobileno");
	String password = request.getParameter("password");
	String confirmpassword = request.getParameter("confirm_password");
	if (patient_id != null) {
		Connection con = null;
		PreparedStatement pst = null;
		RequestDispatcher dispatcher = null;

		int personID = Integer.parseInt(patient_id);
		try {
			Class.forName(driverName);
			con = DriverManager.getConnection(url, user, psw);
			String sql = "Update patient_reg set patient_id=?,name=?,dob=?,gender=?,email=?,state=?,city=?,pincode=?,nearestbloodbank=?,bloodgroup=?,rh=?,mobileno=?,password=?,confirm_password=? where patient_id="
			+ patient_id;
			pst = con.prepareStatement(sql);
			pst.setString(1, patient_id);
			pst.setString(2, name);
			pst.setString(3, dob);
			pst.setString(4, gender);
			pst.setString(5, email);
			pst.setString(6, state);
			pst.setString(7, city);
			pst.setString(8, pincode);
			pst.setString(9, nearbloodbank);
			pst.setString(10, bg);
			pst.setString(11, rh);
			pst.setString(12, mobileno);
			pst.setString(13, password);
			pst.setString(14, confirmpassword);

			int i = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("patientprofile.jsp");
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
