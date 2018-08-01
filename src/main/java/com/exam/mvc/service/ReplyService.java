package com.exam.mvc.service;

import java.util.List;

import com.exam.mvc.vo.ReplyVO;

public interface ReplyService {
	//1> 댓글목록
	public List<ReplyVO> list(Integer bno);
	//2> 댓글추가
	public void create(ReplyVO vo);
	//3> 댓글수정
	public void update(ReplyVO vo);
	//4> 댓글삭제
	public void delete(Integer rno);
	
}
