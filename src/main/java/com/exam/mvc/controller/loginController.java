package com.exam.mvc.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.exam.mvc.service.LoginService;
import com.exam.mvc.vo.MemberVO;

@Controller
@RequestMapping("/login/*")
public class loginController {
	
	@Inject
	LoginService loginService;
	
	// 1> 로그인 폼
	@RequestMapping("login")
	public String login() {
		return "login/login";
	}
	
	// 2> 로그인 철
	@RequestMapping("loginCheck")
	public ModelAndView loginCheck(@ModelAttribute MemberVO vo, HttpSession session) {
		boolean result = loginService.loginCheck(vo, session);
		ModelAndView mav = new ModelAndView();
		if(result) {
			mav.addObject("msg","성공");
			mav.setViewName("login/login_home");
		}else {
			mav.addObject("msg", "실패");
			mav.setViewName("login/login");
		}
		return mav;
	}
	
	//2>로그아웃 처리
	@RequestMapping("logout")
	public ModelAndView logout(HttpSession session) {
		loginService.logout(session);
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", "logout");
		mav.setViewName("login/login");
		return mav;
	}
	
}
