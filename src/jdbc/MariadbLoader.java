package jdbc;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

public class MariadbLoader extends HttpServlet {

	@Override
	public void init(ServletConfig config) throws ServletException {
		
		try {
			Class.forName("org.mariadb.jdbc.Driver");
			System.out.println("드라이버 로딩성공");
		} catch (Exception e) {
			throw new ServletException(e);
		}
		
	}

}
