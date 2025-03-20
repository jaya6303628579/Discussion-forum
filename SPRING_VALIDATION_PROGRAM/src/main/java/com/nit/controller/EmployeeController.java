package com.nit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import java.util.*;
import com.nit.dao.EmployeeDAO;
import com.nit.dao.EmployeeIMDAO;
import com.nit.model.Employee;
@Controller
public class EmployeeController {
	@Autowired
	private EmployeeDAO dao;
	
	@RequestMapping("/ADDEMPLOYEE")
	public String AddEmployee(Model model) {
		model.addAttribute(new Employee());
		return "insertemployee";
	}
	@RequestMapping("/saveEmp")
	public String saveEmployee(@Validated Employee emp, BindingResult error) {
		if(error.hasErrors()) {
			return "insertemployee";
		}
		dao.addEmployee(emp);
		return "success";
	}
	@RequestMapping("/GETEMP")
	public String GetAllEmps(Model model) {
		List<Employee> list=dao.getAll();
		model.addAttribute("li",list);
		return "allemp";
	}
}
