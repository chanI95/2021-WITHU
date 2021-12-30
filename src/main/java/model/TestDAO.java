package model;

import java.sql.SQLException;

public class TestDAO extends DB {
	
	private int cnt;
	
	public int Test_insert(TestDTO test) {
        
		try {
           connection();
           
           String sql = "INSERT INTO TEST VALUES(T_NO.NEXTVAL, ?, ?)";
           
           psmt=conn.prepareStatement(sql);
           
           psmt.setString(1, test.getId());
           psmt.setInt(2, test.getScore());
           
           cnt = psmt.executeUpdate();
           
        } catch (SQLException e) {
           e.printStackTrace();
        } finally {
           close();
        }
        
        return cnt;
     }

}
