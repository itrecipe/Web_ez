package com.kook.boardProject.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kook.boardProject.dao.BoardDAO;
import com.kook.boardProject.dto.BoardVO;

public class BoardWriteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		BoardVO bVo = new BoardVO(); //form의 입력 값을 수용할 bin클래스
		bVo.setName(request.getParameter("name")); //form의 name="name"의 입력값을 얻어낸다.
		bVo.setPass(request.getParameter("pass")); //form의 name="pass"의 입력값을 얻어낸다.
		bVo.setEmail(request.getParameter("email"));
		bVo.setTitle(request.getParameter("title"));
		bVo.setContent(request.getParameter("content"));
		BoardDAO bDao = BoardDAO.getInstance();
		bDao.insertBoard(bVo); //bDao의 게시글 등록 메서드를 호출한다.
		new BoardListAction().execute(request, response);
	}
}
