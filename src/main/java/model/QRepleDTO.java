package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class QRepleDTO {

	private int b_no;
	private String id;
	private String q_re;
	
	public QRepleDTO(int b_no, String id, String q_re) {
		super();
		this.b_no = b_no;
		this.id = id;
		this.q_re = q_re;
	}

	public int getB_no() {
		return b_no;
	}

	public void setB_no(int b_no) {
		this.b_no = b_no;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getQ_re() {
		return q_re;
	}

	public void setQ_re(String q_re) {
		this.q_re = q_re;
	}

	@Override
	public String toString() {
		return "QRepleDTO [b_no=" + b_no + ", id=" + id + ", q_re=" + q_re + "]";
	}
	
	
	
	
	
}