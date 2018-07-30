package com.exam.mvc.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.exam.mvc.vo.MemberVO;

// ���� Ŭ������ DAO bean���� ��Ͻ�Ŵ
@Repository //DB ���� bean ����
public class MemberDAOImp1 implements MemberDAO {
	
	//DB���� ��� ����
	@Inject //�����ڸ� �̿��� ����
	SqlSession sqlSession;
	
	@Override
	public List<MemberVO> memberList() {
		return sqlSession.selectList("member.memberList");
		//���ӽ����̽�.id��
	}

	@Override
	public void insertMember(MemberVO vo) {
		sqlSession.insert("member.insertMember", vo);
	}

	@Override
	public MemberVO viewMember(String userId) {
		return sqlSession.selectOne("member.viewMember", userId);
	}

	@Override
	public void deleteMember(String userId) {
		sqlSession.delete("member.deleteMember", userId);
	}

	@Override
	public void updateMember(MemberVO vo) {
		sqlSession.update("member.updateMember", vo);
	}

	@Override
	public boolean checkPw(String userId, String userPw) {
		boolean result=false;
		Map<String, String> map = new HashMap<String, String>();
		map.put("userId", userId);
		map.put("userPw", userPw);
		int count =sqlSession.selectOne("member.checkPw", map);
		return (count>=1 ? true : false);
	}

}
