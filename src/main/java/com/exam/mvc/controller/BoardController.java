package com.exam.mvc.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.exam.mvc.service.BoardPager;
import com.exam.mvc.service.BoardService;
import com.exam.mvc.vo.BoardVO;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	
	@Inject // 주입
	BoardService boardService;
	
	//1> 글 작성 폼
	//@RequestMapping("board/write")와 동일
	@RequestMapping(value = "write", method=RequestMethod.GET)
	public String write() {
		return "board/write";
	}
	
	//1> 글 작성한 내용을 저장
	@RequestMapping(value = "insert", method=RequestMethod.POST)
	public String insert(@ModelAttribute BoardVO vo) throws Exception{
		boardService.create(vo);
		return "redirect:list";
	}
	
	/*//2> 1단계 : 글 전체목록 보기 ==> 검색기능 없음
	@RequestMapping("list")
	public ModelAndView list() throws Exception {
		List<BoardVO> list = boardService.listAll();
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("board/list");
		return mav;
	}*/
	
	
	//2> 2단계 : 전체 목록보기 ==> 검색기능
	/*@RequestMapping("list")
	public ModelAndView list(@RequestParam(defaultValue="title") String searchOption, @RequestParam(defaultValue="") String keyword)throws Exception {
		List<BoardVO> list = boardService.listAll(searchOption, keyword);
		int count = boardService.countArticle(searchOption, keyword);
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("count", count);
		mav.addObject("searchOption", searchOption);
		mav.addObject("keyword", keyword);
		mav.setViewName("board/list");
		return mav;
	}*/
	
	//2> 3단계 : 전체 목록 보기 ==> 검색 + 페이지 나누기
	@RequestMapping("list")
	public ModelAndView list(@RequestParam(defaultValue = "title") String searchOption, @RequestParam(defaultValue="") String keyword, @RequestParam(defaultValue="1") int curPage) throws Exception{
		
		//레코드 갯수 계산
		int count = boardService.countArticle(searchOption, keyword);
		
		//추가 ==> 페이지 나누기 부분
		BoardPager boardPager = new BoardPager(count, curPage);
		int start = boardPager.getPageBegin();
		int end = boardPager.getPageEnd();
		List<BoardVO> list = boardService.listAll(start, end, searchOption, keyword);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		map.put("count", count);
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		map.put("boardPager", boardPager);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("map", map);
		//mav.addObject("list", list);
		mav.setViewName("board/list");
		/*ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("count", count);
		mav.addObject("searchOption", searchOption);
		mav.addObject("keyword", keyword);
		mav.addObject("boardPager", boardPager);
		mav.setViewName("board/list");*/
		return mav;
	}
	
	//3> 글 상세보기
	@RequestMapping(value = "view", method = RequestMethod.GET)
	public ModelAndView view(@RequestParam int bno, HttpSession session) throws Exception {
		//조회수 증가
		boardService.increaseViewcnt(bno, session);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("dto",boardService.read(bno));
		mav.setViewName("board/view");
		return mav;
	}
	
	//4> 글 수정하기
	@RequestMapping(value = "update", method=RequestMethod.POST)
	public String update(@ModelAttribute BoardVO vo) throws Exception{
		boardService.update(vo);
		return "redirect:list";
	}
	
	//5> 글 삭제하기
	@RequestMapping(value = "delete", method=RequestMethod.POST)
	public String delete(@RequestParam int bno) throws Exception {
		boardService.delete(bno);
		return "redirect:list";
	}
	
	
}
