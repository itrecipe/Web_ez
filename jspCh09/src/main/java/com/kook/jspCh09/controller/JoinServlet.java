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
 * Servlet implementation class JoinServlet
 */
@WebServlet("/join.do")
public class JoinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public JoinServlet() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	// join.do를 get방식으로 요청하면 join창으로 페이지 이동
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("member/join.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//입력창에 오는 한글 깨짐 방지
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		String userid = request.getParameter("userid");
		String pwd = request.getParameter("pwd");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String admin = request.getParameter("admin");
		MemberVO mVo = new MemberVO();
		mVo.setName(name);
		mVo.setUserid(userid);
		mVo.setPwd(pwd);
		mVo.setEmail(email);
		mVo.setPhone(phone);
		mVo.setAdmin(Integer.parseInt(admin)); //클라이언트 오는 데이터는 전부 문자열
		MemberDAO mDao = MemberDAO.getInstance();
		int result = mDao.insertMember(mVo);
		HttpSession session = request.getSession();
		if (result == 1) { //회원가입 성공
			session.setAttribute("userid", mVo.getUserid()); //project 전체페이지 사용
			request.setAttribute("message", "회원 가입에 성공했습니다."); //현재 요청 페이지에서만 사용
		} else {
			request.setAttribute("message", "회원 가입에 실패했습니다.");
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher("member/login.jsp");
		dispatcher.forward(request, response);
	}

}
