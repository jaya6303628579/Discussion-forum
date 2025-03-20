package com.nit.controller;

import java.time.Year;
import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nit.model.Alumini;
import com.nit.model.EmailTemplate;
import com.nit.model.Postjob;
import com.nit.model.Questions;
import com.nit.model.Student;
import com.nit.service.AluminiService;
import com.nit.service.JavaMailService;
import com.nit.service.PostJobService;
import com.nit.service.QuestionsService;
import com.nit.service.StudentService;

import jakarta.mail.MessagingException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import lombok.extern.slf4j.Slf4j;

@Controller
public class DiscussionController {

	@Autowired
	private StudentService studentService;

	@Autowired
	private AluminiService aluminiService;

	@Autowired
	private PostJobService postJobService;

	@Autowired
	public JavaMailService javaMailService;
	
	@Autowired
	private QuestionsService questionsService;

	@GetMapping("/")
	public String home() {
		return "home";
	}

	@GetMapping("home")
	public String home1() {
		return "home";
	}

	@GetMapping("STUDENTREG")
	public String studentreg() {
		return "new_student";
	}

	@PostMapping("studentupdate")
	public String studentUpdate(HttpServletRequest req, Model model) {
		long sRoll = Integer.parseInt(req.getParameter("sroll"));
		String sName = req.getParameter("sname");
		String cName = req.getParameter("cname");
		long yop = Integer.parseInt(req.getParameter("yop"));
		long mobile = Long.parseLong(req.getParameter("mbl"));
		String mailid = req.getParameter("mid");
		String username = req.getParameter("usr");
		String password = req.getParameter("pass");
		String skill = req.getParameter("SKILLS");
		String lang = req.getParameter("lang");
		studentService.registerStudent(
				new Student(sRoll, sName, cName, yop, mobile, mailid, username, password, skill, lang));
		return "sucess";
	}

	@GetMapping("stuLogin")
	public String loginPage() {
		return "student_login";
	}

	@PostMapping("log")
	public String studentLogin(HttpServletRequest req, Model model) {
		String user = req.getParameter("usr");
		String pass = req.getParameter("pass");
		Student s = new Student();
		s.setUsername(user);
		s = studentService.login(user, pass);

		if(s==null) {
			model.addAttribute("s", "invalid");
			return "student_login";
		}
		else {
			model.addAttribute("stu", s);
			return "Student_Profile";
		}
	}

