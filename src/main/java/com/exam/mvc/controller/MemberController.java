package com.exam.mvc.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.exam.mvc.service.MemberService;
import com.exam.mvc.vo.MemberVO;
import com.sun.media.jfxmedia.logging.Logger;

@Controller //��Ʈ�ѷ� ������ �� bean ����
public class MemberController {
	@Inject //���񽺿� �����ϱ� ���� ����
	MemberService memberService;
	
	//1> ȸ����� �޼��� ����
	@RequestMapping("member/list")
	public String memberList(Model model) {
		List<MemberVO> list = memberService.memberList();
		model.addAttribute("list", list);
		return "member/member_list";
	}
	
	//2> 회원 등록 메서드(form)
	@RequestMapping("member/write")
	public String memberWrite() {
		return "member/member_write";
	}
	
	//3> 회원등록 ==> DB에 insert
	@RequestMapping("member/insert")
	public String memeberInsert(@ModelAttribute MemberVO vo) {
		memberService.insertMember(vo);
		return "redirect:/member/list";
		//바로 redirect
	}
	
	//4> 회원상세정보 보기
	@RequestMapping("member/view")
	public String memberView(@RequestParam String userId, Model model) {
		//@RequestParam : 특징 파라미터 값을 받아서 처리
		model.addAttribute("dto", memberService.viewMember(userId));
		return "member/member_view";
	}
	
	//5> 회원 수정
	@RequestMapping("member/update")
	public String memberUpdate(@ModelAttribute MemberVO vo, Model model) {
		//비번 결과값 체크
		boolean result = memberService.checkPw(vo.getUserId(), vo.getUserPw());
		
		if(result) {//비번일치
			memberService.updateMember(vo);
			return "redirect:/member/list";
		}else {//비번이 불일치
			MemberVO vo2 = memberService.viewMember(vo.getUserId());
			vo.setUserRegdate(vo2.getUserRegdate());
			vo.setUserUpdatedate(vo2.getUserUpdatedate());
			model.addAttribute("dto", vo);
			model.addAttribute("message", "비번 불일치로 수정불가능");
			return "member/member_view";
		}
		
		
	}
	
	
	
	//6> 삭제 기능
	@RequestMapping("member/delete")
	public String memberDelete(@RequestParam String userId, @RequestParam String userPw, Model model) {
		boolean result = memberService.checkPw(userId, userPw);
		if(result) {
			memberService.deleteMember(userId);
			return "redirect:/member/list";
		}else {
			model.addAttribute("message", "비밀번호 불일치");
			model.addAttribute("dto", memberService.viewMember(userId));
			return "member/member_view";
		}
	}
}
