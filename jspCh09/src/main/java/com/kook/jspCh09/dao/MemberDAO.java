package com.kook.jspCh09.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import com.kook.jspCh09.dto.MemberVO;

//database처리 클래스
public class MemberDAO {
	
	//private으로 생성자를 정의하여 외부에서 객체 생성 하는것을 막아둠
	//싱글톤 패턴구현
	private MemberDAO() {
		
	}
	//내부에서 클래스 로딩시 객체 생성
	private static MemberDAO instance = new MemberDAO();
	
	//외부에서는 메서드로 객체 반환
	public static MemberDAO getInstance() {
		return instance;
	}
	
	public Connection getConnection() throws Exception {
		Connection conn = null;
		Context initContext = new InitialContext();
		Context envContext = (Context) initContext.lookup("java:/comp/env");
		DataSource ds = (DataSource) envContext.lookup("jdbc/Oracle11g");
		conn = ds.getConnection();
		return conn;
	}
	//사용자 인증시 사용하는 메소드
	 public int userCheck(String userid, String pwd) {
	      int result = -1;
	      String sql = "select pwd from member where userid=?";
	      Connection conn = null;
	      PreparedStatement pstmt = null;
	      ResultSet rs = null;
	      
	      try {
	         conn = getConnection();
	         pstmt =  conn.prepareStatement(sql);
	         pstmt.setString(1, userid);
	         rs =pstmt.executeQuery();
	         if (rs.next()) {
	            if(rs.getString("pwd") != null && rs.getString("pwd").equals(pwd)) {
	               result = 1; //정상 로그인
	            } else{result = 0;
	            } //pwd 틀림   
	         }
	         else {result = -1; //id 없음
	         }
	      } catch (Exception e) {
	         e.printStackTrace();
	      } finally {
	         try {
	            if(rs != null) {
	               rs.close();
	            }
	            if(pstmt != null) {
	               pstmt.close();
	            }
	            if(conn != null) {
	               conn.close();
	            }
	   
	         } catch (Exception e2) {
	            e2.printStackTrace();
	         }
	      }
	      return result;
	   }//userCheck method;

	
	//아이디로 회원 정보 가져오는 메소드
	public MemberVO getMember(String userid) {
		MemberVO mVo = null;
		String sql = "select * from member where userid=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			 conn = getConnection();
			 pstmt = conn.prepareStatement(sql);
			 pstmt.setString(1, userid);
			 rs = pstmt.executeQuery();
			 if(rs.next()) {
				 mVo = new MemberVO();
				 mVo.setName(rs.getString("name")); //getString("테이블의 컬럼명")
				 mVo.setUserid(rs.getString("userid"));
				 mVo.setPwd(rs.getString("pwd"));
				 mVo.setEmail(rs.getString("email"));
				 mVo.setPhone(rs.getString("phone"));
				 mVo.setAdmin(rs.getInt("admin")); //admin컬럼의 테이터형이 number이므로 getInt()
			 }
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) {
					rs.close();
				}
				if(pstmt != null) {
					pstmt.close();
				}
				if(conn != null) {
					conn.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return mVo;
	}
	
	//회원가입 처리 메서드
	public int insertMember(MemberVO mVo) {
		int result = -1;
		String sql = "insert into member values(?, ?, ?, ?, ?, ?)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		//insert시 반환이 ResultSet가 아닌 성공한 개수를 반환
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mVo.getName());
			pstmt.setString(2, mVo.getUserid());
			pstmt.setString(3, mVo.getPwd());
			pstmt.setString(4, mVo.getEmail());
			pstmt.setString(5, mVo.getPhone());
			pstmt.setInt(6, mVo.getAdmin());
			result = pstmt.executeUpdate(); //insert,update,delete executeUpdate()사용, 성공한 개수 반환
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(pstmt != null)
					pstmt.close();				
				
				if(conn != null) 
					conn.close();
				
				} catch (Exception e) {
					e.printStackTrace();
				}
		}		
		return result;
	}
}