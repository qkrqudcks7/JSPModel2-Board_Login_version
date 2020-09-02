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
import model.MemberBean;

/**
 * Servlet implementation class BoardWrite
 */
@WebServlet("/BoardWrite.do")
public class BoardWrite extends HttpServlet {
	
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
		
		BoardDAO b= new BoardDAO();
		MemberBean bean=b.getOneMember(id);
		
		request.setAttribute("id", id);
		request.setAttribute("bean", bean);
		
		RequestDispatcher dis= request.getRequestDispatcher("BoardWrite.jsp");
		dis.forward(request, response);
		
	}

}
