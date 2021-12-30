package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.ProfileDAO;
import model.ProfileDTO;


@WebServlet("/LoginCon")
public class LoginCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("EUC-KR");

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		ProfileDAO dao = new ProfileDAO();
		ProfileDTO profile = dao.profile_login(id, pw);


		if (profile != null) {

			System.out.println("Login SUCCESS !!");

			HttpSession session = request.getSession();
			session.setAttribute("login_profile", profile);
			
			request.setAttribute("id", id);
			RequestDispatcher dispatcher = request.getRequestDispatcher("Main.jsp");
			
			dispatcher.forward(request, response);
			
		} else {
			System.out.println("Login FAIL...");
			response.sendRedirect("Login.jsp");
		}
	}

}
