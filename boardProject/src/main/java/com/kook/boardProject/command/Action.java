package com.kook.boardProject.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//command 처리 인터페이스
public interface Action {

	//추상 메서드 하나로 처리
	public void execute(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException;
}
