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


@WebServlet("/JoinService")
public class JoinService extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("euc-kr");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String nick = request.getParameter("nick");
		int point= 0;
		String sex = request.getParameter("sex");
		String age = request.getParameter("age");
		
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
			String sql = "insert into profile_member values(?,?,?,?,?,?)";
			psmt=conn.prepareStatement(sql);
			psmt.setString(1, id);
			psmt.setString(2, pw);
			psmt.setString(3, nick);
			psmt.setLong(4, point);
			psmt.setString(5, sex);
			psmt.setString(6, age);
			
			// 5. SQL�� ����
			int cnt=psmt.executeUpdate();
			
			// 6. SQL�� ��� �� ó��
			if(cnt>0) {
				System.out.println("ȸ�����Լ���");
				//response.sendRedirect("join_success.jsp?email=email%pw=1234"); query string
				// - forwarding ��� ������ �̵�
				RequestDispatcher rd = request.getRequestDispatcher("Join_success.jsp");
				
				request.setAttribute("nick", nick); // ����� ���� ����
				
				rd.forward(request, response);
			}else {
				System.out.println("ȸ�����Խ���");
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
