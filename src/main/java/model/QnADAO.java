package model;

import java.sql.SQLException;
import java.util.ArrayList;

public class QnADAO extends DB {
	
	private int cnt;
	
	public int Qtitle_insert(QnADTO qna) {
        
		try {
           connection();
           
           String sql = "INSERT INTO QNA (ID, B_NO, Q_TITLE) VALUES(?, B_NO.NEXTVAL, ?)";
           
           psmt=conn.prepareStatement(sql);
           
           psmt.setString(1, qna.getId());
           psmt.setString(2, qna.getQ_title());
           
           cnt = psmt.executeUpdate();
           
        } catch (SQLException e) {
           e.printStackTrace();
        } finally {
           close();
        }
        
        return cnt;
     }
	
	public QnADTO Qtitle_select(QnADTO qna) {
		try {
	           connection();
	           
	           String sql = "SELECT *"
	           			  + "FROM(SELECT * FROM QNA ORDER BY B_NO DESC)"
	           			  + "WHERE ROWNUM =1";
	           psmt = conn.prepareStatement(sql);

		       rs = psmt.executeQuery();
		       
		       if(rs.next()) {
		              
		              String getQ_title = rs.getString(3);
		              
		              qna = new QnADTO(null, 0, getQ_title, null, null, null);
		           }
		           
		           else {
		              System.out.println("Inquiry Fail in DAO...");
		           }
		        	
	        } catch (SQLException e) {
	           e.printStackTrace();
	        } finally {
	           close();
	        }
	        
	        return qna;
	     }
	
	public int QnA_update(QnADTO qna) {
        
        try {
           
           connection();
           
           String sql = "UPDATE QNA SET Q_CONTENT = ?, Q_PRIVATE = ? , Q_DATE=SYSDATE"
           		+ "           				WHERE B_NO = (SELECT B_NO"
           		+ "           				FROM(SELECT * FROM QNA ORDER BY B_NO DESC)"
           		+ "	           				WHERE ROWNUM =1)";
           
           psmt = conn.prepareStatement(sql);
   
           psmt.setString(1, qna.getQ_content());
           psmt.setString(2, qna.getQ_private());
           
           cnt = psmt.executeUpdate();
           
           
        } catch (SQLException e) {
           e.printStackTrace();
        } finally {
           close();
        }
        
        return cnt;
     }
	
	public ArrayList<QnAJoinDTO> QnAJoin_list() {
			
			// ArrayList
			ArrayList<QnAJoinDTO> list = new ArrayList<QnAJoinDTO>();
			
			
			try {
				connection();
				
				// 1. ALL Question List select 
		        String sql = "SELECT q.b_no, q.ID, q.Q_TITLE, q.Q_CONTENT, q.Q_PRIVATE, q.Q_DATE, p.NICK, p.P_IMG "
		        			+ "FROM QnA q, PROFILE p "
		        			+ "where q.ID = p.ID and q.Q_PRIVATE = '공개' "
		        			+ "order by q.Q_DATE DESC";
		         
		        psmt = conn.prepareStatement(sql);
		     
		         
		        // 2. DB result query save
		        rs = psmt.executeQuery();
		         
		        
		        while(rs.next()){	// result exist
		        	
		        	int getB_no = rs.getInt(1);
		        	String getId = rs.getString(2);
		        	String getQ_title = rs.getString(3);
		        	String getQ_content = rs.getString(4);
		        	String getQ_private = rs.getString(5);
		        	String getQ_date = rs.getString(6);
		        	String getnick = rs.getString(7);
		        	String getp_img = rs.getString(8);
		        	
		        	QnAJoinDTO qnajoin = new QnAJoinDTO(getB_no, getId,getQ_title, getQ_content, getQ_private ,getQ_date, getnick, getp_img);
		            list.add(qnajoin);
		 	      }
	
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close();
			} // end finally
			
			return list;
	   }
}

