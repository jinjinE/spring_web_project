package com.exam.mvc.service;

import javax.servlet.http.HttpSession;

import com.exam.mvc.vo.MemberVO;

public interface LoginService {
	// 1> 로그인 체크
	public boolean loginCheck(MemberVO vo, HttpSession session);
	// 2> 로그인정보
	public MemberVO viewMember(MemberVO vo);
	// 3> 로그아웃
	public void logout(HttpSession session);
}
