package com.uniquedeveloper.registration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		HttpSession session = request.getSession();
		RequestDispatcher dispatcher=null;
		
		if(email==null || email.equals(""))
		{
			request.setAttribute("status","invalidmobileno");
			dispatcher = request.getRequestDispatcher("donor_login.jsp");
			dispatcher.forward(request,response);
		}
		if(password==null || password.equals(""))
		{
			request.setAttribute("status","invalidpassword");
			dispatcher = request.getRequestDispatcher("donor_login.jsp");
			dispatcher.forward(request,response);
		}
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank?useSSl=false","root","Chintan@123");
		PreparedStatement pst = con.prepareStatement("select * from donor_reg where email = ? and password = ?");
		pst.setString(1, email);
		pst.setString(2, password);
		
		ResultSet rs = pst.executeQuery();
		if(rs.next())
		{
		   session.setAttribute("name",rs.getString("name"));
		   dispatcher = request.getRequestDispatcher("donordashboard.jsp");
		}
		else
		{
			request.setAttribute("status","failed");
			dispatcher = request.getRequestDispatcher("donor_login.jsp");
		}
		dispatcher.forward(request,response);
		}
	catch(Exception e){
	e.printStackTrace();
}
	
	}
	
}
