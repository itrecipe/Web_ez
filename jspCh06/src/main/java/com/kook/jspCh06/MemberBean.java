package com.kook.jspCh06;

//Bean(DTO)클래스
//jsp에서 bean을 사용하려면 해당 Bean클래스가 있어야만 한다.
public class MemberBean {
	
	private String name; //이름을 저장할 필드선언
	private String userid; //유저 아이디를 저장할 필드선언
	private String nickname; //별명을 저장할 필드선언
	private String pwd; //비밀번호를 저장할 필드선언
	private String email; //이메일을 저장할 필드선언
	private String phone; //전화번호(휴대폰번호)를 저장할 필드선언
	
	public MemberBean() {
		super();
	}
	
	public MemberBean(String name, String userid, String nickname, String pwd, String email, String phone) {
		super();
		this.name = name;
		this.userid = userid;
		this.nickname = nickname;
		this.pwd = pwd;
		this.email = email;
		this.phone = phone;
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
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}

}
