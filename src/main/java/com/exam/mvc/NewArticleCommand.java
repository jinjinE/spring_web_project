package com.exam.mvc;

public class NewArticleCommand {
	//����� �Է������� �ٷ�� Ŭ����
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
	
	
	//��ü���� ���
	public String toString() {
		return "���Ӱ� ��ϵ� �� + [ ���� : "+title+", ���� : "+content+", id : "+parentId+" ]";
	}
	
}
