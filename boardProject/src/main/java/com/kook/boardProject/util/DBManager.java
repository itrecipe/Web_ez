package com.kook.boardProject.util;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

//DB를 공통으로 사용하는 부분을 처리하는 클래스
public class DBManager {
	
	public static Connection getConnection() {
		Connection conn = null;
		try {
			Context initContext = new InitialContext();
			Context envContext = (Context)initContext.lookup("java:/comp/env");
			//jdbc/Oracle11라는 이름을 객체에서 찾아서 DataSource가 찾아온다.
			DataSource ds = (DataSource)envContext.lookup("jdbc/Oracle11g");
			//데이터소스 객체 ds가 생성되었으며 COnnection을 구한다.
			conn = ds.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	//select를 수행한 후 리소스 해제를 위한 메소드 (finally 부분)
	public static void close(Connection conn, Statement stmt, ResultSet rs) {
		try {
			rs.close();
			stmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//DML(insert, update, delete을 수행 후 리소스 해제를 위한 메소드 (finally 부분)
	public static void close(Connection conn, Statement stmt) {
		try {
			stmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}