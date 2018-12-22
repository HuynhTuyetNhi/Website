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
import DAO.DethiDAO;


@WebServlet("/XemDeThi")
public class XemDeThi extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public XemDeThi() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int IDDeThi=Integer.parseInt(request.getParameter("iddethi"));
		List<CauHoi> chitietdethi=DethiDAO.Displaydethichitiet(IDDeThi);
		request.setAttribute("chitietdethi", chitietdethi);
		RequestDispatcher rDispatcher=request.getRequestDispatcher("View/Admin/XemDeThi.jsp");
		rDispatcher.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
