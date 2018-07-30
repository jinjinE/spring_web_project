package com.exam.mvc.dao;

import java.util.List;

import com.exam.mvc.vo.BoardVO;

public interface BoardDAO {
	//1> 글작성
	public void create(BoardVO vo) throws Exception;
	
	//2> 글상세보기
	public BoardVO read(int bno) throws Exception;
	
	//3> 글 수정하기
	public void update(BoardVO vo) throws Exception;
	
	//4> 글 삭제하기
	public void delete(int bno) throws Exception;
	
	//5> 글 목록보기 ==> 검색 기능이 없는 리스트
	//public List<BoardVO> listAll() throws Exception;
	
	//5-1> 글 목록 보기 ==> 검색기능이 있는 리스트 : searchOPtion(4), keyword: 검색어
	//public List<BoardVO> listAll(String searchOption, String keyword) throws Exception; 
	
	//5-2> 글목록보기 ==> 검색기능+페이지나누기
	public List<BoardVO> listAll(int start, int end, String searchOption, String keyword) throws Exception; 
	
	//6> 조회수 증가
	public void increaseViewcnt(int bno) throws Exception;
	
	//7> 검색어에 따른 글 갯수
	public int countArticle(String searchOption, String keyword) throws Exception;
	
	
}
