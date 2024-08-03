package com.sathya.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sathya.model.Student;
import com.sathya.service.StudentService;

import ch.qos.logback.core.model.Model;

@Controller
public class StudentController {
	@Autowired
	StudentService service;
	@RequestMapping("/")
	public String index() {
		return"Main";
	}
	@GetMapping("/Main")
	public String main() {
		return "Main";
	}
	@RequestMapping("/register")
	public String register() {
		return"register";

}
	@PostMapping("/save")
	public String save(Student student, RedirectAttributes redirectAttributes) {
		if(service.saveStudent(student) != null) {
			redirectAttributes.addFlashAttribute("msg", "Student Saved Successfully");	
		}
		else {
			redirectAttributes.addFlashAttribute("msg", "Student inseretion Failed");	
		}
		return "redirect:/Main?view=register";
	}
	
	@GetMapping("/login")
	public String logincheck() {
		return "login";
	}

	@GetMapping("/check")
	public String login(String email, String password, RedirectAttributes model) {
     if(service.login(email, password) != null)
		model.addFlashAttribute("msg", "login Successful");
     else {
 		model.addFlashAttribute("msg", "login Failed");

     }
		return "redirect:/Main?view=login";
	}

	@GetMapping("/aboutUs")
	public String about() {
		return "aboutUs";
	}

	@GetMapping("/contactUs")
	public String contact() {
		return "contactUs";
	}

	@GetMapping("/students")
	public String getAll(Model map) {
		((RedirectAttributes) map).addAttribute("students", service.getAllStudents());
		return "students";
	}

	@GetMapping("/delete/")
	public String deleteStudent(int id) {
		service.deleteStudent(id);
		return "redirect:/Main?view=students";
	}

	@PostMapping("/edit")
	public String updateStudent(@ModelAttribute Student student, RedirectAttributes redirectAttributes) {
		if(service.updateStudent( student) != null) {
			redirectAttributes.addFlashAttribute("user", service.updateStudent( student));
			redirectAttributes.addFlashAttribute("msg", "Updated successfully");
		}
		else
			redirectAttributes.addFlashAttribute("msg", "Updating failed");
		return "redirect:/Main?view=students";
	}

	@GetMapping("/update/")
	public String updateStudent(int id,ModelMap model) {
		model.addAttribute("student",service.update(id));
		System.out.println(service.update(id));
		return "update";
	}

	@GetMapping("/search")
	public String search() {
		return "search";
	}

	@GetMapping("/searchstudent")
	public String search(String s, RedirectAttributes model) {
		model.addFlashAttribute("student", service.searchStudent(s));
		return "redirect:/Main?view=search";
	}

}
