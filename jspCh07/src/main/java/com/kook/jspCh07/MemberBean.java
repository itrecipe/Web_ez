package com.kook.jspCh07;

public class MemberBean {
	private String name;
	private String userid;
	
	public MemberBean() { //기본 빈 생성자 생성
		super();
	}

	public MemberBean(String name, String userid) {
		super();
		this.name = name;
		this.userid = userid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}
}