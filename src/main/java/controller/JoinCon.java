package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ProfileDAO;
import model.ProfileDTO;


@WebServlet("/JoinCon")
public class JoinCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("EUC-KR");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String nick = request.getParameter("nick");
		String tel = request.getParameter("tel");
	
		ProfileDAO dao = new ProfileDAO();
		ProfileDTO profile = new ProfileDTO(id, pw, name, nick, tel, null, null, null, null);
		
		int cnt = dao.profile_join(profile);
		
		if(cnt > 0) {
			
			System.out.println("Join SUCCESS !!");
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("Login.jsp");
			request.setAttribute("id", id);
			dispatcher.forward(request, response);
		} else {
			System.out.println("Join FAIL...");
			response.sendRedirect("Join.jsp");
		}
	}

}
