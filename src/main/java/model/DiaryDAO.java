package model;

	import java.sql.Connection;
	import java.sql.DriverManager;
	import java.sql.PreparedStatement;
	import java.sql.ResultSet;
	import java.sql.SQLException;

	public class DiaryDAO extends DB {

	   private int cnt;
	   
	   
	   
	      public int diary_save(DiaryDTO diary) {
	         
	         try {
	        	 
	            connection();
	            
	            String sql = "INSERT INTO DIARY VALUES(?, d_no.nextval, ?, ?, ?, ?, SYSDATE)";
	            
	            psmt = conn.prepareStatement(sql);

	            psmt.setString(1, diary.getId());
	            psmt.setString(2, diary.getD_title());
	            psmt.setString(3, diary.getD_img());
	            psmt.setString(4, diary.getD_content());
	            psmt.setString(5, diary.getD_private());

	            cnt = psmt.executeUpdate();
	            
	         } catch(SQLException e) {
	            e.printStackTrace();
	         } finally {
	            close();
	         }         
	         return cnt;
	      }
	      
	}

}
