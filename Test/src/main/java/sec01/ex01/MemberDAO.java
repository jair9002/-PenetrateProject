package sec01.ex01;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class MemberDAO {
	   String dbDriver ="com.mysql.cj.jdbc.Driver";  
	   String dbUrl    = "jdbc:mysql://localhost:3306/ssafy_user?characterEncoding=UTF-8 & serverTimezone=UTC";
	   String dbId     = "root";
	   String dbPw     = "1234";
	   Connection conn = null;
	   Statement stmt = null;  
	   
	public void connect() {

		try {
			Class.forName("com.mysql.cj.jdbc.Driver"); // mysql에서 클래스 만들기. // mysql밴더에서 제공해주는 클래스자료이다. connector를 다운
														// 받아야한다
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
		}
		
		String url = "jdbc:mysql://localhost:3306/ssafy_user?serverTimezone=UTC"; // DB 회사마다 다르다. 상태를 말함
		String user = "root";
		String password = "1234";

		try {
			conn = DriverManager.getConnection(url, user, password);
			stmt = conn.createStatement();
			if (conn != null) {
				System.out.println("성공");
			} else {
				System.out.println("실패");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 

		
	}//listMembers end
	
	public List<MemberVO> listMembers() {
		List<MemberVO> list = new ArrayList<MemberVO>();
		try {
			connect();
			String query = "select * from t_member ";
			System.out.println(query);
			ResultSet rs = stmt.executeQuery(query);
			while (rs.next()) {
				String id = rs.getString("id");
				String pwd = rs.getString("pwd");
				String name = rs.getString("name");
				String email = rs.getString("email");
				
				MemberVO vo = new MemberVO();
				vo.setId(id);
				vo.setPwd(pwd);
				vo.setName(name);
				vo.setEmail(email);
				
				list.add(vo);
			}
			rs.close();
			stmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
}
