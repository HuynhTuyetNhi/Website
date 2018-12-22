package ContronllerAdmin;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.CauHoi;
import DAO.CauHoiDAO;
import DAO.QuanlydethiDAO;
import DB.DBConnection;

/**
 * Servlet implementation class InsertCauHoiExcel
 */
@WebServlet("/InsertCauHoiExcel")
public class InsertCauHoiExcel extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertCauHoiExcel() {
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
			Connection conn = DBConnection.CreateConnection();
		
		
		String test = CauHoiDAO.Uploadcauhoidethi(conn, request, response);
		
		if (test.equals("Success"))
		{	
			RequestDispatcher rd = request.getRequestDispatcher("CauHoiforward");
			rd.forward(request,response);	
		}
		else 
		{
			request.setAttribute("msgthemcauhoidethi",test);
	    	RequestDispatcher rd = request.getRequestDispatcher("View/Admin/Themcauhoidethi.jsp");
			rd.forward(request,response);		 
		}
	}

}
