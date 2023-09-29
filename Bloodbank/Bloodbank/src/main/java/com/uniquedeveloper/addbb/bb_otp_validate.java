package com.uniquedeveloper.addbb;

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
@WebServlet("/blood_bank_otp_validate")
public class bb_otp_validate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		int value=Integer.parseInt(request.getParameter("otp"));
		HttpSession session=request.getSession();
		int otp=(int)session.getAttribute("otp");
		
		RequestDispatcher dispatcher=null;
		if (value==otp) 
		{
		      
		        String state=(String)session.getAttribute("state");
				String city=(String)session.getAttribute("city");
				String name=(String)session.getAttribute("name");
				String email=(String)session.getAttribute("email");
				String contactno=(String)session.getAttribute("contactno");
				String faxno=(String)session.getAttribute("faxno");
				String licence=(String)session.getAttribute("licence");
				String address=(String)session.getAttribute("address");
				String pcode=(String)session.getAttribute("pcode");
				
				
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank?useSSl=false","root","Chintan@123");
				 PreparedStatement pst = con.prepareStatement(
	                        "select * from addbb where email=?");
	                pst.setString(1, email);
	                ResultSet rs = pst.executeQuery();
	                if (rs.next()) {
	                    // email already registered, show message to user
	                    request.setAttribute("status", "Email_already_registered");
	                    dispatcher = request.getRequestDispatcher("blood_banks.jsp");
	                    dispatcher.forward(request, response);
	                }
	                else
	                {
				 pst = con.prepareStatement("insert into addbb(state,city,name,email,contactno,faxno,licence,address,pcode) values(?,?,?,?,?,?,?,?,?)" );
				pst.setString(1,state);
				pst.setString(2,city);
				pst.setString(3,name);
				pst.setString(4,email);
				pst.setString(5,contactno);
				pst.setString(6,faxno);
				pst.setString(7,licence);
				pst.setString(8,address);
				pst.setString(9,pcode);
				
				int rowCount =pst.executeUpdate();
				
				dispatcher = request.getRequestDispatcher("blood_banks.jsp");
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
			request.setAttribute("message","Wrong Otp");
			
		   dispatcher=request.getRequestDispatcher("bloodbank_otp_page.jsp");
			dispatcher.forward(request, response);
		
		}
		
	}

}
