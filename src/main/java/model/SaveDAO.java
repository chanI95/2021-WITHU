package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class SaveDAO {

	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;
	private int cnt;
	
	
	public void connection() {
	      try {
	         
	         // 1. 오라클 드라이버 동적 로딩 
	         Class.forName("oracle.jdbc.driver.OracleDriver");
	         
	         // 2. 데이터베이스 연동
	         String url ="jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
	         String user="cgi_3_4";
	         String password = "smhrd4";
	         
	         conn = DriverManager.getConnection(url, user, password);
	      } catch (ClassNotFoundException e) {
	         e.printStackTrace();
	      } catch (SQLException e) {
	         e.printStackTrace();
	      }
	      
	   }
	   
	   public void close() {
	      
	      try {
	                  
	             if(rs != null) { rs.close();}
	             if(psmt!= null) {psmt.close();}
	             if(conn != null) {conn.close();}
	                     
	             }catch(SQLException e) {
	                e.printStackTrace();
	             }
	   }
	   
	   public int diary_save(DiaryDTO diary) {
		   
		   try {
			   connection();
			   
			   String sql = "INSERT INTO DIARY VALUES(id, d_no.nextval,?,?,?,?,SYSDATE)";
			   
			   psmt = conn.prepareStatement(sql);
			   
			   psmt.setString(1, diary.getD_title());
			   psmt.setString(2, diary.getD_content());
			   psmt.setString(3, diary.getD_img());
			   psmt.setString(4, diary.getD_private());
			   
			   
			   cnt = psmt.executeUpdate();
			   
		   } catch(SQLException e) {
			   e.printStackTrace();
		   } finally {
			   close();
		   }		   
		   return cnt;
	   }
	   
	   public int qna_save(QnADTO qna) {
		   
		   try {
			   connection();
			   
			   String sql = "INSERT INTO QNA VALUES(?,?,?,?,?,?,SYSDATE)";
			   
			   psmt = conn.prepareStatement(sql);
			   
				/*
				 * psmt.setString(1, diary.getId()); psmt.setInt(2, diary.getD_no());
				 * psmt.setString(3, diary.getD_title()); psmt.setString(4,
				 * diary.getD_content()); psmt.setString(5, diary.getD_img()); psmt.setString(6,
				 * diary.getD_private());
				 */
			   
			   cnt = psmt.executeUpdate();
			   
		   } catch(SQLException e) {
			   e.printStackTrace();
		   } finally {
			   close();
		   }		   
		   return cnt;
	   }
}
