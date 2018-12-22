package ContronllerAdmin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.LopHocDAO;

/**
 * Servlet implementation class Update_Lop_Set
 */
@WebServlet("/Update_Lop_Set")
public class Update_Lop_Set extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Update_Lop_Set() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		
		int IDLop=Integer.parseInt(request.getParameter("isLopID"));
		String TenLopHoc=request.getParameter("isTenLopHoc");
		String TenGiangVien=request.getParameter("isTenGiangVien");
		boolean test=LopHocDAO.updateLop(IDLop, TenLopHoc, TenGiangVien);
		if (test)
		{
			request.setAttribute("msgupdateproduct","update thành công");
			RequestDispatcher rd =request.getRequestDispatcher("LopHocforward?pageid=2");
			rd.forward(request, response);
		}
		else 
		{
			request.setAttribute("msgupdateproduct","update thất bại xin kiểm tra lại");
			RequestDispatcher rd =request.getRequestDispatcher("manager_product_forward?pageid=3");
			rd.forward(request, response);
		}
		
		}
}

