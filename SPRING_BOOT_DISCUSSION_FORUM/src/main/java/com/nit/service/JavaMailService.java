package com.nit.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import com.nit.model.EmailTemplate;

import jakarta.mail.MessagingException;
import jakarta.mail.internet.MimeMessage;

@Service
public class JavaMailService {

	@Autowired
	private JavaMailSender javaMailSender;
	
	public void sendEmail(EmailTemplate emailTemplate) throws MessagingException {
		MimeMessage message=javaMailSender.createMimeMessage();
	    MimeMessageHelper helper;
	    helper=new MimeMessageHelper(message,true);
	    helper.setTo(emailTemplate.getTo());
	    helper.setSubject(emailTemplate.getSubject());
	    helper.setText(emailTemplate.getBody());
	    javaMailSender.send(message);
	}
}
