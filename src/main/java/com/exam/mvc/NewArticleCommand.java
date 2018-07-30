package com.exam.mvc;

public class NewArticleCommand {
	//사용자 입력정보를 다루는 클래스
	private String title;
	private String content;
	private int parentId;
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getParentId() {
		return parentId;
	}
	public void setParentId(int parentId) {
		this.parentId = parentId;
	}
	
	
	//객체정보 출력
	public String toString() {
		return "새롭게 등록된 글 + [ 제목 : "+title+", 내용 : "+content+", id : "+parentId+" ]";
	}
	
}
