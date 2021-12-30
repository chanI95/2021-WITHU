package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.DiaryDTO;
import model.ProfileDTO;
import model.DiaryDAO;

@WebServlet("/DiarySaveCon")
public class DiarySaveCon extends HttpServlet {
   private static final long serialVersionUID = 1L;

   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
      request.setCharacterEncoding("euc-kr");
      
      HttpSession session = request.getSession();
      ProfileDTO profile = (ProfileDTO)session.getAttribute("login_profile");
      
      
      // 글제목, 사진, 글내용, 공개여부를 변수에 저장
      String id = profile.getId();
      String d_title = request.getParameter("title");
      String d_img = request.getParameter("img");
      String d_content = request.getParameter("content");
      String d_private = request.getParameter("private");
      
      
      // 위 정보들을 하나로 묶어주는 객체 생성
      DiaryDTO diary = new DiaryDTO(id, 0, d_title, d_img, d_content, d_private, null);
      System.out.println(diary);
      
      // 저장된 정보를 DB로 전달
      DiaryDAO dao = new DiaryDAO();
      
      int cnt = dao.diary_save(diary);
      
      if(cnt > 0) { 
         response.sendRedirect("Main.jsp");
         System.out.println("Diary was Saved successfully !");
      } else {
         response.sendRedirect("Main.jsp");
         System.out.println("Diary didn't Saved .....");
      }
       
   
   }

}