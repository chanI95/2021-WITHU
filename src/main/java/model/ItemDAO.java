package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ItemDAO {

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
	   
	   public ArrayList<ItemDTO> item_view() {
			
			// ArrayList
			ArrayList<ItemDTO> list = new ArrayList<ItemDTO>();
			
			
			try {
				connection();
		         
		         // 3. 쿼리문 작성
		        String sql = "SELECT * FROM ITEM ";
		         
		        psmt = conn.prepareStatement(sql);
		     
		         
		        // DB에서 조회된 데이터를 rs객체에 저장
		        rs = psmt.executeQuery();
		         
		        
		        while(rs.next()){	// DB로부터 받은 정보가 없을 때 까지 계속 반복
		        	
		        	int getNum = rs.getInt(1);
		        	String getI_name = rs.getString(2);
		        	String getI_content = rs.getString(3);
		        	String getI_img = rs.getString(4);
		        	
		        	ItemDTO item = new ItemDTO(getNum, getI_name, getI_content, getI_img);
		            list.add(item);
		 	      }

				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close();
			} // end finally
			
			return list;
	   }
	   
	   
	   
	
}
