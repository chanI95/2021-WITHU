package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LikeDTO {
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	
	private String id;
	private int i_no;
	private int save;
	
	public LikeDTO() {}

	public LikeDTO(String id, int i_no, int save) {
		super();
		this.id = id;
		this.i_no = i_no;
		this.save = save;
	}

	@Override
	public String toString() {
		return "LikeDTO [id=" + id + ", i_no=" + i_no + ", save=" + save + "]";
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getI_no() {
		return i_no;
	}

	public void setI_no(int i_no) {
		this.i_no = i_no;
	}

	public int getSave() {
		return save;
	}

	public void setSave(int save) {
		this.save = save;
	}
	
	
}
