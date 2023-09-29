package com.uniquedeveloper.patientreg;

import java.io.IOException;
import java.util.Properties;
import java.util.Random;
import javax.servlet.http.HttpSession;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ForgotPassword
 */
@WebServlet("/patient_email_check")
public class patient_otp_generate extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email1 = request.getParameter("email");
		RequestDispatcher dispatcher = null;
		int otpvalue = 0;
		String name=request.getParameter("name");
		String dob=request.getParameter("dob");
		String gender=request.getParameter("gender");
		String email=request.getParameter("email");
		String state=request.getParameter("state");
		String city=request.getParameter("city");
		String pincode=request.getParameter("pincode");
		String nearbloodbank=request.getParameter("nearest_blood_bank");
		String bg=request.getParameter("blood_group");
		String rh=request.getParameter("rh");
		String mobileno=request.getParameter("mobile_no");
		String password=request.getParameter("password");
		String confirmpassword=request.getParameter("confirm_password");
		
		HttpSession mySession = request.getSession();
		
		if(email1!=null || !email1.equals("")) {
			// sending otp
			Random rand = new Random();
			otpvalue = rand.nextInt(1255650);

			String to = email1;// change accordingly
			// Get the session object
			Properties props = new Properties();
			props.put("mail.smtp.host", "smtp.gmail.com");
			props.put("mail.smtp.socketFactory.port", "465");
			props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
			props.put("mail.smtp.auth", "true");
			props.put("mail.smtp.port", "465");
			Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication("chintangabani25@gmail.com", "nqkkmxpcibtxbgki");// Put your email
																									// id and
																									// password here
				}
			});
			// compose message
			try {
				MimeMessage message = new MimeMessage(session);
				message.setFrom(new InternetAddress(email1));// change accordingly
				message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
				message.setSubject("HELLO PATIENT");
				message.setText("YOUR OTP IS: " + otpvalue);
				// send message
				Transport.send(message);
				System.out.println("message sent successfully");
			}

			catch (MessagingException e) {
				throw new RuntimeException(e);
			}
		    mySession.setAttribute("name", name);
		    mySession.setAttribute("dob", dob);
		    mySession.setAttribute("gender", gender);
		    mySession.setAttribute("email", email);
		    mySession.setAttribute("state", state);
		    mySession.setAttribute("city", city);
		    mySession.setAttribute("pincode", pincode);
		    mySession.setAttribute("nearest_blood_bank", nearbloodbank);
		    mySession.setAttribute("blood_group", bg);
		    mySession.setAttribute("rh", rh);
		    mySession.setAttribute("mobile_no", mobileno);
		    mySession.setAttribute("password", password);
		    mySession.setAttribute("confirm_password", confirmpassword);


			dispatcher = request.getRequestDispatcher("patient_enter_otp.jsp");
			request.setAttribute("message","OTP Is Sent To Your Email Id");
			//request.setAttribute("connection", con);
			mySession.setAttribute("otp",otpvalue); 
			mySession.setAttribute("email",email1); 
			dispatcher.forward(request, response);
			//request.setAttribute("status", "success");
		}
		
	}

}
