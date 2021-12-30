package model;

import java.sql.SQLException;
import java.util.ArrayList;

public class QuestionDAO extends DB {
	
	public ArrayList<QuestionDTO> Q_list() {
		
		// ArrayList
		ArrayList<QuestionDTO> list = new ArrayList<QuestionDTO>();
		
		
		try {
			connection();
			
			// 1. ALL Question List select 
	        String sql = "SELECT * FROM QUESTION ";
	         
	        psmt = conn.prepareStatement(sql);
	     
	         
	        // 2. DB result query save
	        rs = psmt.executeQuery();
	         
	        
	        while(rs.next()){	// result exist
	        	
	        	int getQ_no = rs.getInt(1);
	        	String getQuestion = rs.getString(2);
	        	
	        	QuestionDTO question = new QuestionDTO(getQ_no, getQuestion);
	            list.add(question);
	 	      }

			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		} // end finally
		
		return list;
   }
	
}
