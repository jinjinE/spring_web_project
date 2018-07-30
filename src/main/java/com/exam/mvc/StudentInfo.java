package com.exam.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StudentInfo {
	
	@RequestMapping("/test/StudentForm")
	public String StudentForm() {
		return "test/StudentForm";
	}
	
	@RequestMapping("/test/studentView")
	public String studentView( @ModelAttribute("studentInfo") StudentInformation studentinfo) {
		return "test/studentView";
	}
}
