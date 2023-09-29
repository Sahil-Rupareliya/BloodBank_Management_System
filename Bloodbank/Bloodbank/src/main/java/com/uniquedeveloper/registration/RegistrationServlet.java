package com.uniquedeveloper.registration;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/register")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//	
		String name=request.getParameter("name");
		String address=request.getParameter("address");
		String city=request.getParameter("city");
		String state=request.getParameter("state");
		String pincode=request.getParameter("pincode");
		String gender=request.getParameter("gender");
		String age=request.getParameter("age");
		String bloodgroup=request.getParameter("bloodgroup");
		String email=request.getParameter("email");
		String mobileno=request.getParameter("mobileno");
		String password=request.getParameter("password");
		String retypepassword=request.getParameter("retypepassword");
		RequestDispatcher dispatcher=null;
		Connection con=null;
	
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank?useSSl=false","root","Chintan@123");
			PreparedStatement pst = con.prepareStatement("insert into donor_reg(name,address,city,state,pincode,gender,age,blood_group,email,mobile_no,password,retype_pass) values(?,?,?,?,?,?,?,?,?,?,?,?)" );
			pst.setString(1,name);
			pst.setString(2,address);
			pst.setString(3,city);
			pst.setString(4,state);
			pst.setString(5,pincode);
			pst.setString(6,gender);
			pst.setString(7,age);
			pst.setString(8,bloodgroup);
			pst.setString(9,email);
			pst.setString(10,mobileno);
			pst.setString(11,password);
			pst.setString(12,retypepassword);
			int rowCount =pst.executeUpdate();
			
			dispatcher = request.getRequestDispatcher("donor_register.jsp");
			if(rowCount >0)
			{
				request.setAttribute("status","success");
			}
			else
			{
				request.setAttribute("status","failed");

			}
			dispatcher.forward(request, response);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		finally
		{
			try {
			con.close();
			}
			catch(Exception e)
			{
       		e.printStackTrace();
       		}
		}
	}

}
