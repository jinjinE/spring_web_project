package com.exam.mvc.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.exam.mvc.dao.ReplyDAO;
import com.exam.mvc.vo.ReplyVO;

@Service //서비스 역할 빈 생성
public class ReplyServiceImp1 implements ReplyService {

	@Inject //전달해서 주입
	ReplyDAO replyDao;
	
	@Override
	public List<ReplyVO> list(Integer bno) {
		return replyDao.list(bno);
	}

	@Override
	public void create(ReplyVO vo) {
		replyDao.create(vo);
	}

	@Override
	public void update(ReplyVO vo) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(Integer rno) {
		// TODO Auto-generated method stub

	}

}
