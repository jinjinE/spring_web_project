package com.exam.mvc.dao;

import javax.servlet.http.HttpSession;

import com.exam.mvc.vo.MemberVO;

public interface LoginDAO {
	// 1> 회원 로그인 체크
	public boolean loginCheck(MemberVO vo);
	// 2> 로그인한 회원정보
	public MemberVO viewMember(MemberVO vo);
	// 3> 회원 로그아웃
	public void logout(HttpSession session);
}
