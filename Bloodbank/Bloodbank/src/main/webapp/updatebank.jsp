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
	String contactno = request.getParameter("contactno");
	String address = request.getParameter("address");
	String pcode = request.getParameter("pcode");

	if (id != null) {
		Connection con = null;
		PreparedStatement pst = null;
		RequestDispatcher dispatcher = null;

		int personID = Integer.parseInt(id);
		try {
			Class.forName(driverName);
			con = DriverManager.getConnection(url, user, psw);
			String sql = "Update  addbb set id=?,name=?,contactno=?,address=?,pcode=? where id=" + id;
			pst = con.prepareStatement(sql);
			pst.setString(1, id);
			pst.setString(2, name);
			pst.setString(3, contactno);
			pst.setString(4, address);
			pst.setString(5, pcode);

			int i = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("mbank.jsp");
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
