package model;

import java.sql.SQLException;
import java.util.ArrayList;

public class QRepleDAO extends DB {
	
	private int cnt;
	
	public int QReple_insert(QRepleDTO qreple) {
		
		try {
	           connection();
	           
	           String sql = "INSERT INTO Q_REPLE  VALUES(?, ?, ?)";
	           
	           psmt=conn.prepareStatement(sql);
	           
	           psmt.setInt(1, qreple.getB_no());
	           psmt.setString(2, qreple.getId());
	           psmt.setString(3, qreple.getQ_re());
	           
	           cnt = psmt.executeUpdate();
	           
	        } catch (SQLException e) {
	           e.printStackTrace();
	        } finally {
	           close();
	        }
	        
		return cnt;
	}
	
	public ArrayList<QrepleJoinDTO> QrepleJoin_list() {
		
		// ArrayList
		ArrayList<QrepleJoinDTO> list = new ArrayList<QrepleJoinDTO>();
		
		
		try {
			connection();
			
			// 1. ALL Question List select 
	        String sql = "SELECT r.b_no, r.ID, r.Q_RE, p.NICK "
	        		+ "FROM PROFILE p, q_reple r "
	        		+ "where r.ID = p.ID";
	         
	        psmt = conn.prepareStatement(sql);
	     
	         
	        // 2. DB result query save
	        rs = psmt.executeQuery();
	         
	        
	        while(rs.next()){	// result exist
	        	
	        	int getB_no = rs.getInt(1);
	        	String getId = rs.getString(2);
	        	String getQ_re = rs.getString(3);
	        	String getnick = rs.getString(4);
	        	
	        	QrepleJoinDTO qreplejoin = new QrepleJoinDTO(getB_no, getId,getQ_re, getnick);
	            list.add(qreplejoin);
	 	      }

			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		} // end finally
		
		return list;
   }
		
}