	@GetMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/home";
	}

	@RequestMapping("studenthome")
	public String studentHome() {
		
		return "redirect:/home";
	}

	@GetMapping("ALUMINIREG")
	public String aluminiReg() {
		return "ALUMINI_REG";
	}

	@PostMapping("aluminiupdate")
	public String aluminiupdate(HttpServletRequest req, Model model) {
		long regNo = Integer.parseInt(req.getParameter("aroll"));
		String companyName = req.getParameter("cname");
		String bussinessType = req.getParameter("btype");
		String aluminiName = req.getParameter("aname");
		String gender = req.getParameter("G");
		int age = Integer.parseInt(req.getParameter("age"));
		String gmail = req.getParameter("mid");
		String skills = req.getParameter("SKILLS");
		long mobileno = Long.parseLong(req.getParameter("mobile"));
		String address = req.getParameter("address");
		String username = req.getParameter("user");
		String password = req.getParameter("pass");
		Alumini a = new Alumini(regNo, companyName, bussinessType, aluminiName, gender, age, gmail, skills, mobileno,
				address, username, password);
		aluminiService.saveAlumini(a);
		return "sucess";
	}

	@GetMapping("ALUMINILOGIN")
	public String aluminLog() {
		return "alumini_login";
	}

	@PostMapping("ALUMINILOG")
	public String aluminLogin(HttpServletRequest req, Model model) {
		String user = req.getParameter("usr");
		String pass = req.getParameter("pass");
		Alumini s = new Alumini();
		s.setUsername(user);
		s = aluminiService.login(user, pass);
		if(s==null) {
			model.addAttribute("s", "invalid");
			return "alumini_login";
		}
		else {
			model.addAttribute("stu", s);
			return "Alumini_profile";
		}
	}

	@GetMapping("logout1")
	public String logout2(HttpSession session) {
		session.invalidate();
		return "redirect:/home";
	}

	@GetMapping("postjob")
	public String post() {
		return "post_job";
	}

	@PostMapping("jobpost")
	public String jobPost(HttpServletRequest req, Model model) throws MessagingException {
		int id = Integer.parseInt(req.getParameter("id"));
		String companyName = req.getParameter("cname");
		long mobileNo = Long.parseLong(req.getParameter("mbl"));
		String address = req.getParameter("add");
		String jobLocation = req.getParameter("loc");
		int Vacancy = Integer.parseInt(req.getParameter("vac"));
		String jobTitle = req.getParameter("jobtitle");
		String skills = req.getParameter("SKILLS");
		String site = req.getParameter("site");
		Postjob pj = new Postjob(id, companyName, mobileNo, address, jobLocation, Vacancy, jobTitle, skills, site);
		postJobService.jobsave(pj);
		// sending mails to the students profiles
		List<Postjob> p = postJobService.getAll();
		List<Student> li = studentService.getcommon();
		int year=Year.now().getValue();
		for(Student s1:li) {
			if(s1.getYop()==year) {
				System.out.println("Student yop :"+s1.getYop()+" current year :"+year);
				EmailTemplate emailTemplate = new EmailTemplate();
				String subject = "JOB ALERT";
				emailTemplate.setSubject(subject);
				String body = "Hey!\r\n" + "\r\n" + "You have an  job Openings.\r\n" + "\r\n" + pj;
				
				emailTemplate.setBody(body);
				for (Student s : li) {
					String mail = s.getMailId();
					emailTemplate.setTo(mail);
					javaMailService.sendEmail(emailTemplate);
				}
			}
			else {
				
				System.out.println("else Studentyop :"+s1.getYop()+" current year :"+year);
			}
		}
		//List<Student> yops=studentService.getYopStudents()
		/**EmailTemplate emailTemplate = new EmailTemplate();
		String subject = "JOB ALERT";
		emailTemplate.setSubject(subject);
		String body = "Hey!\r\n" + "\r\n" + "You have an  job Openings.\r\n" + "\r\n" + pj;
		
		emailTemplate.setBody(body);
		for (Student s : li) {
			String mail = s.getMailId();
			emailTemplate.setTo(mail);
			javaMailService.sendEmail(emailTemplate);
		}**/
		return "sucess";
	}

	@GetMapping("stuprofile")
	public String stuProfiles(Model model) {
		List<Student> li = studentService.getcommon();
		model.addAttribute("li", li);
		return "GetStudentProfiles_with_requirement";
	}

	@GetMapping("Jobnote")
	public String jobNote(Model model) {
		List<Postjob> li = postJobService.getAll();
		model.addAttribute("li", li);
		return "Job_Notification";
	}

	@GetMapping("ADMINLOGIN")
	public String adminPage() {
		return "Admin";
	}

	@PostMapping("ADMINLOG")
	public String adminLogin(HttpServletRequest req, Model model) {
		String user = req.getParameter("usr");
		String pass = req.getParameter("pass");
		if (user.equals("123") && pass.equals("Admin123")) {
			return "Admin_page";
		} else {
			model.addAttribute("invalid", "Invalid Login");
			return "Admin";
		}
	}

	@GetMapping("STUDENTPROFILE")
	public String studentsRecord(Model model) {
		List<Student> li = studentService.getAll();
		model.addAttribute("li", li);
		return "Student_records";

	}

	@GetMapping("AdminHome")
	public String adminHome() {
		return "Admin_page";
	}

	@RequestMapping("Sdelete")
	public String deleteSRecord(HttpServletRequest req, Model model) {
		Integer rollno = Integer.parseInt(req.getParameter("id"));
		studentService.deleteStudent(rollno);
		return "redirect:/STUDENTPROFILE";
	}

	@GetMapping("Aluminiinfo")
	public String aluminiInfo(Model model) {
		List<Alumini> li = aluminiService.getAll();
		model.addAttribute("li", li);
		return "Alumini_records";
	}

	@RequestMapping("Adelete")
	public String deleteARecord(HttpServletRequest req, Model model) {
		Integer rollno = Integer.parseInt(req.getParameter("id"));
		aluminiService.deleteStudent(rollno);
		return "redirect:/Aluminiinfo";
	}

	@GetMapping("jobs")
	public String jobspage(Model model) {
		List<Postjob> li = postJobService.getAllList();
		model.addAttribute("li", li);
		return "PostjobsList";
	}

	@PostMapping("Pdelete")
	public String postDelete(HttpServletRequest req, Model model) {
		Integer id = Integer.parseInt(req.getParameter("id"));

		postJobService.deletePost(id);
	

		return "redirect:/jobs";
	}
	
	@GetMapping("query")
	public String postQuestion() {
		return "question";
	}
	@PostMapping("postQuestion")
	public String postQ(HttpServletRequest req, Model model) {
		int serialno=Integer.parseInt(req.getParameter("no"));
		String q=req.getParameter("pq");
		Questions qu=new Questions();
		qu.setNo(serialno);
		qu.setQuestion(q);
		questionsService.savequestion(qu);
		return "sucess";
	}
	
	@GetMapping("answer")
	public String answer(Model model) {
		List<Questions> li=questionsService.getallquestions();
		model.addAttribute("li", li);
		return "Answer";
	}
	@PostMapping("ans")
	public String ansUpdate(HttpServletRequest req, Model model) {
		int sno=Integer.parseInt(req.getParameter("srno"));
		String answer=req.getParameter("ans");
		Questions q=questionsService.getOne(sno);
		q.setAnswer(answer);
		questionsService.savequestion(q);
		return "saveanswer";
	}
	@GetMapping("getAllQ&A")
	public String getQA(Model model) {
		List<Questions> li=questionsService.getallquestions();
		model.addAttribute("li", li);
		return "getAllQ";
	}
}
