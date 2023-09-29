/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.uniquedeveloper.patient;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author JENISH
 */
public class PatientUploadDao {
     private static final String url = "jdbc:mysql://localhost:3306/bloodbank?useSSL=false";
    private static final String user = "root";
    private static final String password = "Chintan@123";

    private static final String sql = "insert into patients(first_name,dob,gender,email,state,city,pincode,blood_group,mobile_no,Requiredate,Quantity,photo) values (?, ?, ?, ?, ?,?, ?, ?, ?, ?,?,?)";

    public int uploadFile(String first_name,String dob,String gender,String email,String state,String city,String pincode,String blood_group,String mobile_no,String Requiredate,String Quantity,InputStream file) {
        int row = 0;
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e1) {
            // TODO Auto-generated catch block
            e1.printStackTrace();
        }

        try (Connection connection = DriverManager
            .getConnection(url, user, password);
            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection
            .prepareStatement(sql)) {

            preparedStatement.setString(1, first_name);
             preparedStatement.setString(2, dob);
              preparedStatement.setString(3, gender);
               preparedStatement.setString(4, email);
                preparedStatement.setString(5, state);
                 preparedStatement.setString(6, city);
            preparedStatement.setString(7, pincode);
            preparedStatement.setString(8, blood_group);
            preparedStatement.setString(9, mobile_no);
              preparedStatement.setString(10, Requiredate);
            preparedStatement.setString(11, Quantity);
            if (file != null) {
                // fetches input stream of the upload file for the blob column
                preparedStatement.setBlob(12, file);
            }

            // sends the statement to the database server
            row = preparedStatement.executeUpdate();

        } catch (SQLException e) {
            // process sql exception
            printSQLException(e);
        }
        return row;
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}