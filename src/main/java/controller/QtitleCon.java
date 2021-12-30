package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.*;


@WebServlet("/QtitleCon")
public class QtitleCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("EUC-KR");
		HttpSession session = request.getSession();
		ProfileDTO profile = (ProfileDTO)session.getAttribute("login_profile");
		
		String id = profile.getId();
		String qtitle = request.getParameter("Q_Title");
		
		QnADTO qna = new QnADTO(id, 0, qtitle, null, null, null);
		QnADAO dao = new QnADAO();
		
		int cnt = dao.Qtitle_insert(qna);
		
		if(cnt > 0) {
			
			response.sendRedirect("QnA.jsp");
			System.out.println("qtitle save success!!");
			
		} else {
			System.out.println("qtitle fail...");
			response.sendRedirect("Main.jsp");
		}
		
	}

}
