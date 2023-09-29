package com.uniquedeveloper.patientreg;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ValidateOtp
 */
@WebServlet("/patient_validate_otp_check")
public class patient_validate_otp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		int value=Integer.parseInt(request.getParameter("otp"));
		HttpSession session=request.getSession();
		int otp=(int)session.getAttribute("otp");
		
		RequestDispatcher dispatcher=null;
		if (value==otp) 
		{
			    String name=(String)session.getAttribute("name");
				String dob=(String)session.getAttribute("dob");
				String gender=(String)session.getAttribute("gender");
				String email=(String)session.getAttribute("email");
				String state=(String)session.getAttribute("state");
				String city=(String)session.getAttribute("city");
				String pincode=(String)session.getAttribute("pincode");
				String nearbloodbank=(String)session.getAttribute("nearest_blood_bank");
				String bg=(String)session.getAttribute("blood_group");
				String rh=(String)session.getAttribute("rh");
				String mobileno=(String)session.getAttribute("mobile_no");
				String password=(String)session.getAttribute("password");
				String confirmpassword=(String)session.getAttribute("confirm_password");
				
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank?useSSl=false","root","Chintan@123");
				 PreparedStatement pst = con.prepareStatement(
	                        "select * from patient_reg where email=?");
	                pst.setString(1, email);
	                ResultSet rs = pst.executeQuery();
	                if (rs.next()) {
	                    // email already registered, show message to user
	                    request.setAttribute("status", "Email_already_registered");
	                    dispatcher = request.getRequestDispatcher("patient_regis.jsp");
	                    dispatcher.forward(request, response);
	                }
	                else
	                {
				 pst = con.prepareStatement("insert into patient_reg(name,dob,gender,email,state,city,pincode,nearestbloodbank,bloodgroup,rh,mobileno,password,confirm_password) values(?,?,?,?,?,?,?,?,?,?,?,?,?)" );
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
			}catch(Exception e)
			{
				e.printStackTrace();
			}
				request.setAttribute("email", request.getParameter("email"));
			    dispatcher.forward(request, response);
			
			
		}
		else
		{
			request.setAttribute("message","wrong otp");
			
		   dispatcher=request.getRequestDispatcher("patient_enter_otp.jsp");
			dispatcher.forward(request, response);
		
		}
		
	}

}
