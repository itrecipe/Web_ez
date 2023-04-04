package com.kook.ch02;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloServlet
 */

//서블릿 패턴을 처리하는 어노테이션
@WebServlet("/hello")
public class HelloServlet extends HttpServlet {
	//자동으로 부여되는 클래스의 고유번호
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
    */

	public HelloServlet() {
        super();
    
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		// 클라이언트에게 응답할 페이지 정보를 셋팅한다.
		response.setContentType("text/html; charset=UTF-8");
		//out객체 생성 이전에 설정해줘야 한다.
		// [Ctrl + Shift + O(알파벳)] : 자동 import
		//PrintWriter객체 생성
		PrintWriter out=response.getWriter();
		//클라이언트(브라우저)로 보낼 HTML 문장을 출력 스트림 out에 println하면 출력 된다.
		out.print("<html><body><h1>");
		out.print("Hello Servlet, 한글 입력");
		out.print("</h1></body></html>");
		out.close(); //사용후 자원 반납
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
