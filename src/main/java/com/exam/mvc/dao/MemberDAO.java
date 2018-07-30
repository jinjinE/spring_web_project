package com.exam.mvc.dao;

import java.util.List;

import com.exam.mvc.vo.MemberVO;

public interface MemberDAO {
	//DB ���� �޼���
	
	//1> 회원 목록보기==> select
	public List<MemberVO> memberList();
	
	//2> 회원 등록하기 ==> insert
	public void insertMember(MemberVO vo);

	//3> 회원정보 상세보기==> select
	public MemberVO viewMember(String userId);

	//4> 회원삭제 ==> delete
	public void deleteMember(String userId);

	//5> 회원수정 ==> update
	public void updateMember(MemberVO vo);
	
	//6> 비번 체크 하는 메서드 ==> update/delete 이용하기 위한
	public boolean checkPw(String userId, String userPw);
}
