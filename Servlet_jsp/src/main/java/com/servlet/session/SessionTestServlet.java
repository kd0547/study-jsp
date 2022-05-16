package com.servlet.session;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


@WebServlet("/sessionTest")
public class SessionTestServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html; charset=UTF-8");
		PrintWriter out = resp.getWriter();
		//클라이언트로부터 전달된 질의 문자열 중에서 p 값을 추출하여 String param 변수에 저장
		String param = req.getParameter("p");
		
		String msg = null;
		
		HttpSession session = null;
		
		//클라로부터 전달받은 p의 값이 create와 같으면 아래 코드를 실행
		if(param.equals("create")) {
			session = req.getSession();
			if(session.isNew()) {
				msg = "새로운 세션 객체가 생성됨";
				System.out.println(req.getSession(false));
			} else {
				msg = "기존의 세션 객체가 리턴됨";
			}
			
		} else if(param.equals("delete")) {
			/*
			 * 	1. getSession(), getSession(true)
			 * 		-	HttpSession이 존재하면 현재 HttpSession을 반환하고 존재하지 않으면 새로운 세션을 생성
			 * 
			 * 	2.getSession(false) 
			 * 		- HttpSession이 존재하면 현재 HttpSession을 반환하고 존재하지 않으면 새로운 세션을 생성하지 않고 NULL을 반환
			 */
			session = req.getSession(false);
			if(session != null) {
				/*
				 * 	invalidate() 메서드는 세션의 삭제가 아니라 무효화인가?
				 * 
				 *		세션 검증 코드
				 * 	https://kim-jihoon.tistory.com/12
				 * 
				 */
				session.invalidate();
				msg = "세션 객체 삭제 작업 완료";
				System.out.println(req.getSession(false));
				
			} else {
				msg = "삭제할 세션 존재하지 않음";
			}
		}	else if(param.equals("add")) {
			session = req.getSession(true);
			session.setAttribute("msg","메시지입니다.");
			msg = "세션 객체에 데이터 등록 완료";
			System.out.println(req.getSession(false));
		} else if(param.equals("get")) {
			session = req.getSession(false);
			if(session != null) {
				String str = (String) session.getAttribute("msg");
				msg = str;
				System.out.println(req.getSession(false));
			} else {
				msg = "데이터를 추출할 세션 객체 존재하지 않음";
			}
		} else if(param.equals("remove")) {
			session = req.getSession(false);
			if(session != null) {
				session.removeAttribute("msg");
				msg = "세션 객체의 데이터 삭제 완료";
				System.out.println(req.getSession(false));
			} else {
				msg = "데이터를 삭제할 세션 객체 존재하지 않음";
			}
		} else if(param.equals("replace")) {
			session = req.getSession();
			session.setAttribute("msg", "새로운 메시지입니다.");
			System.out.println(req.getSession(false));
			
		}
		
		out.print("처리 결과 :" + msg);
		out.close();
		
		
	}

	
}
