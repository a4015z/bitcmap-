package oracle;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public UserDAO() {
		String URL = "jdbc:oracle:thin:@localhost:1521:XE";
		String USER = "student";
		String PWD = "1234";
		
		try {
			Class.forName("oracle.jdbc.OracleDriver"); //클래스 이름을 로드 !
			conn = DriverManager.getConnection(URL, USER, PWD);
			
			//Clㅁss.forName 을 하면 메모리에 o~~~ 드라이버가 올라가고 
			// 올라갔으니 객체사용 가능 ! -> 드라이버 매니저라는 객체 사용가능하고 
			// get Connection을 사용 
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}

	
	public int signUp(User u) {
		int result = -1;
		ResultSet rs=null; 
		String query = "INSERT INTO USER_INFO VALUES(?,?,?,?,seq_user_info.nextval)";
		
		try {
			pstmt = conn.prepareStatement(query); //conn -> 연결 연결 후에 query 문 실행한다라고 생각 
			pstmt.setString(1, u.getId());
			pstmt.setString(2, u.getPassword());
			pstmt.setString(3, u.getName());
			pstmt.setString(4, u.getPhoto());
			
			result = pstmt.executeUpdate(); //진짜실행  셀렉트 뺴고 다Update
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	public List<User> getUserList(){
		List<User> list = new ArrayList<>();
		
		String query = "SELECT * FROM USER_INFO";
		
		try {
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				User u = new User(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getDate(6));
				list.add(u);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public User userInfo(String id) {
		User u = null;
		
		String query = "SELECT * FROM USER_INFO WHERE ID=?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				u = new User(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getInt(5),rs.getDate(6));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return u;
	}
	
	public int login(String id, String password) {
		int result = -1;
		
		String query = "SELECT PASSWORD FROM USER_INFO WHERE ID=?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();
			if(rs.next()) {
				String pw = rs.getString(1);
				System.out.println(pw);
				if(pw.equals(password)) {
					result = 1;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	}
}
