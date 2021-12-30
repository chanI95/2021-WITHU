package model;

public class QuestionDTO {

	private int q_no;
	private String question;
	
	public QuestionDTO() {}

	
	
	public QuestionDTO(int q_no, String question) {
		this.q_no = q_no;
		this.question = question;
	}



	@Override
	public String toString() {
		return "QuestionDTO [q_no=" + q_no + ", question=" + question + "]";
	}



	public int getQ_no() {
		return q_no;
	}

	public void setQ_no(int q_no) {
		this.q_no = q_no;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}
	
	
	
	
	
}
