package model;

public class QnAJoinDTO {
		
		private int b_no;
		private String id;
		private String q_title;
		private String q_content;
		private String q_private;
		private String q_date;
		private String nick;
		private String pImg;
		
		public QnAJoinDTO(int b_no, String id, String q_title, String q_content, String q_private, String q_date,
				String nick, String pImg) {
			this.b_no = b_no;
			this.id = id;
			this.q_title = q_title;
			this.q_content = q_content;
			this.q_private = q_private;
			this.q_date = q_date;
			this.nick = nick;
			this.pImg = pImg;
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

		public String getNick() {
			return nick;
		}

		public void setNick(String nick) {
			this.nick = nick;
		}

		public String getpImg() {
			return pImg;
		}

		public void setpImg(String pImg) {
			this.pImg = pImg;
		}

		@Override
		public String toString() {
			return "QnAJoinDTO [b_no=" + b_no + ", id=" + id + ", q_title=" + q_title + ", q_content=" + q_content
					+ ", q_private=" + q_private + ", q_date=" + q_date + ", nick=" + nick + ", pImg=" + pImg + "]";
		}
		
		
		
		
}
