package com.exam.mvc.dao;

import java.util.List;

import com.exam.mvc.vo.ReplyVO;

public interface ReplyDAO {
	//댓글목록
	//public List<ReplyVO> list(Integer bno);
	//댓글목록 ==> 시작번호, 끝번호 ==> 페이지처리
	public List<ReplyVO> list(Integer bno, int start, int end);
	//댓글입력
	public void create(ReplyVO vo);
	//댓글수정
	public void update(ReplyVO vo);
	//댓글 삭제
	public void delete(Integer rno);
	// 댓글 갯수 ==>  페이지처리
	public int count(int bno);
}
