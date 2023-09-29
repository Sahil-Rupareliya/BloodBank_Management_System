package com.uniquedeveloper.addvbdcamps;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
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
@WebServlet("/vbd_camp_otp_validate")
public class vbdotp_validat extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		int value=Integer.parseInt(request.getParameter("otp"));
		HttpSession session=request.getSession();
		int otp=(int)session.getAttribute("otp");
		
		RequestDispatcher dispatcher=null;
		if (value==otp) 
		{
		      
			String o_name=(String)session.getAttribute("o_name");
			String o_contactno=(String)session.getAttribute("o_contactno");
			String o_email=(String)session.getAttribute("o_email");
			String camp_name=(String)session.getAttribute("camp_name");
			String camp_address=(String)session.getAttribute("camp_address");
			String state=(String)session.getAttribute("state");
			String city=(String)session.getAttribute("city");
			String camp_date=(String)session.getAttribute("camp_date");
			String camp_start_time=(String)session.getAttribute("camp_start_time");
			String camp_end_time=(String)session.getAttribute("camp_end_time");
			String remark=(String)session.getAttribute("remark");
				
			
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank?useSSl=false","root","Chintan@123");
				PreparedStatement pst = con.prepareStatement("insert into vbdcamps(o_name,o_contactno,o_email,camp_name,camp_address,state,city,camp_date,camp_start_time,camp_end_time,remark) values(?,?,?,?,?,?,?,?,?,?,?)" );
				pst.setString(1,o_name);
				pst.setString(2,o_contactno);
				pst.setString(3,o_email);
				pst.setString(4,camp_name);
				pst.setString(5,camp_address);
				pst.setString(6,state);
				pst.setString(7,city);
				pst.setString(8,camp_date);
				pst.setString(9,camp_start_time);
				pst.setString(10,camp_end_time);
				pst.setString(11,remark);
				int rowCount =pst.executeUpdate();
				
				dispatcher = request.getRequestDispatcher("vbd_camps.jsp");
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
			
				
		}
		else
		{
			request.setAttribute("message","Wrong Otp");
			
		   dispatcher=request.getRequestDispatcher("vbdcamps_otp_page.jsp");
			dispatcher.forward(request, response);
		
		}
		
	}

}
