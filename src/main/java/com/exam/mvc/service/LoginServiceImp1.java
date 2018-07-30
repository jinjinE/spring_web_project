package com.exam.mvc.service;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.exam.mvc.dao.LoginDAO;
import com.exam.mvc.vo.MemberVO;

@Service
public class LoginServiceImp1 implements LoginService {

	@Inject
	LoginDAO liginDao;
	
	@Override
	public boolean loginCheck(MemberVO vo, HttpSession session) {
		boolean result = liginDao.loginCheck(vo);
		if(result) {
			MemberVO vo2 = viewMember(vo);
			session.setAttribute("userId", vo2.getUserId());
			session.setAttribute("userName", vo2.getUserName());
		}
		return result;
	}

	@Override
	public MemberVO viewMember(MemberVO vo) {
		return liginDao.viewMember(vo);
	}

	@Override
	public void logout(HttpSession session) {
		session.invalidate();//세션 종료
		// 세션 종료 : session.removeAttribute("userId");
	}

}
