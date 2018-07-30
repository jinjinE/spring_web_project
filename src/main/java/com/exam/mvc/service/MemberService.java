package com.exam.mvc.service;

import java.util.List;

import com.exam.mvc.vo.MemberVO;

public interface MemberService {
	//ȸ�����
	public List<MemberVO> memberList();
	//ȸ�� �Է�
	public void insertMember(MemberVO vo);
	//ȸ�� ���� �󼼺���
	public MemberVO viewMember(String userId);
	//ȸ������
	public void deleteMember(String userId);
	//ȸ������ ����
	public void updateMember(MemberVO vo);
	//비번 체크
	public boolean checkPw(String userId, String userPw);
}
