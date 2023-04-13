package com.kook.boardProject.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.kook.boardProject.dto.BoardVO;
import com.kook.boardProject.util.DBManager;

//DB 접근 및 처리 모델
public class BoardDAO {

	//기본 생성자 생성
	//private를 넣었으니 외부에서 접근불가
	private BoardDAO() {
		super();
	}
	
	//유일한 객체
	private static BoardDAO instance = new BoardDAO();
	//static(동적할당) 이므로 클래스 로딩시 BoardDAO객체를 미리 만들어 준다.
	
	public static BoardDAO getInstance() {
		return instance;
	}
	
	public List<BoardVO> selectAllBoards(){
		String sql = "select * from board order by num desc";
		//나중에 작성한 게시글이 먼저 나오도록 정렬한다.
		List<BoardVO> list = new ArrayList<BoardVO>();
		//테이블 반환 resultSet의 각 행을 BoardVO 객체로 변환하여 저장하는 list
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				BoardVO bVo = new BoardVO();
				bVo.setNum(rs.getInt("num"));
				bVo.setName(rs.getString("name"));
				bVo.setEmail(rs.getString("email"));
				bVo.setPass(rs.getString("pass"));
				bVo.setTitle(rs.getString("title"));
				bVo.setContent(rs.getString("content"));
				bVo.setReadcount(rs.getInt("readcount"));
				bVo.setWritedate(rs.getTimestamp("writerdate"));
				list.add(bVo); //list에 bVo객체를 추가하기
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			DBManager.close(conn, stmt, rs);
		}
		return list;
	}
	
	//게시글 등록 처리 (insert)
	public void insertBoard(BoardVO bVo) {
		String sql = "insert into board(num, name, email, pass, title, content) values(board_seq.nextval, ?, ?, ?, ?, ?)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bVo.getName());
			pstmt.setString(2, bVo.getEmail());
			pstmt.setString(3, bVo.getPass());
			pstmt.setString(4, bVo.getTitle());
			pstmt.setString(5, bVo.getContent());
			pstmt.executeUpdate();		
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}
}