package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.BoardDAO;
import model.MemberBean;

/**
 * Servlet implementation class MemberProcCtrl
 */
@WebServlet("/MemberProcCtrl.do")
public class MemberProcCtrl extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request, response);
	}
	
	protected void reqPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		
		BoardDAO b=new BoardDAO();
		MemberBean bean=new MemberBean();
		bean.setId(request.getParameter("id"));
		bean.setPassword(request.getParameter("password"));
		bean.setEmail(request.getParameter("email"));
		bean.setPhone(Integer.parseInt(request.getParameter("phone")));
		bean.setName(request.getParameter("name"));
		
		String password=request.getParameter("password");
		String password2=request.getParameter("password2");
		if(password.equals(password2)) {
			b.insertMember(bean);
			RequestDispatcher dis=request.getRequestDispatcher("Login.jsp");
			dis.forward(request, response);
		}
		else {
			request.setAttribute("msg", 2);
			RequestDispatcher dis=request.getRequestDispatcher("Login.jsp");
			dis.forward(request, response);
		}
	}

}
