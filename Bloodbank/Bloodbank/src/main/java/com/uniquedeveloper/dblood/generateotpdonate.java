package com.uniquedeveloper.dblood;

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
@WebServlet("/dblood")
public class generateotpdonate extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email1 = request.getParameter("email");
		RequestDispatcher dispatcher = null;
		int otpvalue = 0;
        String name=request.getParameter("name");
        String email=request.getParameter("email");
        String gender=request.getParameter("gender");
        String dob=request.getParameter("dob");
        String mno=request.getParameter("mno");
        String bgroup=request.getParameter("bgroup");
        String address=request.getParameter("address");
        String state=request.getParameter("state");
        String district=request.getParameter("district");
        String nbn=request.getParameter("nbn");
        String tdn=request.getParameter("tdn");
		
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
				message.setSubject("HELLO DONOR ");
				message.setText("YOUR BLOOD DONATION OTP IS: " + otpvalue);
				// send message
				Transport.send(message);
				System.out.println("message sent successfully");
			}

			catch (MessagingException e) {
				throw new RuntimeException(e);
			}
		    mySession.setAttribute("name", name);
		    mySession.setAttribute("email", email);
		    mySession.setAttribute("gender", gender);
		    mySession.setAttribute("dob", dob);
		    mySession.setAttribute("mno", mno);
		    mySession.setAttribute("bgroup", bgroup);
		    mySession.setAttribute("address", address);
		    mySession.setAttribute("state", state);
		    mySession.setAttribute("district", district);
		    mySession.setAttribute("nbn", nbn);
		    mySession.setAttribute("tdn", tdn);


			dispatcher = request.getRequestDispatcher("donate_blood_form_otp.jsp");
			request.setAttribute("message","OTP Is Sent To Your Email Id");
			//request.setAttribute("connection", con);
			mySession.setAttribute("otp",otpvalue); 
			mySession.setAttribute("email",email1); 
			dispatcher.forward(request, response);
			//request.setAttribute("status", "success");
		}
		
	}

}
