/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.uniquedeveloper.p_request_blood;

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

    private static final String sql = "INSERT INTO patient(name,Requiredate,Quantity,blood_group,photo) values (?, ?, ?, ?, ?)";

    public int uploadFile(String name,String Requiredate,String Quantity,String blood_group,InputStream file) {
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

            preparedStatement.setString(1, name);
            preparedStatement.setString(2, Requiredate);
            preparedStatement.setString(3, Quantity);
            preparedStatement.setString(4, blood_group);
            if (file != null) {
                // fetches input stream of the upload file for the blob column
                preparedStatement.setBlob(5, file);
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
