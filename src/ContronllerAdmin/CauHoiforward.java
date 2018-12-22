package ContronllerAdmin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.CauHoi;
import BEAN.Member;
import DAO.CauHoiDAO;
import DAO.MemberDAO;

/**
 * Servlet implementation class CauHoiforward
 */
@WebServlet("/CauHoiforward")
public class CauHoiforward extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CauHoiforward() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<CauHoi> listCauHoi=CauHoiDAO.DisplayCauHoi();
		request.setAttribute("listCauHoi", listCauHoi);
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
