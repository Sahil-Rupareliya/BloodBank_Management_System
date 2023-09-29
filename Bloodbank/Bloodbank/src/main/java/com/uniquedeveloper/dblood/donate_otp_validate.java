package com.uniquedeveloper.dblood;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Calendar;
import java.util.Date;


import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

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
@WebServlet("/donate_otp_validate")
public class donate_otp_validate extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int value = Integer.parseInt(request.getParameter("otp"));
        HttpSession session = request.getSession();
        int otp = (int) session.getAttribute("otp");

        RequestDispatcher dispatcher = null;
        if (value == otp) 
        
        
        
        
        {
            String name = (String) session.getAttribute("name");
            String email = (String) session.getAttribute("email");
            String gender = (String) session.getAttribute("gender");
            String dob = (String) session.getAttribute("dob");
            String mno = (String) session.getAttribute("mno");
            String bgroup = (String) session.getAttribute("bgroup");
            String address = (String) session.getAttribute("address");
            String state = (String) session.getAttribute("state");
            String district = (String) session.getAttribute("district");
            String nbn = (String) session.getAttribute("nbn");
            String tdn = (String) session.getAttribute("tdn");
         
            Connection con=null;
            PreparedStatement pst=null;
            ResultSet rs=null;
            DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
            try {
            	Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank?useSSl=false","root","Chintan@123");
                
                // Check if user is eligible to donate blood
                pst = con.prepareStatement("SELECT MAX(CAST(tdn AS DATE)) FROM donateblood WHERE email=?");
                pst.setString(1, email);
                rs = pst.executeQuery();
                String lastDonationDateStr = null;
                if (rs.next()) {
                    lastDonationDateStr = rs.getString(1);
                }
                if (lastDonationDateStr != null) {
                    Date lastDonationDate = dateFormat.parse(lastDonationDateStr);
                    Calendar c = Calendar.getInstance();
                    c.setTime(lastDonationDate);
                    if(gender.equals("female")) {
                        c.add(Calendar.MONTH, 4);
                    } else {
                        c.add(Calendar.MONTH, 3);
                    }
                    
                    Date nextEligibleDate = c.getTime();
                    Date currentDate = new Date();
                    
                    if (tdn != null && !tdn.isEmpty()) {
                        Date tdnDate = dateFormat.parse(tdn);
                        if (tdnDate.before(nextEligibleDate)) {
                            // User is not eligible to donate blood yet
                            dispatcher = request.getRequestDispatcher("dblood.jsp");
                            request.setAttribute("status", "noteligible");
                            dispatcher.forward(request, response);
                            return;
                        }
                    }
                }
                
                // Save donor information to database
                pst = con.prepareStatement("INSERT INTO donateblood(name, email, gender, dob, mno, bgroup, address, state, district, nbn, tdn) VALUES(?,?,?,?,?,?,?,?,?,?,?)");
                pst.setString(1,name);
                pst.setString(2,email);
                pst.setString(3,gender);
                pst.setString(4,dob);
                pst.setString(5,mno);
                pst.setString(6,bgroup);
                pst.setString(7,address);
                pst.setString(8,state);
                pst.setString(9,district);
                pst.setString(10,nbn);
                pst.setString(11,tdn);
                int rowCount =pst.executeUpdate();
                dispatcher = request.getRequestDispatcher("dblood.jsp");
                if(rowCount >0)
                {
                    request.setAttribute("status","success");
                } else {
                    request.setAttribute("status", "failed");
                }
                dispatcher.forward(request, response);
            }
            
            
            
            
            
            catch (Exception e) {
                e.printStackTrace();
            }

        } else {
            request.setAttribute("message", "Wrong Otp");

            dispatcher = request.getRequestDispatcher("donate_blood_form_otp.jsp");
            dispatcher.forward(request, response);

        }

    }

}
