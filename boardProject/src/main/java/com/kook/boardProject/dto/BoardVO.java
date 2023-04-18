package com.kook.boardProject.dto;

import java.sql.Timestamp;

//bin 역할을 하는 클래스
//DB table의 컬럼을 기준으로 작성한다.(form의 입력요소보다 table컬럼이 더 많다.)
public class BoardVO {
	
	private int num;
	private String name;
	private String email;
	private String pass;
	private String title;
	private String content;
	private int readcount;
	private Timestamp writedate; //DB의 Date형은 Timestemp로 선언한다.

	//기본 생성자
	public BoardVO() {
		super();
	}
	//전체 생성자 생성
	public BoardVO(int num, String name, String email, String pass, String title, String content, int readcount,
			Timestamp writedate) {
		super();
		this.num = num;
		this.name = name;
		this.email = email;
		this.pass = pass;
		this.title = title;
		this.content = content;
		this.readcount = readcount;
		this.writedate = writedate;
	}
	
	//getter & setter 생성
	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

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

	public int getReadcount() {
		return readcount;
	}

	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}

	public Timestamp getWritedate() {
		return writedate;
	}

	public void setWritedate(Timestamp writedate) {
		this.writedate = writedate;
	}
}