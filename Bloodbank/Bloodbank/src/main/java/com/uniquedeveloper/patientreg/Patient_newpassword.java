package com.uniquedeveloper.patientreg;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class NewPassword
 */
@WebServlet("/newpassword")
public class Patient_newpassword extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		String newpassword = request.getParameter("Password");
		String confpassword = request.getParameter("confpassword");
		RequestDispatcher dispatcher = null;
		

			try {
				if (newpassword != null && confpassword != null && newpassword.equals(confpassword)) {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank?useSSL=false","root",
						"Chintan@123");
				PreparedStatement pst = con.prepareStatement("UPDATE patient_reg SET password = ?, confirm_password = ? WHERE email = ?");
				pst.setString(1, newpassword);
				pst.setString(2, confpassword);
				pst.setString(3, (String) session.getAttribute("email"));

				int rowCount = pst.executeUpdate();
				if (rowCount > 0) {
					request.setAttribute("status", "resetsuccess");
					dispatcher = request.getRequestDispatcher("patient_login.jsp");
				} else {
					request.setAttribute("status", "resetfailed");
					dispatcher = request.getRequestDispatcher("patient_login.jsp");
				}
				dispatcher.forward(request, response);
				}
				else
				{
					request.setAttribute("status", "matchpass");
					dispatcher = request.getRequestDispatcher("patient_newpassword.jsp");
				}
				dispatcher.forward(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}	
	}
}
