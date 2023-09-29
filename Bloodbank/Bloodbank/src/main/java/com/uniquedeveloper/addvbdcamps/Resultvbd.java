/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.uniquedeveloper.addvbdcamps;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author JENISH,CHINTAN
 */

@WebServlet("/resultsvbd")
public class Resultvbd extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
           int campid = Integer.parseInt(request.getParameter("campid"));

    try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank", "root", "Chintan@123")) 
    {
      if (request.getParameter("accept") != null) 
      {
        PreparedStatement stmt = conn.prepareStatement("UPDATE vbdcamps SET Status = 'success' WHERE campid = ?");
        stmt.setInt(1, campid);
        stmt.executeUpdate();
      } else if (request.getParameter("reject") != null) {
        PreparedStatement stmt = conn.prepareStatement("UPDATE vbdcamps SET Status = 'rejected' WHERE campid = ?");
        stmt.setInt(1, campid);
        stmt.executeUpdate();
      }
    } 
    catch (SQLException e) {
      response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Unable to update blood request");
      return;
    }

    response.sendRedirect("mvbdcamps.jsp?campid=" + campid);
    }

    

}