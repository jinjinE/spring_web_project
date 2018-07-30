package com.exam.mvc.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.exam.mvc.dao.MemberDAOImp1;
import com.exam.mvc.vo.MemberVO;

//���� Ŭ������ ���������� �����ϴ� service bean���� ���
@Service//service ������ �� bean ����
public class MemberServiceImp1 implements MemberService {

	@Inject //����
	MemberDAOImp1 memberDao;
	
	@Override
	public List<MemberVO> memberList() {
		return memberDao.memberList();
	}

	@Override
	public void insertMember(MemberVO vo) {
		memberDao.insertMember(vo);
	}

	@Override
	public MemberVO viewMember(String userId) {
		// TODO Auto-generated method stub
		return memberDao.viewMember(userId);
	}

	@Override
	public void deleteMember(String userId) {
		memberDao.deleteMember(userId);
	}

	@Override
	public void updateMember(MemberVO vo) {
		memberDao.updateMember(vo);
	}

	
	
	@Override
	public boolean checkPw(String userId, String userPw) {
		return memberDao.checkPw(userId, userPw);
	}

}
