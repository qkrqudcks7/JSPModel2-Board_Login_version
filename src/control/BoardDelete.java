package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.BoardBean;
import model.BoardDAO;

/**
 * Servlet implementation class BoardDelete
 */
@WebServlet("/BoardDelete.do")
public class BoardDelete extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request, response);
	}
	
	protected void reqPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		HttpSession session=request.getSession();
		String id=(String)session.getAttribute("id");
		
		int num=Integer.parseInt(request.getParameter("num"));
		
		BoardDAO b=new BoardDAO();
		BoardBean bean=b.getOneBoard2(num);
		
		request.setAttribute("id", id);
		request.setAttribute("bean", bean);
		
		if(id.equals(bean.getId())) {
			RequestDispatcher dis=request.getRequestDispatcher("BoardDelete.jsp");
			dis.forward(request, response);
		}
		else {
			request.setAttribute("msg", "4");
			RequestDispatcher dis=request.getRequestDispatcher("BoardListCtrl.do");
			dis.forward(request, response);
		}
		
		
		
		
		
	}

}
