/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.uniquedeveloper.p_request_blood;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author JENISH
 */
@WebServlet("/patientblood")
@MultipartConfig(maxFileSize = 16177215)
public class p_request_blood extends HttpServlet {

  private static final long serialVersionUID = 1 ;

    private PatientUploadDao patient;

    @Override
    public void init() {
        patient = new PatientUploadDao();
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         String name=request.getParameter("name");
        String Requiredate=request.getParameter("Requiredate");
        String Quantity=request.getParameter("Quantity");
        String blood_group=request.getParameter("blood_group");
        
        
        InputStream inputStream = null; // input stream of the upload file

        String message = null;
        // obtains the upload file part in this multipart request
        Part filePart = request.getPart("photo");
        if (filePart != null) {
            // prints out some information for debugging
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());

            // obtains input stream of the upload file
            inputStream = filePart.getInputStream();
        }

        // sends the statement to the database server
        int row = patient.uploadFile(name,Requiredate,Quantity,blood_group,inputStream);
        if (row > 0) {
            message = "File uploaded And You Get Confirmation Soon In Your Check Request Section ";
        }

        // sets the message in request scope
        request.setAttribute("Message", message);

        // forwards to the message page
        getServletContext().getRequestDispatcher("/message.jsp")
            .forward(request, response);
    }
}
