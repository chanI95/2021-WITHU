package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.ProfileDAO;
import model.ProfileDTO;

@WebServlet("/UpdateCon")
public class UpdateCon extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("EUC-KR");
		
		HttpSession session = request.getSession();
		ProfileDTO profile = (ProfileDTO)session.getAttribute("login_profile");
		
		
		String id = profile.getId();
		String nick = request.getParameter("nick");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
		String bir = request.getParameter("bir");
		String gender = request.getParameter("gender");
		String addr = request.getParameter("addr");
		
		ProfileDTO update_profile = new ProfileDTO(id, pw, name, nick, tel, addr, bir, gender, null);
		
		ProfileDAO dao = new ProfileDAO();
		
		int cnt = dao.profile_update(update_profile);
		
		
		if(cnt > 0) {
			
			session.setAttribute("login_profile", update_profile);
			response.sendRedirect("MyPage.jsp");
			System.out.println("profile Update Success !");
		} else {
			System.out.println("profile Update Fail...");
			response.sendRedirect("Update.jsp");
		}
		
	}

}
