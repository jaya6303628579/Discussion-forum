package com.nit.contoller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nit.dao.empdaoImpl;
import com.nit.model.Emp;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class EmpController {
@Autowired
private empdaoImpl dao;
@RequestMapping("/")
public String home() {
	return "HOME";
}
@RequestMapping("getemp")
public String getemployees(Model model) {
	List<Emp> employees =dao.getAllemployees();
	model.addAttribute("e", employees);
	return "SHOW";
}
@RequestMapping("addemployee")
public String addemp(Model model) {
	model.addAttribute(new Emp(100,"jaya","software",50000.0, "hyd"));
	return "insert";
}
@RequestMapping("insert")
public String insertemp(@ModelAttribute Emp emp, Model model) {
	dao.insertemp(emp);
	model.addAttribute("el",emp);
	return "redirect:/getemp";
}
@RequestMapping("getone")
public String GETONE() {
	return "GETONEEMP";
}
@RequestMapping("ONEEMP")
public String getoneemp(HttpServletRequest req, Model model) {
	int id=Integer.parseInt(req.getParameter("id"));
	Emp e=dao.GETONEEMPLOYEE(id);
	model.addAttribute("employee", e);
	return "oneemployee";
}
@RequestMapping("edit")
public String Edit(HttpServletRequest req, Model model) {
	int id=Integer.parseInt(req.getParameter("id"));
	 Emp emp=dao.GETONEEMPLOYEE(id);
	 model.addAttribute(emp);
	return "update";
}
@RequestMapping("UPDATE")
public String updateemp(@ModelAttribute Emp emp, Model model) {
	dao.updateemp(emp);
	model.addAttribute(emp);
	return "redirect:/getemp";
}
@RequestMapping("delete")
public String deleteemp(HttpServletRequest req, Model model) {
	int id=Integer.parseInt(req.getParameter("id"));
	dao.deleteemp(id);
	return "redirect:/getemp";
}
}
