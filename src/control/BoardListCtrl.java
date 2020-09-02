package control;

import java.io.IOException;
import java.util.Vector;

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
 * Servlet implementation class BoardListCtrl
 */
@WebServlet("/BoardListCtrl.do")
public class BoardListCtrl extends HttpServlet {
	
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
		
		
		String pageNum=request.getParameter("pageNum");
		if(pageNum==null) {
			pageNum="1";
		}
		int pageSize=10;
		int count=0;
		int number=0;
		int currentPage=Integer.parseInt(pageNum);
		
		BoardDAO b= new BoardDAO();
		count=b.getAllCount();
		
		int startRow=(currentPage-1)*pageSize+1;
		int endRow=currentPage*pageSize;
		
		Vector<BoardBean> v=b.getAllBoard(startRow,endRow);
		number=count-(currentPage-1)*pageSize;
		
		String msg=(String)request.getAttribute("msg");
		
		request.setAttribute("id", id);
		request.setAttribute("v", v);
		request.setAttribute("pageSize", pageSize);
		request.setAttribute("number", number);
		request.setAttribute("count", count);
		request.setAttribute("currentPage", currentPage);
		request.setAttribute("msg", msg);
		
		RequestDispatcher dis=request.getRequestDispatcher("BoardList.jsp");
		dis.forward(request, response);
	}

}
