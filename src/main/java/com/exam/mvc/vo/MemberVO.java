package com.exam.mvc.vo;

import java.sql.Date;

public class MemberVO {
	//데이터 관리 테이블 필드를 객체화시킴
	private String userId;
	private String userPw;
	private String userName;
	private String userEmail;
	private Date userRegdate;
	private Date userUpdatedate;
	
	
	//getter / setter 추가
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPw() {
		return userPw;
	}
	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public Date getUserRegdate() {
		return userRegdate;
	}
	public void setUserRegdate(Date userRegdate) {
		this.userRegdate = userRegdate;
	}
	public Date getUserUpdatedate() {
		return userUpdatedate;
	}
	public void setUserUpdatedate(Date userUpdatedate) {
		this.userUpdatedate = userUpdatedate;
	}
	
	//객체 정보 출력 ==> toString()
	public String toString() {
		return "MemberVo [userId="+userId+", userPw="+userPw+", userName="+userName+", userEmail="+userEmail+", userRegdate="+userRegdate+", userUpdatedate="+userUpdatedate+"]";
	}
}
