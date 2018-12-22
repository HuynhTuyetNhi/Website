package ContronllerAdmin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.MemberDAO;

/**
 * Servlet implementation class DeleteUser
 */
@WebServlet("/DeleteUser")
public class DeleteUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DeleteUser() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		long memberid = Long.parseLong(request.getParameter("idmember"));
		boolean test = MemberDAO.deleteMemBer(memberid);

		if (test) {
			request.setAttribute("msgdeletecategory", "Xóa thành công");
			RequestDispatcher rDispatcher = request.getRequestDispatcher("UserForWard?pageid=1");
			rDispatcher.forward(request, response);
		} else {
			request.setAttribute("msgdeletecategory", "Xóa thất bại xin kiểm tra lại");
			RequestDispatcher rDispatcher = request.getRequestDispatcher("UserForWard");
			rDispatcher.forward(request, response);
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
