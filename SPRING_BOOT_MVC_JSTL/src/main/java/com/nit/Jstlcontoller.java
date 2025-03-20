package com.nit;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Jstlcontoller {
	@RequestMapping("/")
	public String get() {
		return "index";
	}
}
