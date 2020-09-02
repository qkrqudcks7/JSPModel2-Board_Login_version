package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import model.BoardDAO;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login.do")
public class Login extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request, response);
	}
	
	protected void reqPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
		String password=request.getParameter("password");
		String msg="";
		
		BoardDAO b=new BoardDAO();
		
		int result=b.login(id, password);
		
		if(result==1) {
			HttpSession session=request.getSession();
			session.setAttribute("id", id);
			RequestDispatcher dis=request.getRequestDispatcher("BoardListCtrl.do");
			dis.forward(request, response);
		}
		else if(result==2) {
			request.setAttribute("msg", "2");
			RequestDispatcher dis=request.getRequestDispatcher("BoardListCtrl.do");
			dis.forward(request, response);
		}
		else if(result==3) {
			request.setAttribute("msg", "3");
			RequestDispatcher dis=request.getRequestDispatcher("BoardListCtrl.do");
			dis.forward(request, response);
		}
		
	}

}
