package ContronllerAdmin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.CauHoi;
import DAO.CauHoiDAO;

/**
 * Servlet implementation class InsertCauHoi
 */
@WebServlet("/InsertCauHoi")
public class InsertCauHoi extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertCauHoi() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd =request.getRequestDispatcher("View/Admin/AddCauHoi.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		if(request.getParameter("button1")!=null)
		{
		String CauHoi = request.getParameter("iscauhoi");
		String DapAnA = request.getParameter("isdapanA");
		String DapAnB = request.getParameter("isdapanB");
		String DapAnC = request.getParameter("isdapanC");
		String DapAnD = request.getParameter("isdapanD");
		String DapAn = request.getParameter("isdapan");
		int LoaiCau =Integer.parseInt(request.getParameter("isloaicauhoi"));
		
		CauHoi cauhoi =new CauHoi();
		cauhoi.setTenCauHoi(CauHoi);
		cauhoi.setDapAnA(DapAnA);
		cauhoi.setDapAnB(DapAnB);
		cauhoi.setDapAnC(DapAnC);
		cauhoi.setDapAnD(DapAnD);
		cauhoi.setDapAn(DapAn);
		cauhoi.setLoaiCauID(LoaiCau);
		
		//boolean test = CategoryDAO.insertCategory(category);
		boolean test=CauHoiDAO.insertCauHoi(cauhoi);
		if (test)
		{
			request.setAttribute("msgaddmember","thêm thành công");
			RequestDispatcher rd = request.getRequestDispatcher("View/Admin/AddCauHoi.jsp");
			rd.forward(request,response);
		}
		else 
		{
			request.setAttribute("msgaddmember","thêm thất bại");
			RequestDispatcher rd = request.getRequestDispatcher("View/Admin/AddCauHoi.jsp");
			rd.forward(request,response);
		}
		}
		else
		{
			RequestDispatcher rd = request.getRequestDispatcher("CauHoiforward");
			rd.forward(request,response);
		}
	}
	}

