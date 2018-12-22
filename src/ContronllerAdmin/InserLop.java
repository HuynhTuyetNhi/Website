package ContronllerAdmin;

import java.io.IOException;

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
 * Servlet implementation class InserLop
 */
@WebServlet("/InserLop")
public class InserLop extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InserLop() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String tenLop = request.getParameter("isLopHoc");
		String tenGiangVien = request.getParameter("isTenGiangVien");
		LopHoc lopHoc=new LopHoc();
		lopHoc.setTenLop(tenLop);
		lopHoc.setTenGiangVien(tenGiangVien);
		//boolean test = CategoryDAO.insertCategory(category);
		boolean test=LopHocDAO.insertlop(lopHoc);
		if (test)
		{
			request.setAttribute("msgaddmember","thêm thành công");
			RequestDispatcher rDispatcher=request.getRequestDispatcher("LopHocforward?pageid=2");
			rDispatcher.forward(request,response);
		}
		else 
		{
			request.setAttribute("msgaddmember","thêm thất bại");
			RequestDispatcher rd = request.getRequestDispatcher("View/Admin/addUser.jsp");
			rd.forward(request,response);
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
