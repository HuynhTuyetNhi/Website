package ContronllerAdmin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.LopHocDAO;
import DAO.MemberDAO;

/**
 * Servlet implementation class DeleteLop
 */
@WebServlet("/DeleteLop")
public class DeleteLop extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteLop() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		long idLop=Long.parseLong(request.getParameter("idlop"));
		boolean test =LopHocDAO.deleteLopHoc(idLop);
		if (test)
		{
			request.setAttribute("msgdeletecategory","Xóa thành công");
			RequestDispatcher rDispatcher=request.getRequestDispatcher("LopHocforward?pageid=2");
			rDispatcher.forward(request, response);
		}
		else 
		{
			request.setAttribute("msgdeletecategory","Xóa thất bại xin kiểm tra lại");
			RequestDispatcher rDispatcher=request.getRequestDispatcher("UserForWard");
			rDispatcher.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
