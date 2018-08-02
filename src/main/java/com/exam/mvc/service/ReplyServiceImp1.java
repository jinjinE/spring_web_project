package com.exam.mvc.service;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.exam.mvc.dao.ReplyDAO;
import com.exam.mvc.vo.ReplyVO;

@Service //서비스 역할 빈 생성
public class ReplyServiceImp1 implements ReplyService {

	@Inject //전달해서 주입
	ReplyDAO replyDao;
	
	//@Override
	/*public List<ReplyVO> list(Integer bno) {
		return replyDao.list(bno);
	}*/
	@Override
	public List<ReplyVO> list(Integer bno, int start, int end, HttpSession session) {
		List<ReplyVO> items = replyDao.list(bno, start, end);
		String userId = (String)session.getAttribute("userId");
		for(ReplyVO vo : items) {
			if(vo.getSecretReply().equals("y")){
				if(userId == null) {
				vo.setReplytext("비밀댓글입니다.");
				}else {	
					String writer = vo.getWriter();
					String replyer = vo.getReplyer();
				    if(!userId.equals(writer) && !userId.equals(replyer)) {
					vo.setReplytext("비밀댓글입니다.");
				}
			}
		}
		}
		return items;
	}

	@Override
	public void create(ReplyVO vo) {
		replyDao.create(vo);
	}

	@Override //수정
	public void update(ReplyVO vo) {
		replyDao.update(vo);
	}

	@Override //삭제
	public void delete(Integer rno) {
		replyDao.delete(rno);
	}

	@Override
	public int count(int bno) {
		return replyDao.count(bno);
	}

	@Override //댓글 편집모드
	public ReplyVO detail(Integer rno) {
		return replyDao.detail(rno);
	}


}
