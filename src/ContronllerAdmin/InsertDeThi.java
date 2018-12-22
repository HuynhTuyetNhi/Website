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


@WebServlet("/InsertDeThi")
public class InsertDeThi extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public InsertDeThi() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd =request.getRequestDispatcher("View/Admin/ThemDeThi.jsp");
		rd.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
request.setCharacterEncoding("UTF-8");
		
		if(request.getParameter("button1")!=null)
		{
		String tendethi = request.getParameter("isdethi");
		int socaude = Integer.parseInt(request.getParameter("issocaude"));
		int socautrungbinh = Integer.parseInt(request.getParameter("issocautrungbinh"));
		int socaukho = Integer.parseInt(request.getParameter("issocaukho"));
		String thoigianmode = request.getParameter("isthoigianmode");
		int thoigianlambai = Integer.parseInt(request.getParameter("isthoigianlambai"));
		int loplambai =Integer.parseInt(request.getParameter("isloplambai"));
		
		dethi dethi=new dethi();
		dethi.setTendethi(tendethi);
		dethi.setSocaude(socaude);
		dethi.setSocautrungbinh(socautrungbinh);
		dethi.setSocaukho(socaukho);
		dethi.setThoigianmode(thoigianmode);
		dethi.setThoigianlambai(thoigianlambai);
		dethi.setLop(loplambai);
		
		//boolean test = CategoryDAO.insertCategory(category);
		boolean test=DethiDAO.insertDeThi(dethi);
		DethiDAO.themcauhoivaodethi1(dethi);
		//boolean test=CauHoiDAO.insertCauHoi(cauhoi);
		List<dethi> listdethi=DethiDAO.Displaydethi();
		request.setAttribute("listdethi", listdethi);
		if (test)
		{
			request.setAttribute("msgaddmember","thêm thành công");
			RequestDispatcher rd = request.getRequestDispatcher("View/Admin/Quanlydethi1.jsp");
			rd.forward(request,response);
		}
		else 
		{
			request.setAttribute("msgaddmember","thêm thất bại");
			RequestDispatcher rd = request.getRequestDispatcher("Quanlydethi1.jsp");
			rd.forward(request,response);
		}
		}
		else
		{
			RequestDispatcher rd = request.getRequestDispatcher("DeThiforward");
			rd.forward(request,response);
		}
	}
	

}
