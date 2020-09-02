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
 * Servlet implementation class BoardUpdateProcCtrl
 */
@WebServlet("/BoardUpdateProcCtrl.do")
public class BoardUpdateProcCtrl extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request, response);
	}
	
	protected void reqPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		String id=request.getParameter("id");
		String id2=request.getParameter("id2");
		
		if(id.equals(id2)) {
			BoardDAO b= new BoardDAO();
			BoardBean bean= new BoardBean();
			bean.setNum(Integer.parseInt(request.getParameter("num")));
			bean.setSubject(request.getParameter("subject"));
			bean.setContent(request.getParameter("content"));
			b.update(bean);
			
			RequestDispatcher dis=request.getRequestDispatcher("BoardListCtrl.do");
			dis.forward(request, response);
		}
		else {
			request.setAttribute("msg", "4");
			RequestDispatcher dis=request.getRequestDispatcher("BoardListCtrl.do");
			dis.forward(request, response);
		}
		
		
	}

}
