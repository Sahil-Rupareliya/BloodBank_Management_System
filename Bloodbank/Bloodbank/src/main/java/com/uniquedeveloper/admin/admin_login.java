package com.uniquedeveloper.admin;


import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class admin_login
 */
@WebServlet("/admin_login")
public class admin_login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	RequestDispatcher dispatcher=null;
	  protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
//	                
	                try
	                {
	                	String emailid = request.getParameter("email");
				        String password = request.getParameter("password");
	                    if(emailid.equals("admin@gmail.com")&& password.equals("admin@123"))
	                    { 
	                        response.sendRedirect("admin.jsp");
	                        dispatcher.forward(request,response);
	                        
	                    }
	                    else
	                    {
	                    	request.setAttribute("status","failed");
	             		   dispatcher = request.getRequestDispatcher("admin_login.jsp");
	             		  dispatcher.forward(request,response);

	                        //dispatcher = request.getRequestDispatcher("login.jsp");
	                    }
//				        if(emailid.equals("admin@gmail.com")&& password.equals("admin"))
//	                    { 
////	                    	request.setAttribute("status", "success");
//	          			    dispatcher=request.getRequestDispatcher("admin_dash.jsp");
//	          			    dispatcher.forward(request, response);
//	                    }
//	                    else
//	                    {
//	                    	request.setAttribute("message","failed");	            			
//	             		    dispatcher=request.getRequestDispatcher("admin_login.jsp");
//	             			dispatcher.forward(request, response);
//	                    }
	                	
	                }
	                catch(Exception e)
	                {
	                    e.printStackTrace();
	                }
	             
	               /* String emailid = request.getParameter("email");
			        String password = request.getParameter("password");
	                if(emailid!=null&&emailid.equalsIgnoreCase("abc@gmail.com")&&password!=null&&password.equalsIgnoreCase("abcd"))
	                {
	                    HttpSession httpSession = request.getSession();
	                    httpSession.setAttribute("emailid", emailid);
	                    request.getRequestDispatcher("admin_dash.jsp").forward(request, response);
	                }*/
	    }

	   
	}
