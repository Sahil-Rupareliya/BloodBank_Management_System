package com.uniquedeveloper.addvbdcamps;

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
@WebServlet("/campotp")
public class addvbdgenerate_otp extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("o_email");
		RequestDispatcher dispatcher=null;
		int otpvalue = 0;
		String o_name=request.getParameter("o_name");
		String o_contactno=request.getParameter("o_contactno");
		String o_email=request.getParameter("o_email");
		String camp_name=request.getParameter("camp_name");
		String camp_address=request.getParameter("camp_address");
		String state=request.getParameter("state");
		String city=request.getParameter("city");
		String camp_date=request.getParameter("camp_date");
		String camp_start_time=request.getParameter("camp_start_time");
		String camp_end_time=request.getParameter("camp_end_time");
		String remark=request.getParameter("remark");
		
		HttpSession mySession = request.getSession();
		
		if(email!=null || !email.equals("")) {
			// sending otp
			Random rand = new Random();
			otpvalue = rand.nextInt(125565);

			String to = email;// change accordingly
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
				message.setFrom(new InternetAddress(email));// change accordingly
				message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
				message.setSubject("HELLO VBD CAMPS");
				message.setText("YOUR OTP IS: " + otpvalue);
				// send message
				Transport.send(message);
				System.out.println("message sent successfully");
			}

			catch (MessagingException e) {
				throw new RuntimeException(e);
			}
		    mySession.setAttribute("o_name", o_name);
		    mySession.setAttribute("o_contactno", o_contactno);
		    mySession.setAttribute("o_email", o_email);
		    mySession.setAttribute("camp_name", camp_name);
		    mySession.setAttribute("camp_address", camp_address);
		    mySession.setAttribute("state", state);
		    mySession.setAttribute("city", city);
		    mySession.setAttribute("camp_date", camp_date);
		    mySession.setAttribute("camp_start_time", camp_start_time);
		    mySession.setAttribute("camp_end_time", camp_end_time);
		    mySession.setAttribute("remark", remark);
		    

			dispatcher = request.getRequestDispatcher("vbdcamps_otp_page.jsp");
			request.setAttribute("message","OTP Is Sent To Your Email Id");
			//request.setAttribute("connection", con);
			mySession.setAttribute("otp",otpvalue); 
			dispatcher.forward(request, response);
			//request.setAttribute("status", "success");
		}
		
	}

}
