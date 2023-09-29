/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.uniquedeveloper.patientblood;

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
 * @author JENISH
 */
@WebServlet("/result")
public class result extends HttpServlet {

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
           int id = Integer.parseInt(request.getParameter("id"));

    try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank", "root", "Chintan@123")) 
    {
      if (request.getParameter("accept") != null) 
      {
        PreparedStatement stmt = conn.prepareStatement("UPDATE patient SET Status = 'success' WHERE id = ?");
        stmt.setInt(1, id);
        stmt.executeUpdate();
      } else if (request.getParameter("reject") != null) {
        PreparedStatement stmt = conn.prepareStatement("UPDATE patient SET Status = 'rejected' WHERE id = ?");
        stmt.setInt(1, id);
        stmt.executeUpdate();
      }
    } 
    catch (SQLException e) {
      response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Unable to update blood request");
      return;
    }

    response.sendRedirect("mpatientrequest.jsp?id=" + id);
    }

    

}
