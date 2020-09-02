package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.BoardBean;
import model.BoardDAO;

/**
 * Servlet implementation class BoardWriteProcCtrl
 */
@WebServlet("/BoardWriteProcCtrl.do")
public class BoardWriteProcCtrl extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request, response);
	}
	
	protected void reqPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		
		BoardBean bean=new BoardBean();
		bean.setId(request.getParameter("id"));
		bean.setName(request.getParameter("name"));
		bean.setSubject(request.getParameter("subject"));
		bean.setContent(request.getParameter("content"));
		
		BoardDAO b= new BoardDAO();
		b.reinsertBoard(bean);
		
		RequestDispatcher dis=request.getRequestDispatcher("BoardListCtrl.do");
		dis.forward(request, response);
	}

}
