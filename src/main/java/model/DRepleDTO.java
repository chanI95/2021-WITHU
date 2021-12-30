package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DRepleDTO {
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	
	private String id;
	private String nick;
	private int d_no;
	private String d_re;
	
	public DRepleDTO() {}
	
	public DRepleDTO(String id, String nick, int d_no, String d_re) {
		super();
		this.id = id;
		this.nick = nick;
		this.d_no = d_no;
		this.d_re = d_re;
	}
	@Override
	public String toString() {
		return "DRepleDTO [id=" + id + ", nick=" + nick + ", d_no=" + d_no + ", d_re=" + d_re + "]";
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	public int getD_no() {
		return d_no;
	}
	public void setD_no(int d_no) {
		this.d_no = d_no;
	}
	public String getD_re() {
		return d_re;
	}
	public void setD_re(String d_re) {
		this.d_re = d_re;
	}
	
	
}
