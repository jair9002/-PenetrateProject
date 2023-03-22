package sec01.ex01;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/member")
public class MemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
   //MemberDAO에 저장되어 있는 회원 정보를 웹페이지에 표기하는 서블렛
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out =response.getWriter();
		MemberDAO dao = new MemberDAO();
		List<MemberVO> list = dao.listMembers();
		//List<MemberVO> list = dao.listMembers();
		
		 out.print("<html><body>");
	     out.print("<table  border=1><tr align='center' bgcolor='lightgreen'>");
	     out.print("<td>아이디</td><td>비밀번호</td><td>이름</td><td>이메일</td><td>가입일</td></tr>");
	     
	     for (int i=0; i<list.size();i++){
			MemberVO memberVO=(MemberVO) list.get(i);
			String id=memberVO.getId();
			String pwd = memberVO.getPwd();
			String name=memberVO.getName();
			String email=memberVO.getEmail();
			
			out.print("<tr><td>"+id+"</td><td>"+
				                pwd+"</td><td>"+
				                name+"</td><td>"+
				                email+"</td></tr>");		
	      }
	      out.print("</table></body></html>");
	      
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
