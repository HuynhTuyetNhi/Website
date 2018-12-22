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
import BEAN.dethi;
import DAO.CauHoiDAO;
import DAO.DethiDAO;

/**
 * Servlet implementation class DeThiforward
 */
@WebServlet("/DeThiforward")
public class DeThiforward extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeThiforward() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<dethi> listdethi=DethiDAO.Displaydethi();
		request.setAttribute("listdethi", listdethi);
		String trang=request.getParameter("pageid");
		request.setAttribute("page", trang);
		RequestDispatcher rd =request.getRequestDispatcher("View/admin2/Index.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
