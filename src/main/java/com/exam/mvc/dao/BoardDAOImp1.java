package com.exam.mvc.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.exam.mvc.vo.BoardVO;

@Repository //DB와 연결되는 bean 생성
public class BoardDAOImp1 implements BoardDAO {

	@Inject
	SqlSession sqlSession;
	
	@Override
	public void create(BoardVO vo) throws Exception {
		sqlSession.insert("board.insert", vo);
	}

	@Override
	public BoardVO read(int bno) throws Exception {
		return sqlSession.selectOne("board.view",bno);
	}

	@Override
	public void update(BoardVO vo) throws Exception {
		sqlSession.update("board.updateArticle", vo);
	}

	@Override
	public void delete(int bno) throws Exception {
		sqlSession.delete("board.deleteArticle", bno);
	}

	/*@Override 게시글 전체목록 보기 => 검색이 없는 리스트
	public List<BoardVO> listAll() throws Exception {
		return sqlSession.selectList("board.listAll");
	}
*/
	@Override
	public void increaseViewcnt(int bno) throws Exception {
		sqlSession.update("board.increaseViewcnt", bno);
	}

/*	@Override //게시글 전체목록 보기 => 검색이 있는 리스트
	public List<BoardVO> listAll(String searchOption, String keyword) throws Exception {
		Map<String, String> map = new HashMap<String, String>();
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		
		return sqlSession.selectList("board.listAll", map);
	}
	*/
	@Override//검색 + 페이지
	public List<BoardVO> listAll(int start, int end, String searchOption, String keyword) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		map.put("start", start);
		map.put("end", end);
		
		
		return sqlSession.selectList("board.listAll", map);
	}

	@Override
	public int countArticle(String searchOption, String keyword) throws Exception {
		Map<String, String> map = new HashMap<String, String>();
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		
		return sqlSession.selectOne("board.countArticle", map);
	}


}
