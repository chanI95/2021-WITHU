package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ProfileDTO {

	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	
	private String id;
	private String pw;
	private String name;
	private String nick;
	private String tel;
	private String addr;
	private String bir;
	private String gender;
	private String p_img;
	
	public ProfileDTO() {}

	public ProfileDTO(String id, String pw, String name, String nick, String tel, String addr, String bir,
			String gender, String p_img) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.nick = nick;
		this.tel = tel;
		this.addr = addr;
		this.bir = bir;
		this.gender = gender;
		this.p_img = p_img;
	}

	@Override
	public String toString() {
		return "ProfileDTO [id=" + id + ", pw=" + pw + ", name=" + name + ", nick=" + nick + ", tel=" + tel + ", addr="
				+ addr + ", bir=" + bir + ", gender=" + gender + ", p_img=" + p_img + "]";
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNick() {
		return nick;
	}

	public void setNick(String nick) {
		this.nick = nick;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getBir() {
		return bir;
	}

	public void setBir(String bir) {
		this.bir = bir;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getP_img() {
		return p_img;
	}

	public void setP_img(String p_img) {
		this.p_img = p_img;
	}
	
	
	
}
