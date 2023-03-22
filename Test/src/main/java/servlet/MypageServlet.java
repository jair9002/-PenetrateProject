package servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/mypage/*")
public class MypageServlet extends HttpServlet {
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
	    case "/mypage/read" : read(request,response);break;
	    case "/mypage/update" : update(request,response);break;
	    case "/mypage/delete" : delete(request,response);break;
	    
	    }
	}
	protected void read(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("read");
	    
	    RequestDispatcher dispatcher = request.getRequestDispatcher("...");
	    dispatcher.forward(request, response);
	}

	protected void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("update");
		
	    RequestDispatcher dispatcher = request.getRequestDispatcher("...");
	    dispatcher.forward(request, response);
	}
	protected void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("delete");
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("...");
		dispatcher.forward(request, response);
	}

}
