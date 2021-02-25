package com.yaneodo.admin.board;

public class MemberDTO {
	
	private String customerSeq;
	private String photo;
	private String name;
	private String nickname;
	private String email;
	private String phone;
	private String birth;
	private String joinDate;
	private String gender;
	private String lastJoin;
	
	public String getCustomerSeq() {
		return customerSeq;
	}
	public void setCustomerSeq(String customerSeq) {
		this.customerSeq = customerSeq;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
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
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getJoinDate() {
		return joinDate;
	}
	public void setJoinDate(String joinDate) {
		this.joinDate = joinDate;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getLastJoin() {
		return lastJoin;
	}
	public void setLastJoin(String lastJoin) {
		this.lastJoin = lastJoin;
	}
	
}
