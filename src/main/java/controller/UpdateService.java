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
			String sql = "update profile_member set pw=?, nick=? where id=?";
			psmt=conn.prepareStatement(sql);
			psmt.setString(1, pw);
			psmt.setString(2, nick);			
			psmt.setString(3, id);
			
			// 5. SQL�� ����
			int cnt=psmt.executeUpdate();
			
			// 6. SQL�� ��� �� ó��
			if(cnt>0) {
				System.out.println("��������");
				vo=new MemberVO(pw,nick);
				session.setAttribute("member", vo);
				response.sendRedirect("Main.jsp");
							
			}else {
				System.out.println("��������");
				response.sendRedirect("Main.jsp");
			}
			
			
		} catch (Exception e) {			
			e.printStackTrace(); // ���ܻ�Ȳ�� �߻��� ����/������ �ֿܼ� ���
			System.out.println("����̹��ε� ����");
		} finally {
			//try ���� ���ܻ�Ȳ�� �߻��ϴ���/ ���� �ʴ��� ���� ������ �������� ����
			try {
				conn.close();
				psmt.close();
			} catch (SQLException e) {				
				e.printStackTrace();
			}
		}
		
		
		
		
		
	}

}
