<%-- 
    Document   : updatepatient
    Created on : Mar 29, 2023, 8:56:28 PM
    Author     : JENISH
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
<title>UPADTE PATIENT</title>
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
	String pincode = request.getParameter("pincode");
	String nearbloodbank = request.getParameter("nearest_blood_bank");

	String mobileno = request.getParameter("mobile_no");

	if (patient_id != null) {
		Connection con = null;
		PreparedStatement pst = null;
		RequestDispatcher dispatcher = null;

		int personID = Integer.parseInt(patient_id);
		try {
			Class.forName(driverName);
			con = DriverManager.getConnection(url, user, psw);
			String sql = "Update patient_reg set patient_id=?,name=?,dob=?,pincode=?,nearestbloodbank=?,mobileno=?where patient_id="
			+ patient_id;
			pst = con.prepareStatement(sql);
			pst.setString(1, patient_id);
			pst.setString(2, name);
			pst.setString(3, dob);
			pst.setString(4, pincode);
			pst.setString(5, nearbloodbank);
			pst.setString(6, mobileno);

			int i = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("mpatient.jsp");
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
