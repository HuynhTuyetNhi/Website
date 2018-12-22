package ContronllerAdmin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.LopHoc;
import BEAN.Member;
import DAO.LopHocDAO;
import DAO.MemberDAO;

/**
 * Servlet implementation class LopHocforward
 */
@WebServlet("/LopHocforward")
public class LopHocforward extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LopHocforward() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<LopHoc> listLopHoc=LopHocDAO.DisplayLopHoc();
		request.setAttribute("listLopHoc", listLopHoc);	
		String trang=request.getParameter("pageid");
		request.setAttribute("page", trang);
		RequestDispatcher rd =request.getRequestDispatcher("View/admin2/Index.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
