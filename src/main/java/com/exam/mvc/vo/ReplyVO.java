package com.exam.mvc.vo;

import java.util.Date;

public class ReplyVO {
	private Integer rno;
	private Integer bno;
	private String replytext;
	private String replyer;
	private String userName;
	private Date regdate;
	private Date updatedate;
	private String secretReply; //비밀댓글 유무 ==> y,n	
	private String writer; //게시판에 들 작성자
	
	public String getSecretReply() {
		return secretReply;
	}
	public void setSecretReply(String secretReply) {
		this.secretReply = secretReply;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public Integer getRno() {
		return rno;
	}
	public void setRno(Integer rno) {
		this.rno = rno;
	}
	public Integer getBno() {
		return bno;
	}
	public void setBno(Integer bno) {
		this.bno = bno;
	}
	public String getReplytext() {
		return replytext;
	}
	public void setReplytext(String replytext) {
		this.replytext = replytext;
	}
	public String getReplyer() {
		return replyer;
	}
	public void setReplyer(String replyer) {
		this.replyer = replyer;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public Date getUpdatedate() {
		return updatedate;
	}
	public void setUpdatedate(Date updatedate) {
		this.updatedate = updatedate;
	}
	
	public String toString() {
		return "ReplayVO [댓글번호="+rno+", 게시글번호="+bno+", 댓글내용="+replytext+", 댓글작성자="+replyer+", 댓글작성날짜="+regdate+", 댓글수정날짜="+updatedate+", 회원이름="+userName+"]";
	}
	
}
