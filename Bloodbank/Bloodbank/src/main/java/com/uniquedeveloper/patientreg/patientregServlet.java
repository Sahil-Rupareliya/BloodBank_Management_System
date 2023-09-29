package com.uniquedeveloper.patientreg;

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
@WebServlet("/patient_register")
public class patientregServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//	
		String name=request.getParameter("name");
		String dob=request.getParameter("dob");
		String gender=request.getParameter("gender");
		String email=request.getParameter("email");
		String state=request.getParameter("state");
		String city=request.getParameter("city");
		String pincode=request.getParameter("pincode");
		String nearbloodbank=request.getParameter("nearest_blood_bank");
		String bg=request.getParameter("blood_group");
		String rh=request.getParameter("rh");
		String mobileno=request.getParameter("mobile_no");
		String password=request.getParameter("password");
		String confirmpassword=request.getParameter("confirm_password");

		RequestDispatcher dispatcher=null;
		Connection con=null;
//		if(name==null || name.equals(""))
//		{
//			request.setAttribute("status","invalidname");
//			dispatcher = request.getRequestDispatcher("donor_register.jsp");
//			dispatcher.forward(request,response);
//		}
//		if(address==null || address.equals(""))
//		{
//			request.setAttribute("status","invalidaddress");
//			dispatcher = request.getRequestDispatcher("donor_register.jsp");
//			dispatcher.forward(request,response);
//		}
//		if(city==null || city.equals(""))
//		{
//			request.setAttribute("status","invalidcity");
//			dispatcher = request.getRequestDispatcher("donor_register.jsp");
//			dispatcher.forward(request,response);
//		}
//		if(state==null || state.equals(""))
//		{
//			request.setAttribute("status","invalidstate");
//			dispatcher = request.getRequestDispatcher("donor_register.jsp");
//			dispatcher.forward(request,response);
//		}
//		if(pincode==null || pincode.equals(""))
//		{
//			request.setAttribute("status","invalidpincode");
//			dispatcher = request.getRequestDispatcher("donor_register.jsp");
//			dispatcher.forward(request,response);
//		}
//		if(gender==null || gender.equals(""))
//		{
//			request.setAttribute("status","invalidgender");
//			dispatcher = request.getRequestDispatcher("donor_register.jsp");
//			dispatcher.forward(request,response);
//		}
//		if(age==null || age.equals(""))
//		{
//			request.setAttribute("status","invalidage");
//			dispatcher = request.getRequestDispatcher("donor_register.jsp");
//			dispatcher.forward(request,response);
//		}
//		else if(age.length()>2 && age.length()<=1)
//		{
//			request.setAttribute("status","invalidageage");
//			dispatcher = request.getRequestDispatcher("donor_register.jsp");
//			dispatcher.forward(request,response);
//		}
//		else if(age.length()<=0)
//		{
//			request.setAttribute("status","invalidageage");
//			dispatcher = request.getRequestDispatcher("donor_register.jsp");
//			dispatcher.forward(request,response);
//		}
//		if(bloodgroup==null || bloodgroup.equals(""))
//		{
//			request.setAttribute("status","invalidbloodgroup");
//			dispatcher = request.getRequestDispatcher("donor_register.jsp");
//			dispatcher.forward(request,response);
//		}
//		if(email==null || email.equals(""))
//		{
//			request.setAttribute("status","invalidemail");
//			dispatcher = request.getRequestDispatcher("donor_register.jsp");
//			dispatcher.forward(request,response);
//		}
		if(mobileno==null || mobileno.equals(""))
		{
			request.setAttribute("status","invalidmobileno");
			dispatcher = request.getRequestDispatcher("patient_regis.jsp");
			dispatcher.forward(request,response);
		}
		else if(mobileno.length()>10)
		{
			request.setAttribute("status","invalidmobilenolength");
			dispatcher = request.getRequestDispatcher("patient_regis.jsp");
			dispatcher.forward(request,response);
		}
		else if(mobileno.length()<10)
		{
			request.setAttribute("status","invalidmobilenolength");
			dispatcher = request.getRequestDispatcher("patient_regis.jsp");
			dispatcher.forward(request,response);
		}
		
		if(password==null || password.equals(""))
		{
			request.setAttribute("status","invalidpassword");
			dispatcher = request.getRequestDispatcher("patient_regis.jsp");
			dispatcher.forward(request,response);
		}
		else if(!password.equals(confirmpassword))
		{
			request.setAttribute("status","invalidrepassword");
			dispatcher = request.getRequestDispatcher("patient_regis.jsp");
			dispatcher.forward(request,response);
		}
		
			
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank?useSSl=false","root","Chintan@123");
			PreparedStatement pst = con.prepareStatement("insert into patient_reg(name,dob,gender,email,state,city,pincode,nearestbloodbank,bloodgroup,rh,mobileno,password,confirm_password) values(?,?,?,?,?,?,?,?,?,?,?,?,?)" );
			pst.setString(1,name);
			pst.setString(2,dob);
			pst.setString(3,gender);
			pst.setString(4,email);
			pst.setString(5,state);
			pst.setString(6,city);
			pst.setString(7,pincode);
			pst.setString(8,nearbloodbank);
			pst.setString(9,bg);
			pst.setString(10,rh);
			pst.setString(11,mobileno);
			pst.setString(12,password);
			pst.setString(13,confirmpassword);

			int rowCount =pst.executeUpdate();
			
			dispatcher = request.getRequestDispatcher("patient_regis.jsp");
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
