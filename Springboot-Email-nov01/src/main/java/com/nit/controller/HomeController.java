package com.nit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import com.nit.model.EmailTemplate;
import com.nit.service.JavaMailService;

import jakarta.mail.MessagingException;

@Controller
public class HomeController {

	@Autowired
	private JavaMailService javaMailService;
	
	@GetMapping("/")
	public String home(Model model) {
		model.addAttribute(new EmailTemplate("nareshit.murty@gmail.com","Test...","Hello How are you?"));
		return "home";
	}
	
	@PostMapping("/sendEmail")
	public String hello(@ModelAttribute EmailTemplate emailTemplate) throws MessagingException {
		javaMailService.sendEmail(emailTemplate);
		return "success";
	}
}
