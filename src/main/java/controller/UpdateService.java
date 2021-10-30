package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.MemberVO;


@WebServlet("/UpdateService")
public class UpdateService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("euc-kr");
		
		HttpSession session = request.getSession();
		MemberVO vo =(MemberVO)session.getAttribute("member");
		
		String id =vo.getId();
		String pw = request.getParameter("pw");
		String nick = request.getParameter("nick");		
		
		
		
		Connection conn=null;
		PreparedStatement psmt=null;
		
		
		try {
			// 2. OracleDriver.Class 파일 동적로딩
			// Java는 저희가 어떤 DBMS를 사용할지 모름
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("드라이버로딩 성공");
			
			String db_url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
			String db_id = "hr";
			String db_pw = "hr";
			// 3. oracle에 가서 db_id/db_pw가 맞는지 인증
			conn=DriverManager.getConnection(db_url, db_id, db_pw);
			
			if(conn!=null) {
				System.out.println("연결성공");
			}else {
				System.out.println("연결실패");
			}
			
			// 4. SQL문 준비
			String sql = "update profile_member set pw=?, nick=? where id=?";
			psmt=conn.prepareStatement(sql);
			psmt.setString(1, pw);
			psmt.setString(2, nick);			
			psmt.setString(3, id);
			
			// 5. SQL문 실행
			int cnt=psmt.executeUpdate();
			
			// 6. SQL문 명령 후 처리
			if(cnt>0) {
				System.out.println("수정성공");
				vo=new MemberVO(pw,nick);
				session.setAttribute("member", vo);
				response.sendRedirect("Main.jsp");
							
			}else {
				System.out.println("수정실패");
				response.sendRedirect("Main.jsp");
			}
			
			
		} catch (Exception e) {			
			e.printStackTrace(); // 예외상황이 발생한 이유/순서를 콘솔에 출력
			System.out.println("드라이버로딩 실패");
		} finally {
			//try 에서 예외상황이 발생하던지/ 하지 않던지 간에 무조건 마지막에 실행
			try {
				conn.close();
				psmt.close();
			} catch (SQLException e) {				
				e.printStackTrace();
			}
		}
		
		
		
		
		
	}

}
