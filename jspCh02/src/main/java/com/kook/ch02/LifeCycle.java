package com.kook.ch02;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LifeCycle
 */
@WebServlet("/lcycle")
public class LifeCycle extends HttpServlet {
	//public abstract class HttpServlet extends GenericServlet
	//HttServlet은 추상 클래스
	private static final long serialVersionUID = 1L;
       
	//멤버 변수들
	int initCount = 1;
	int doGetCount = 1;
	int destoryCount = 1;
    
	/**
     * @see HttpServlet#HttpServlet()
     */
	
    public LifeCycle() {
        super();
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	
    public void init(ServletConfig config) throws ServletException {
    	//맨처음 한번만 보임
    	System.out.println("init 메소드는 첫 요청만 호출 : " + initCount++);
	}

	/**
	 * @see Servlet#destroy()
	 */
    
	public void destroy() {
		//server stop시 한번 호출(아래 server 선택 -> 톰캣서버 우클릭 -> stop해야 보인다.)
		System.out.println("destory 메소드는 톰캣이 종료될 때만 호출 : " + destoryCount++);
	}
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	*/
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		//요청될때마다 호출
		System.out.println("doGet 메소드가 요청때마다 호출됨 : " + doGetCount++);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}