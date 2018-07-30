package com.exam.mvc.dao;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.exam.mvc.vo.MemberVO;

@Repository
public class LoginDAOImp1 implements LoginDAO {

	@Inject
	SqlSession sqlSeesion;
	
	@Override
	public boolean loginCheck(MemberVO vo) {
		String name = sqlSeesion.selectOne("login.loginCheck", vo);
		return (name == null) ? false : true;
	}

	@Override
	public MemberVO viewMember(MemberVO vo) {
		return sqlSeesion.selectOne("login.viewMember",vo);
	}

	@Override
	public void logout(HttpSession session) {
		// TODO Auto-generated method stub

	}

}
