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
		System.out.println("����1");
		request.setCharacterEncoding("euc-kr");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		
		Connection conn=null;
		PreparedStatement psmt=null;
		ResultSet rs=null;
		
		
		try {
			// 2. OracleDriver.Class ���� �����ε�
			// Java�� ���� � DBMS�� ������� ��
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("����̹��ε� ����");
			
			String db_url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
			String db_id = "hr";
			String db_pw = "hr";
			// 3. oracle�� ���� db_id/db_pw�� �´��� ����
			conn=DriverManager.getConnection(db_url, db_id, db_pw);
			
			if(conn!=null) {
				System.out.println("���Ἲ��");
			}else {
				System.out.println("�������");
			}
			
			// 4. SQL�� �غ�
			String sql = "select * from profile_member where id =? and pw =?";
			psmt=conn.prepareStatement(sql);
			psmt.setString(1, id);
			psmt.setString(2, pw);
					
			// 5. SQL�� ����
			rs = psmt.executeQuery();			
			if(rs.next()) { // ����ڰ� �Է��� ���� ���̺�� ����
				System.out.print("�α��μ���");
				
				String getid = rs.getString(1);				
				String nick= rs.getString(3);				
				
				MemberVO vo = new MemberVO(getid,nick);
				
				HttpSession session = request.getSession();
												
				RequestDispatcher rd = request.getRequestDispatcher("Login_success.jsp");
				request.setAttribute("nick", nick);
				rd.forward(request, response);
				session.setAttribute("member", vo); // ����� ���� ����
				//response.sendRedirect("Main.jsp");				
				
			}else { // ����ڰ� �Է��� ���� ���̺�� ���� x
				System.out.println("�α��ν���");
				response.sendRedirect("Login.html");
			}
			
			
		} catch (Exception e) {			
			e.printStackTrace(); // ���ܻ�Ȳ�� �߻��� ����/������ �ֿܼ� ���
			System.out.println("����̹��ε� ����");
		} finally {
			//try ���� ���ܻ�Ȳ�� �߻��ϴ���/ ���� �ʴ��� ���� ������ �������� ����
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
