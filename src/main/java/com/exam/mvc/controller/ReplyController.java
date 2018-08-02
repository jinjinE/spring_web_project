package com.exam.mvc.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.exam.mvc.service.ReplyPager;
import com.exam.mvc.service.ReplyService;
import com.exam.mvc.vo.ReplyVO;

//@Controller 대신에 @RestController 로 빈생성
//@Controller ==> 화면뷰를 만들어서 사용 ===> ***.jsp를 만들어서 처리
//@RestController ==> 뷰를 ㅏㅁㄴ들지 않고 api를 통해 작성(ajax)
@RestController
@RequestMapping("/reply/*")
public class ReplyController {

	@Inject
	ReplyService replyService;
	
	//1> 댓글추가
	@RequestMapping("reply/insert")
	public void insert(@ModelAttribute ReplyVO vo, HttpSession session) {
		String userId = (String) session.getAttribute("userId");
		vo.setReplyer(userId);
		replyService.create(vo);
	}
	
	//2-1> 댓글 목록 (@Controller를 이용하는 경우)
	/*@RequestMapping("reply/list")
	public ModelAndView list(@RequestParam int bno, ModelAndView mav) {
		List<ReplyVO> list = replyService.list(bno);
		mav.addObject("list", list);
		mav.setViewName("board/replyList");
		return mav;
	}	*/
	//2-2> 댓글 목록 (@RestController를 이용하는 경우)
	/*@RequestMapping("reply/listJson")
	@ResponseBody//
	public List<ReplyVO> listJson(@RequestParam int bno){
		List<ReplyVO> list = replyService.list(bno);
		return list;
	}*/
	
	//2-2> 방법1 : 댓글 목록(@Controller 이용하는 경우) ==> 페이지처리
	@RequestMapping("list")
	public ModelAndView list(@RequestParam int bno, @RequestParam(defaultValue="1") int curPage, HttpSession session, ModelAndView mav){
		
		//페이지처리
		int count = replyService.count(bno);
		ReplyPager pager = new ReplyPager(count, curPage);
		int start = pager.getPageBegin();
		int end = pager.getPageEnd();
		
		List<ReplyVO> list = replyService.list(bno, start, end, session);
		
		mav.addObject("list", list);
		mav.addObject("replyPager", pager);
		mav.setViewName("board/ReplyList");
		
		return mav;
	}
	
	//2-2> 방법2 : 댓글 목록(@RestController 이용한 경우) ==> 페이지 처리
	@RequestMapping("listJson")
	public List<ReplyVO> listJson(@RequestParam int bno, @RequestParam(defaultValue="1") int curPage, HttpSession session){
		
		//페이지처리
		int count = replyService.count(bno);
		
		ReplyPager pager = new ReplyPager(count, curPage);
		int start = pager.getPageBegin();
		int end = pager.getPageEnd();
		List<ReplyVO> list = replyService.list(bno, start, end, session);
		
		return list;
	}
	//2-2> 방법3 : 댓글 목록(@RequestMapping 주소에 값을 받아서 처리)
	@RequestMapping("list/{bno}/{curPage}")
	public List<ReplyVO> replyList(@PathVariable("bno") int bno, @PathVariable int curPage, HttpSession session, ModelAndView mav){
		
		//페이지처리
		int count = replyService.count(bno);
		ReplyPager pager = new ReplyPager(count, curPage);
		int start = pager.getPageBegin();
		int end = pager.getPageEnd();
		
		List<ReplyVO> list = replyService.list(bno, start, end, session);
		mav.addObject("list", list);
		mav.addObject("replyPager", pager);
		mav.setViewName("board/ReplyList");
		
		return list;
	}
	//==> RequestParam과 pathvariable 비교
	
	
	
	// 3> 댓글 상세보기
	@RequestMapping("detail/{rno}")
	public ModelAndView replyDetail(@PathVariable("rno") Integer rno, ModelAndView mav) {
		//@PathVariable("url을 통해 전달되는 값")
		ReplyVO vo = replyService.detail(rno);
		mav.addObject("vo",vo);
		mav.setViewName("board/replyDatail");
		return mav;
	}
	
	//4> 댓글 수정

	//RequestMethod.PUT :전체수정 기능 지원
	//RequestMethod.PATCH : 일부 수정 기능 지원
	@RequestMapping(value="update/{rno}", method = {RequestMethod.PUT, RequestMethod.PATCH})
	public ResponseEntity<String> replyUpdate(@PathVariable("rno") Integer rno, @RequestBody ReplyVO vo){
		ResponseEntity<String> entity = null;
		try {
			vo.setRno(rno);
			replyService.update(vo);
			entity = new ResponseEntity<String>("success", HttpStatus.OK);
		}catch(Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	
	
	//5> 삭제 기능
	@RequestMapping("delete/{rno}")
	public ResponseEntity<String> replyDelete(@PathVariable("rno") Integer rno){
		ResponseEntity<String> entity = null;

		try {
			replyService.delete(rno);
			entity = new ResponseEntity<String>("success",HttpStatus.OK);
		}catch(Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(e.getMessage(),HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	/*
	  public void replyDelete(@PathVariable("rno"...)){
	  replyService.delete(rno);
	  }
	*/
}
