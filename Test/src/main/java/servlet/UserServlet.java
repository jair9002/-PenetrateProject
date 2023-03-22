package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/user/*")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
 
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		process(request, response);
	}
	
	protected void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
	    response.setContentType("text/html; charset=utf-8");
	    
	    String contextPath = request.getContextPath();
	    String path = request.getRequestURI().substring(contextPath.length());
	    
	    switch(path) {
	    case "/user/login" : login(request,response);break;
	    case "/user/register" : register(request,response);break;
	    case "/user/logout" : logout(request,response);break;
	    
	    }
	}
	protected void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("login");
		
		HttpSession session = request.getSession(); // object (String)
		response.getWriter().append("Session Used");
		String login = "true";
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		
		MemberDAO dao = new MemberDAO();
		MemberVO vo = dao.loginMember(username,password);
		//dao.listMembers();
		if(vo != null) {
			System.out.println("로그인 성공 ");
		}else {
			System.out.println("로그인 실패");
		}
		
		session.setAttribute("login", login);
		 
		response.sendRedirect(request.getContextPath() + "/index.jsp"); //앞의 context path는 변경이 필요함
	    //RequestDispatcher dispatcher = request.getRequestDispatcher("/index.jsp");
	    //dispatcher.forward(request, response);
	}

	protected void register(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		System.out.println("register");
		
	    RequestDispatcher dispatcher = request.getRequestDispatcher("...");
	    dispatcher.forward(request, response);
	}
	
	protected void logout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("logout");
		
		HttpSession session = request.getSession(); // object (String)
		response.getWriter().append("Session Used");
		String login = "false";
		session.setAttribute("login", login);
		
		response.sendRedirect("/HW/index.jsp");
	}

}
