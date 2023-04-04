package com.kook.ch02;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloServlet03
 */
@WebServlet("/HelloServlet03")
public class HelloServlet03 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    
	public HelloServlet03() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at: ").append(request.getContextPath());
    	response.setContentType("text/html; charset=UTF-8");
    	/* 한글 처리를 위해 charset="UTF-8"을 추가
    	 * 클라이언트에 보내는 html의 인코딩을 html의 charset과 동일하게 지정
    	 * 반드시 out 객체 이전에 설정
    	*/
    	
    	PrintWriter out = response.getWriter();
    	out.print("<html><body><h1>");
    	out.print("Hello Servlet");
    	out.print(" 헬로우 서블릿");
    	out.print("</h1></body></html>");
    	out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//doGet(request, response);
	}

}
