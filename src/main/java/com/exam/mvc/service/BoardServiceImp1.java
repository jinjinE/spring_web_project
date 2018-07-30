package com.exam.mvc.service;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.exam.mvc.dao.BoardDAO;
import com.exam.mvc.vo.BoardVO;

@Service
public class BoardServiceImp1 implements BoardService {

	@Inject
	BoardDAO boardDao;
	
	@Override
	public void create(BoardVO vo) throws Exception {
		boardDao.create(vo);
	}

	@Override
	public BoardVO read(int bno) throws Exception {
		return boardDao.read(bno);
	}

	@Override
	public void update(BoardVO vo) throws Exception {
		boardDao.update(vo);
	}

	@Override
	public void delete(int bno) throws Exception {
		boardDao.delete(bno);
	}

	/*@Override
	public List<BoardVO> listAll() throws Exception {
		return boardDao.listAll();
	}*/

	@Override
	public List<BoardVO> listAll(int start, int end, String searchOption, String keyword) throws Exception {
		// TODO Auto-generated method stub
		return boardDao.listAll(start, end, searchOption, keyword);
	}

	@Override
	public void increaseViewcnt(int bno, HttpSession session) throws Exception {
		boardDao.increaseViewcnt(bno);
	}

	/*@Override //검색어가 있는 전체 글 목록
	public List<BoardVO> listAll(String searchOption, String keyword) throws Exception {
		// TODO Auto-generated method stub
		return boardDao.listAll(searchOption, keyword);
	}*/

	@Override //
	public int countArticle(String searchOption, String keyword) throws Exception {
		// TODO Auto-generated method stub
		return boardDao.countArticle(searchOption, keyword);
	}

}
