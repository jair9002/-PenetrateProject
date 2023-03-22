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

@WebServlet("/trip/*")
public class TripServlet extends HttpServlet {
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
	    case "/trip/serach" : serach(request,response);break;
	    
	    }
	}
	protected void serach(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    // Parameter, Business Logic 처리 후
	    
	  
		System.out.println("search");
	    RequestDispatcher dispatcher = request.getRequestDispatcher("...");
	    dispatcher.forward(request, response);
	}
}
