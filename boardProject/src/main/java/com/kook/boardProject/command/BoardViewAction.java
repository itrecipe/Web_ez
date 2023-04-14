package com.kook.boardProject.command;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kook.boardProject.dao.BoardDAO;
import com.kook.boardProject.dto.BoardVO;

public class BoardViewAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		String url = "board/boardView.jsp"; //조회화면
		String num = request.getParameter("num"); //form에서 오는 값은 문자열이다.
		BoardDAO bDao = BoardDAO.getInstance();
		bDao.updateReadCount(num); //조회수를 처리하는 메서드
		BoardVO bVo = bDao.selectOneBoardByNum(num); //조회 대상을 데이터 처리한다.
		request.setAttribute("board", bVo); //이동하는 JSP에서 사용할수 있도록 속성을 추가한다.
		RequestDispatcher dispather = request.getRequestDispatcher(url);
		dispather.forward(request, response);
	}
}