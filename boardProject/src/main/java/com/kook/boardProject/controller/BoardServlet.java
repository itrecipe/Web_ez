package com.kook.boardProject.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kook.boardProject.command.Action;

/**
 * Servlet implementation class BoardServlet
 */
@WebServlet("/BoardServlet")
public class BoardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String command = request.getParameter("command");
		//파라미터 변수 값으로 업무처리를 구분한다.
		System.out.println("BoardServlet에서 요청 받은것을 확인 : " + command);
		//command값을 참조하여 명령을 처리하는 객체를 반환하는 클래스 ActionFactory를 사용한다.
		ActionFactory af = ActionFactory.getInstance();
		Action action = af.getAction(command); //command 처리용 객체를 반환한다.
		//action에서 혹시라도 null이 나올수도 있어서 null 처리를 해줌 
		if(action != null){
			action.execute(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//post방식에서 처리할때 form에서 한글깨짐현상 방지처리
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
	}

}
