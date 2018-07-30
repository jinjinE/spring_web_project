package com.exam.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NewArticleController {
	
	//입력
	@RequestMapping("/test/articleForm")
	public String ArticleForm() {
		return "test/articleForm";
	}
	
	//출력
	@RequestMapping("test/articleSubmitted")
	public String ArticleSubmit(NewArticleCommand command) {
		System.out.println("제목 : "+command.getTitle());
		System.out.println("내용 : "+command.getContent());
		
		return "test/articleSubmitted";
	}
}
