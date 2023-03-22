package servlet;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class MemberDAO {
	String dbDriver = "com.mysql.cj.jdbc.Driver";
	String dbUrl = "jdbc:mysql://localhost:3306/ssafy_user?characterEncoding=UTF-8 & serverTimezone=UTC";
	// ssafy_user = DB 스키마 명
	String dbId = "root"; // 워크 벤치 ID
	String dbPw = "1234"; // 워크 벤치 비번
	Connection conn = null;
	Statement stmt = null;
	PreparedStatement pstmt;
	ResultSet rs = null;

	public void connect() {

		try {
			Class.forName("com.mysql.cj.jdbc.Driver"); // mysql에서 클래스 만들기. // mysql밴더에서 제공해주는 클래스자료이다. connector를 다운
														// 받아야한다
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
		}

		try {
			conn = DriverManager.getConnection(dbUrl, dbId, dbPw);
			stmt = conn.createStatement();
			if (conn != null) {
				System.out.println("연결 성공");
			} else {
				System.out.println("연결 실패");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}// listMembers end

	public List<MemberVO> listMembers() {
		List<MemberVO> list = new ArrayList<MemberVO>();
		try {
			connect();
			String query = "select * from t_member "; // 테이블 명 변경 필요시 변경
			String query2 = "SELECT * FROM t_member WHERE id = 'hong' AND pwd = '1212'";
			System.out.println(query);
			rs = stmt.executeQuery(query);
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

				System.out.println(vo.toString());

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

	public MemberVO loginMember(String id, String pw) {
		MemberVO vo = new MemberVO();
		try {
			connect();
			String query = "SELECT * FROM t_member WHERE id = ? AND pwd = ?";
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			System.out.println(query);

			rs = pstmt.executeQuery();
			if (rs.next()) {
				String user_id = rs.getString("id");
				String pwd = rs.getString("pwd");
				String name = rs.getString("name");
				String email = rs.getString("email");

				vo.setId(id);
				vo.setPwd(pwd);
				vo.setName(name);
				vo.setEmail(email);
				
			}else { // 회원 정보가 없음
				if(vo==null) { //쿼리에 값이 안와도 vo는 null 아님 
					System.out.println("로그인 실패 뭐가 안 맞는지는 모름");
				}
				return null; //강제로 null 리턴
			}
			rs.close();
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vo;
	}

}
