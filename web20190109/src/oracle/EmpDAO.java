package oracle;


import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EmpDAO {
	// 연결 초기화 
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs;
	// 오라클 연결 
	
	public EmpDAO() {
		String URL = "jdbc:oracle:thin:@localhost:1521:XE";
		String USER = "student";
		String PWD = "1234";
		
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection(URL, USER, PWD);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}
	
	//select 쿼리문 
	public List<Emp> selectEmp(){
		List<Emp> list = new ArrayList<>();
		
		String query = "SELECT * FROM EMP";
		
		try {
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Emp e = new Emp(rs.getString(1), rs.getString(2)
						,rs.getString(3),rs.getString(4),rs.getString(5)
						,rs.getString(6),rs.getString(7),rs.getString(8));
				list.add(e);
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		
		return list;
	}
	
	//insert 쿼리문 
	public int insertEmp(Emp e) {
		int result = -1;
		
		String query = "INSERT INTO EMP VALUES(?,?,?,?,?,?,?,?)";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, Integer.parseInt(e.getEmpno()));
			pstmt.setString(2, e.getEname());
			pstmt.setString(3, e.getJob());
			pstmt.setInt(4, Integer.parseInt(e.getMgr()));
			pstmt.setDate(5, Date.valueOf(e.getHiredate()));
			pstmt.setInt(6, Integer.parseInt(e.getSal()));
			pstmt.setInt(7, Integer.parseInt(e.getComm()));
			pstmt.setInt(8, Integer.parseInt(e.getDeptno()));
			
			result = pstmt.executeUpdate();
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		
		return result;
	}
	// update
	public int updateEmp(String newName, String oldName) {
		int result = -1;
		
		String query = "UPDATE EMP SET ENAME=? WHERE ENAME=?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, newName);
			pstmt.setString(2, oldName);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	
	// delete ㅁ쿼리 
	public int deleteEmp(String name) {
		int result = -1;
		
		String query = "DELETE FROM EMP WHERE ENAME=?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, name);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	}
}