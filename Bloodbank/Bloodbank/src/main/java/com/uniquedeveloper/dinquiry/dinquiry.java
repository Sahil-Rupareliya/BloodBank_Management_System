/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.uniquedeveloper.dinquiry;

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
 *
 * @author CHINTAN
 */
@WebServlet("/dinquiry")
public class dinquiry extends HttpServlet {

   
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String firstname=request.getParameter("firstname");
        String lastname=request.getParameter("lastname");
        String mailid=request.getParameter("email");
        String country=request.getParameter("country");
        String subject=request.getParameter("subject");
        
        RequestDispatcher dispatcher=null;
		Connection con=null;
                
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
	        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank?useSSl=false","root","Chintan@123");
	        PreparedStatement pst = con.prepareStatement("insert into dinquiry(firstname,lastname,mailid,country,subject) values(?,?,?,?,?)" );
	        pst.setString(1,firstname);
            pst.setString(2,lastname);
            pst.setString(3,mailid);
            pst.setString(4,country);
            pst.setString(5,subject);
      
            int rowCount =pst.executeUpdate();
			
			dispatcher = request.getRequestDispatcher("dinquiry.jsp");
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
