package model;


public class DiaryDTO {
	
	private String id;
	private int d_no;
	private String d_title;
	private String d_content;
	private String d_img;
	private String d_private;
	private String d_date;
	
	public DiaryDTO() {}
	
	public DiaryDTO(String id, int d_no, String d_title, String d_content, String d_img, String d_private,
			String d_date) {
		super();
		this.id = id;
		this.d_no = d_no;
		this.d_title = d_title;
		this.d_content = d_content;
		this.d_img = d_img;
		this.d_private = d_private;
		this.d_date = d_date;
	}




	@Override
	public String toString() {
		return "DiaryDTO [id=" + id + ", d_no=" + d_no + ", d_title=" + d_title + ", d_content=" + d_content
				+ ", d_img=" + d_img + ", d_private=" + d_private + ", d_date=" + d_date + "]";
	}




	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getD_no() {
		return d_no;
	}

	public void setD_no(int d_no) {
		this.d_no = d_no;
	}

	public String getD_title() {
		return d_title;
	}

	public void setD_title(String d_title) {
		this.d_title = d_title;
	}

	public String getD_content() {
		return d_content;
	}

	public void setD_content(String d_content) {
		this.d_content = d_content;
	}

	public String getD_img() {
		return d_img;
	}

	public void setD_img(String d_img) {
		this.d_img = d_img;
	}

	public String getD_private() {
		return d_private;
	}

	public void setD_private(String d_private) {
		this.d_private = d_private;
	}

	public String getD_date() {
		return d_date;
	}

	public void setD_date(String d_date) {
		this.d_date = d_date;
	}
	
	
	
}
