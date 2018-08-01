package com.exam.mvc.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.exam.mvc.vo.ReplyVO;

@Repository
public class ReplayDAOImp1 implements ReplyDAO {

	@Inject
	SqlSession sqlSession;
	
/*	@Override //댓글목록
	public List<ReplyVO> list(Integer bno) {
		return sqlSession.selectList("reply.listReply", bno);
	}*/

	@Override //댓글목록 => 페이지
	public List<ReplyVO> list(Integer bno, int start, int end) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("bno", bno);
		map.put("start", start);
		map.put("end", end);
		return sqlSession.selectList("reply.listReply",map);
	}

	@Override
	public void create(ReplyVO vo) {
		sqlSession.insert("reply.insertReply", vo);
	}

	@Override
	public void update(ReplyVO vo) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(Integer rno) {
		// TODO Auto-generated method stub

	}

	@Override
	public int count(int bno) {
		return sqlSession.selectOne("reply.countReply", bno);
	}

}
