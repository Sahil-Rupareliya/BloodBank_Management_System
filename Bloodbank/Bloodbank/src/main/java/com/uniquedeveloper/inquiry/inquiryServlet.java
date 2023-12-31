package com.uniquedeveloper.inquiry;

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
 * Servlet implementation class inquiryServlet
 */
@WebServlet("/inquiry")
public class inquiryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name=request.getParameter("name");
        String email=request.getParameter("email");
        String mno=request.getParameter("mno");
        String date=request.getParameter("date");
        String msg=request.getParameter("msg");
        
        RequestDispatcher dispatcher=null;
		Connection con=null;
                
        try
        {
        Class.forName("com.mysql.jdbc.Driver");
	    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank?useSSl=false","root","Chintan@123");
	    PreparedStatement pst = con.prepareStatement("insert into inquiry(name,email,mno,date,msg) values(?,?,?,?,?)" );
	        pst.setString(1,name);
            pst.setString(2,email);
            pst.setString(3,mno);
            pst.setString(4,date);
            pst.setString(5,msg);
            int rowCount =pst.executeUpdate();
			
			dispatcher = request.getRequestDispatcher("inquiry_form.jsp");
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
