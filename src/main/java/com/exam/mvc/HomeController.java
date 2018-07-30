package com.exam.mvc;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	@RequestMapping("/v")
	public String view() {
		return "test/view"; //view.jsp
	}
	//��� Ȯ�� : /test/view url�߰�
	
	@RequestMapping("content")
	public String content(Model model) {
		//Model ��ü�� �̿��ؼ� ���޵� �� �����
		model.addAttribute("id", 30);
		//model�� ���� id=30�̶�� ���� ����
		return "test/content";
	}
	
	@RequestMapping("reply")
	public ModelAndView reply() {
		ModelAndView model = new ModelAndView();
		model.addObject("name","ȫ�浿");
		model.setViewName("test/replay");
		return model;
	}
	
	@RequestMapping("/main")
	public String main() {
		return "main";
	}

	@RequestMapping("/")
	public String index() {
		return "index";
	}
	
	
}
