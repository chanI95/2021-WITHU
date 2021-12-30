package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.SendResult;
import javax.websocket.Session;

@WebServlet("/QuestionCon")
public class QuestionCon extends HttpServlet {

	protected void service(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		
		int randNum = (int)(Math.random()*70)+1;
		Session.setAttribute("randNum", randNum);
		System.out.println(randNum);
	}

}
