package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DdayDTO {
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	
	private String id;
	private String start;
	private String end;
	
	public DdayDTO() {}

	public DdayDTO(String id, String start, String end) {
		super();
		this.id = id;
		this.start = start;
		this.end = end;
	}

	@Override
	public String toString() {
		return "DdayDTO [id=" + id + ", start=" + start + ", end=" + end + "]";
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getStart() {
		return start;
	}

	public void setStart(String start) {
		this.start = start;
	}

	public String getEnd() {
		return end;
	}

	public void setEnd(String end) {
		this.end = end;
	}
	
	
}
