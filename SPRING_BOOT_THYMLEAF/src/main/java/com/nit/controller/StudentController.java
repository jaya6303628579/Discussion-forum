package com.nit.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.annotation.JsonCreator.Mode;
import com.nit.model.Student;

@Controller
public class StudentController {
	@RequestMapping("/")
	public String home(Model model) {
		List<String> lang = new ArrayList<>();
		lang.add("telugu");
		lang.add("tamil");
		lang.add("english");
		lang.add("hindi");
		model.addAttribute("lan", lang);
		return "home";
	}

	@RequestMapping("/reg")
	public String regist(Model model) {
		model.addAttribute(new Student(1, "Jaya", "Btech", "Hyd"));
		return "regis";
	}

	@RequestMapping("/save")
	public String saveStudent(@ModelAttribute Student st, Model model) {
		model.addAttribute("st", st);
		return "success";
	}
}
