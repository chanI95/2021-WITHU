package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.*;

@WebServlet("/QnACon")
public class QnACon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("EUC-KR");
		
		HttpSession session = request.getSession();
		ProfileDTO profile = (ProfileDTO)session.getAttribute("login_profile");
		
		String id = profile.getId();
		String q_content = request.getParameter("content");
		String q_private = request.getParameter("private");

		
		QnADTO qna = new QnADTO(id, 0, null, q_content, q_private, null);
		
		QnADAO dao = new QnADAO();
		
		int cnt = dao.QnA_update(qna);
		
		
		if(cnt > 0) {

			response.sendRedirect("Main.jsp");
			System.out.println("QnA Update Success !");
		} else {
			System.out.println("QnA Update Fail...");
			response.sendRedirect("QnA.jsp");
		}
		
	}

}
