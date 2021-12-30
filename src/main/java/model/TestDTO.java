package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class TestDTO {
	
	private int t_no;
	private String id;
	private int score;
	
	public TestDTO(int t_no, String id, int score) {

		this.t_no = t_no;
		this.id = id;
		this.score = score;
	}

	public int getT_no() {
		return t_no;
	}

	public void setT_no(int t_no) {
		this.t_no = t_no;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	@Override
	public String toString() {
		return "TestDTO [t_no=" + t_no + ", id=" + id + ", score=" + score + "]";
	}
	
	
}