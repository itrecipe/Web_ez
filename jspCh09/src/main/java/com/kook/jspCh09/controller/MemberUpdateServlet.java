package com.kook.jspCh09.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kook.jspCh09.dao.MemberDAO;
import com.kook.jspCh09.dto.MemberVO;

/**
 * Servlet implementation class MemberUpdateServlet
 */
@WebServlet("/memberUpdate.do")
public class MemberUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MemberUpdateServlet() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	// 입력창 보여주기는 get
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String userid = request.getParameter("userid");
		// form으로 보내는 경우,주소창에 쿼리문자열로 보내는 경우
		MemberDAO mDao = MemberDAO.getInstance(); // MemberDao의 객체를 생성(dao의 메서드들을 활용)
		MemberVO mVo = mDao.getMember(userid); // 반환을 MemberVO로 반환(1 user의 모든 정보를 수용)
		request.setAttribute("mVo", mVo); // 추가 정보는 setAttribute(속성명,값)
		RequestDispatcher dispatcher = request.getRequestDispatcher("member/memberUpdate.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	// 정보 처리는 post방식으로
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8"); // 포스트 방식에서 클라이언트 입력 한글 깨짐을 방지
		// 폼에서 입력한 회원 정보 얻어오기
		//파라메터는 form의 name="값"의 값, 반환값은 모두 문자열
		String name = request.getParameter("name");
		String userid = request.getParameter("userid");
		String pwd = request.getParameter("pwd");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String admin = request.getParameter("admin");
		// 회원 정보를 저장할 객체 생성
		MemberVO mVo = new MemberVO();
		mVo.setName(name);
		mVo.setUserid(userid);
		mVo.setPwd(pwd);
		mVo.setEmail(email);
		mVo.setPhone(phone);
		mVo.setAdmin(Integer.parseInt(admin)); //데이터베이스의 table에서는 number와 맞추기 위해 admin을 int로 선언
		MemberDAO mDao = MemberDAO.getInstance();
		int result = mDao.updateMember(mVo); //MemberDao의 업데이트 처리하는 메서드 호출
		response.sendRedirect("login.do"); //forward방식이 아닌 sendRedirect로 페이지 이동(브라우져가 다시 접속 요청)
	}
}
