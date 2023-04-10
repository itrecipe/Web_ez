package com.kook.jspCh09.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kook.jspCh09.dao.MemberDAO;
import com.kook.jspCh09.dto.MemberVO;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login.do")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "member/login.jsp";
		HttpSession session = request.getSession();
		if (session.getAttribute("loginUser") != null) {// 이미 로그인 된 사용자이면
			url = "main.jsp"; // 메인 페이지로 이동한다.
		}
		// 포워딩 방식으로 페이지 이동
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "member/login.jsp";
		String userid = request.getParameter("userid");
		String pwd = request.getParameter("pwd");
		MemberDAO mDao = MemberDAO.getInstance(); //db처리 객체
		int result = mDao.userCheck(userid, pwd);
		if (result == 1) {
			MemberVO mVo = mDao.getMember(userid);
			HttpSession session = request.getSession();
			session.setAttribute("loginUser", mVo); //session의속성 loginUser에 빈클래스객체 mVo를 설정
			request.setAttribute("message", "회원 가입에 성공했습니다.");
			url = "main.jsp";
		} else if (result == 0) {
			request.setAttribute("message", "비밀번호가 맞지 않습니다."); //실패시는 request객체 속성 message에 설정
		} else if (result == -1) {
			request.setAttribute("message", "존재하지 않는 회원입니다.");
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
