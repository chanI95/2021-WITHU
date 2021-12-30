package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DB {

	public Connection conn;
	public PreparedStatement psmt;
	public ResultSet rs;

	// 데이터베이스 연동기능, 종료기능
	public void connection() {
		try {

			// 1. 오라클 드라이버 동적 로딩
			Class.forName("oracle.jdbc.driver.OracleDriver");

			// 2. 데이터베이스 연동
			String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
			String user = "cgi_3_4";
			String password = "smhrd4";

			conn = DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	public void close() {
		// 4. 데이터베이스 연결 종료
		// 오류가 나면 catch 문에 잡혀버림-> 오류 메세지 -> (비정상적으로) 종료 되어버림
		// --> 오류가 나도 DB 연결을 종료하는 부분이 필요함
		try {

			if (rs != null) {
				rs.close();
			}
			if (psmt != null) {
				psmt.close();
			}
			if (conn != null) {
				conn.close();
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
