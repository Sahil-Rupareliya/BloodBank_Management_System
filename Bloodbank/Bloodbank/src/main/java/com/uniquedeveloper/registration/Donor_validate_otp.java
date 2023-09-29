package com.uniquedeveloper.registration;

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
@WebServlet("/validate_otp")
public class Donor_validate_otp extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int value = Integer.parseInt(request.getParameter("otp"));
        HttpSession session = request.getSession();
        int otp = (int) session.getAttribute("otp");

        RequestDispatcher dispatcher = null;
        if (value == otp) {

            String name = (String) session.getAttribute("name");
            String address = (String) session.getAttribute("address");
            String city = (String) session.getAttribute("city");
            String state = (String) session.getAttribute("state");
            String pincode = (String) session.getAttribute("pincode");
            String gender = (String) session.getAttribute("gender");
            String age = (String) session.getAttribute("age");
            String bloodgroup = (String) session.getAttribute("bloodgroup");
            String email = (String) session.getAttribute("email");
            String mobileno = (String) session.getAttribute("mobileno");
            String password = (String) session.getAttribute("password");
            String retypepassword = (String) session.getAttribute("retypepassword");

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank?useSSl=false",
                        "root", "Chintan@123");
                PreparedStatement pst = con.prepareStatement(
                        "select * from donor_reg where email=?");
                pst.setString(1, email);
                ResultSet rs = pst.executeQuery();
                if (rs.next()) {
                    // email already registered, show message to user
                    request.setAttribute("status", "Email_already_registered");
                    dispatcher = request.getRequestDispatcher("donor_register.jsp");
                    dispatcher.forward(request, response);
                } else {
                    // email not registered, insert new donor
                    pst = con.prepareStatement(
                            "insert into donor_reg(name,address,city,state,pincode,gender,age,blood_group,email,mobile_no,password,retype_pass) values(?,?,?,?,?,?,?,?,?,?,?,?)");
                    pst.setString(1, name);
                    pst.setString(2, address);
                    pst.setString(3, city);
                    pst.setString(4, state);
                    pst.setString(5, pincode);
                    pst.setString(6, gender);
                    pst.setString(7, age);
                    pst.setString(8, bloodgroup);
                    pst.setString(9, email);
                    pst.setString(10, mobileno);
                    pst.setString(11, password);
                    pst.setString(12, retypepassword);
                    int rowCount = pst.executeUpdate();

                    dispatcher = request.getRequestDispatcher("donor_register.jsp");
                    if (rowCount > 0) {
                        request.setAttribute("status", "success");
                    } else {
                        request.setAttribute("status", "failed");

                    }
                    dispatcher.forward(request, response);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }

        } else {
            request.setAttribute("message", "Wrong Otp");

            dispatcher = request.getRequestDispatcher("donor_enter_otp.jsp");
            dispatcher.forward(request, response);

        }

    }

}
