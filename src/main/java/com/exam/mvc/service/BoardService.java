package com.exam.mvc.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.exam.mvc.vo.BoardVO;

public interface BoardService {
	//1> 글작성
	public void create(BoardVO vo) throws Exception;
	
	//2> 글 상세보기
	public BoardVO read(int bno) throws Exception;
	
	//3> 글 수정
	public void update(BoardVO vo) throws Exception;
	
	//4> 글 삭제
	public void delete(int bno) throws Exception;
	
	//5> 전체목록보기
	//public List<BoardVO> listAll() throws Exception;

	//5-1> 전체목록보기
	//public List<BoardVO> listAll() throws Exception;
	//public List<BoardVO> listAll(String searchOption, String keyword) throws Exception;
	
	//5-2> 전체목록보기 => 검색+페이지
	public List<BoardVO> listAll(int start, int end, String searchOption, String keyword) throws Exception;
	
	//6> 조회수
	public void increaseViewcnt(int bno, HttpSession session) throws Exception;
	//조회수 session 연결 상태인지 체크
	
	//7> 검색 글 갯수
	public int countArticle(String searchOption, String keyword) throws Exception;
	
}
