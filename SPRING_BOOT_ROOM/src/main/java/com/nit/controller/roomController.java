package com.nit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nit.entity.Members;
import com.nit.service.memberService;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;


@Controller
public class roomController {
	
	@Autowired
	private memberService memberService;
	
	@GetMapping("/")
	public String logpage(Model model) {
		model.addAttribute(new Members(0, "jaya", 5000.0));
		return "LOGIN";
	}
	
	@PostMapping("/addmember")
	public String addmembers(@ModelAttribute Members members) {
		memberService.saveMember(members);
		return "sucess";
	}
}
