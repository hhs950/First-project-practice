package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.MemberVO;


@WebServlet("/LoginService")
public class LoginService extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("성공1");
		request.setCharacterEncoding("euc-kr");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		
		Connection conn=null;
		PreparedStatement psmt=null;
		ResultSet rs=null;
		
		
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
			String sql = "select * from profile_member where id =? and pw =?";
			psmt=conn.prepareStatement(sql);
			psmt.setString(1, id);
			psmt.setString(2, pw);
					
			// 5. SQL문 실행
			rs = psmt.executeQuery();			
			if(rs.next()) { // 사용자가 입력한 값이 테이블상에 존재
				System.out.print("로그인성공");
				
				String getid = rs.getString(1);				
				String nick= rs.getString(3);				
				
				MemberVO vo = new MemberVO(getid,nick);
				
				HttpSession session = request.getSession();
												
				RequestDispatcher rd = request.getRequestDispatcher("Login_success.jsp");
				request.setAttribute("nick", nick);
				rd.forward(request, response);
				session.setAttribute("member", vo); // 기억할 값을 설정
				//response.sendRedirect("Main.jsp");				
				
			}else { // 사용자가 입력한 값이 테이블상에 존재 x
				System.out.println("로그인실패");
				response.sendRedirect("Login.html");
			}
			
			
		} catch (Exception e) {			
			e.printStackTrace(); // 예외상황이 발생한 이유/순서를 콘솔에 출력
			System.out.println("드라이버로딩 실패");
		} finally {
			//try 에서 예외상황이 발생하던지/ 하지 않던지 간에 무조건 마지막에 실행
			try {
				rs.close();
				conn.close();
				psmt.close();
			} catch (SQLException e) {				
				e.printStackTrace();
			}
		}
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
