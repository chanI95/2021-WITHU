package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.*;


@WebServlet("/QnARepleCon")
public class QnARepleCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("EUC-KR");
		
		HttpSession session = request.getSession();
		ProfileDTO profile = (ProfileDTO)session.getAttribute("login_profile");
		
		String id = profile.getId();
		int b_no = Integer.parseInt(request.getParameter("B_NO"));
		String reple = request.getParameter("recontent");
		
		QRepleDTO qreple = new QRepleDTO(b_no, id, reple);
		QRepleDAO dao = new QRepleDAO();
		
		int cnt = dao.QReple_insert(qreple);
		
		if(cnt > 0) {
			
			response.sendRedirect("Main.jsp");
			System.out.println("qreple save success!!");
			
		} else {
			System.out.println("qreple fail...");
			response.sendRedirect("Main.jsp");
		}
	
	}

}
