package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.*;


@WebServlet("/TestCon")
public class TestCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("EUC-KR");
		HttpSession session = request.getSession();
		ProfileDTO profile = (ProfileDTO)session.getAttribute("login_profile");
		
		String id = profile.getId();
		int score = Integer.parseInt(request.getParameter("sum"));
		
		TestDTO test = new TestDTO(0, id, score);
		TestDAO dao = new TestDAO();
		
		int cnt = dao.Test_insert(test);
		
		if(cnt > 0) {
			
			response.sendRedirect("MyPage.jsp");
			System.out.println("test save success!!");
			
		} else {
			System.out.println("test fail...");
			response.sendRedirect("Test.jsp");
		}
		
	}

}
