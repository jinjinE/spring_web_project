package com.exam.mvc.dao;

import java.util.List;

import com.exam.mvc.vo.ReplyVO;

public interface ReplyDAO {
	//댓글목록
	public List<ReplyVO> list(Integer bno);
	//댓글입력
	public void create(ReplyVO vo);
	//댓글수정
	public void update(ReplyVO vo);
	//댓글 삭제
	public void delete(Integer rno);
}
