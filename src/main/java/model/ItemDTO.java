package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ItemDTO {
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	
	private int i_no;
	private String i_name;
	private String i_content;
	private String i_img;
	
	public ItemDTO() {}

	public ItemDTO(int i_no, String i_name, String i_content, String i_img) {
		super();
		this.i_no = i_no;
		this.i_name = i_name;
		this.i_content = i_content;
		this.i_img = i_img;
	}

	@Override
	public String toString() {
		return "ItemDTO [i_no=" + i_no + ", i_name=" + i_name + ", i_content=" + i_content + ", i_img=" + i_img + "]";
	}

	public int getI_no() {
		return i_no;
	}

	public void setI_no(int i_no) {
		this.i_no = i_no;
	}

	public String getI_name() {
		return i_name;
	}

	public void setI_name(String i_name) {
		this.i_name = i_name;
	}

	public String getI_content() {
		return i_content;
	}

	public void setI_content(String i_content) {
		this.i_content = i_content;
	}

	public String getI_img() {
		return i_img;
	}

	public void setI_img(String i_img) {
		this.i_img = i_img;
	}
	
	
}
