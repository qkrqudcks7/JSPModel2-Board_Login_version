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
import model.MemberBean;

/**
 * Servlet implementation class BoardReWrite
 */
@WebServlet("/BoardReWrite.do")
public class BoardReWrite extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request, response);
	}
	
	protected void reqPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		String id=(String)session.getAttribute("id");
		
		int num=Integer.parseInt(request.getParameter("num"));
		int ref=Integer.parseInt(request.getParameter("ref"));
		int re_step=Integer.parseInt(request.getParameter("re_step"));
		int re_level=Integer.parseInt(request.getParameter("re_level"));
		
		BoardDAO b= new BoardDAO();
		MemberBean bean= b.getOneMember(id);
		
		request.setAttribute("bean", bean);
		request.setAttribute("id", id);
		request.setAttribute("num", num);
		request.setAttribute("ref", ref);
		request.setAttribute("re_step", re_step);
		request.setAttribute("re_level", re_level);
		
		RequestDispatcher dis=request.getRequestDispatcher("BoardReWrite.jsp");
		dis.forward(request, response);
	}

}
