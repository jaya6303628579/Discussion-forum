package com.nit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nit.entity.Emp;
import com.nit.service.EmpService;

import jakarta.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class EmpController {

	@Autowired
	private EmpService empService;
	
	@GetMapping(value = {"/","/home"})
	public String home(Model model) {
		List<Emp> employees=empService.getallEmp();
		model.addAttribute("emps",employees);
		return "home";
	}
	@RequestMapping("/deleteEmp/{id}")
	public String deleteEmployee(@PathVariable("id") int id, Model model) {
		empService.deleteEmployee(id);
		return "redirect:/home";
	}
	@GetMapping("/addEmployee")
	public String AddEmployee(Model model) {
		model.addAttribute(new Emp(109, "jaya", "software", 40000.0, "hyderabad"));
		return "add_employee";
	}
	@PostMapping("/saveEmp")
	public String SaveEmp(@ModelAttribute Emp emp) {
		empService.saveEmployee(emp);
		return "redirect:/home";
	}
	@RequestMapping("/editEmp/{id}")
	public String editEmployee(@PathVariable("id") int id, Model model) {
		Emp e=empService.getOne(id);
		model.addAttribute(e);
		return "update_emp";
	}
	@PostMapping("/updateEmp")
	public String updateEmployee(@ModelAttribute Emp emp) {
		empService.updateEmployee(emp);
		return "redirect:/home";
	}
	@GetMapping("/GETONE")
	public String getOneEmp() {
		return "GET_ONE";
	}
	@RequestMapping("one")
	public String getOneEmpById(HttpServletRequest req,Model model) {
		int id=Integer.parseInt(req.getParameter("id"));
		Emp e=empService.getOne(id);
		model.addAttribute("emp", e);
		return "ONE_DETAIL";
	}
	@PostMapping("/searchbyname")
	public String searchbynameemp(HttpServletRequest req, Model model) {
		String name= req.getParameter("empname");
		model.addAttribute("emps", empService.searchbyname(name));
		return "home";
	}
}
