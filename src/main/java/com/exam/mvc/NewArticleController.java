package com.exam.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NewArticleController {
	
	//�Է�
	@RequestMapping("/test/articleForm")
	public String ArticleForm() {
		return "test/articleForm";
	}
	
	//���
	@RequestMapping("test/articleSubmitted")
	public String ArticleSubmit(NewArticleCommand command) {
		System.out.println("���� : "+command.getTitle());
		System.out.println("���� : "+command.getContent());
		
		return "test/articleSubmitted";
	}
}
