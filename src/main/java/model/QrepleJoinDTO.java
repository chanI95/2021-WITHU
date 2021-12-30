package model;

public class QrepleJoinDTO {
	
	private int b_no;
	private String id;
	private String q_re;
	private String nick;
	
	public QrepleJoinDTO(int b_no, String id, String q_re, String nick) {
		super();
		this.b_no = b_no;
		this.id = id;
		this.q_re = q_re;
		this.nick = nick;
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

	public String getNick() {
		return nick;
	}

	public void setNick(String nick) {
		this.nick = nick;
	}

	@Override
	public String toString() {
		return "QrepleJoinDTO [b_no=" + b_no + ", id=" + id + ", q_re=" + q_re + ", nick=" + nick + "]";
	}
	
	

}
