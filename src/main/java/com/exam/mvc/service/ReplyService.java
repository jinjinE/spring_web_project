package com.exam.mvc.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.exam.mvc.vo.ReplyVO;

public interface ReplyService {
	//1> 댓글목록
	public List<ReplyVO> list(Integer bno, int start, int end, HttpSession session);
	//2> 댓글추가
	public void create(ReplyVO vo);
	//3> 댓글수정
	public void update(ReplyVO vo);
	//4> 댓글삭제
	public void delete(Integer rno);
	//5> 댓글 갯수
	public int count(int bno);
}
