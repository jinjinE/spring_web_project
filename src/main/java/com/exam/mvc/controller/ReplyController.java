package com.exam.mvc.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.exam.mvc.service.ReplyService;
import com.exam.mvc.vo.ReplyVO;

//@Controller 대신에 @RestController 로 빈생성
//@Controller ==> 화면뷰를 만들어서 사용 ===> ***.jsp를 만들어서 처리
//@RestController ==> 뷰를 ㅏㅁㄴ들지 않고 api를 통해 작성(ajax)
@RestController
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
	@RequestMapping("reply/list")
	public ModelAndView list(@RequestParam int bno, ModelAndView mav) {
		List<ReplyVO> list = replyService.list(bno);
		mav.addObject("list", list);
		mav.setViewName("board/replyList");
		return mav;
	}
	
	//2-2> 댓글 목록 (@RestController를 이용하는 경우)
	@RequestMapping("reply/listJson")
	@ResponseBody//
	public List<ReplyVO> listJson(@RequestParam int bno){
		List<ReplyVO> list = replyService.list(bno);
		return list;
	}
}
