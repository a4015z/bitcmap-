package homework;

import java.sql.*;

public class JDBCExample1 {
	public static void main(String[] args) {

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String user = "student";
			String pw = "1234";
			// 2 .데이터베이스 연결 성공
			Connection conn = DriverManager.getConnection(url, user, pw);
			System.out.println("데이터 베이스 연결 성공");

			// 3. 데이터 베이스 작업

			// 4 .데이터 연결 종료

			conn.close();

		} catch (ClassNotFoundException cnfe) {
			System.out.println("해당클래스를 찾을수 없습니다.");
			System.out.println();

		} catch (SQLException se) {
			System.out.println(se.getMessage());
		}
	}
}