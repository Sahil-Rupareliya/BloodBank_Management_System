/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.uniquedeveloper.patient;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
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
@WebServlet("/patientsblood")
@MultipartConfig(maxFileSize = 16177215)

public class patientsblood extends HttpServlet {

    private static final long serialVersionUID = 1 ;

    private PatientUploadDao patient;

    @Override
    public void init() {
        patient = new PatientUploadDao();
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         String first_name=request.getParameter("first_name");
          String dob=request.getParameter("dob");
           String gender=request.getParameter("gender");
            String email=request.getParameter("email");
             String state=request.getParameter("state");
              String city=request.getParameter("city");
               String pincode=request.getParameter("pincode");
                 String blood_group=request.getParameter("blood_group");
                   String mobile_no=request.getParameter("mobile_no");
        String Requiredate=request.getParameter("Requiredate");
        String Quantity=request.getParameter("Quantity");
      
        
        
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
        int row = patient.uploadFile(first_name,dob,gender,email,state,city,pincode,blood_group,mobile_no,Requiredate,Quantity,inputStream );
        
        if (row > 0) {
            message = "File Uploaded and Give confirmation Through Email";
        }

        // sets the message in request scope
        request.setAttribute("Message", message);

        // forwards to the message page
        getServletContext().getRequestDispatcher("/message1.jsp")
            .forward(request, response);
    }
}