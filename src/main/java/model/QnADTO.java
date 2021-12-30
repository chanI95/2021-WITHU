package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class QnADTO {
	
	private String id;
	private int b_no;
	private String q_title;
	private String q_content;
	private String q_private;
	private String q_date;
	
	public QnADTO() {}

	public QnADTO(String id,  int b_no, String q_title, String q_content, String q_private, String q_date) {

		this.id = id;
		this.b_no = b_no;
		this.q_title = q_title;
		this.q_content = q_content;
		this.q_private = q_private;
		this.q_date = q_date;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	public int getB_no() {
		return b_no;
	}
	
	public void setB_no(int b_no) {
		this.b_no = b_no;
	}

	public String getQ_title() {
		return q_title;
	}

	public void setQ_title(String q_title) {
		this.q_title = q_title;
	}

	public String getQ_content() {
		return q_content;
	}

	public void setQ_content(String q_content) {
		this.q_content = q_content;
	}


	public String getQ_private() {
		return q_private;
	}

	public void setQ_private(String q_private) {
		this.q_private = q_private;
	}

	public String getQ_date() {
		return q_date;
	}

	public void setQ_date(String q_date) {
		this.q_date = q_date;
	}

	@Override
	public String toString() {
		return "QnADTO [id=" + id + ", b_no=" + b_no + ", q_title=" + q_title + ", q_content=" + q_content
				+ ", q_private=" + q_private + ", q_date=" + q_date + "]";
	}
	
}