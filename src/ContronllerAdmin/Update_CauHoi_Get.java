package ContronllerAdmin;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.LopHocDAO;

/**
 * Servlet implementation class Update_CauHoi_Get
 */
@WebServlet("/Update_CauHoi_Get")
public class Update_CauHoi_Get extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Update_CauHoi_Get() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			long id =Long.parseLong(request.getParameter("IDCauHoi")) ;
			ResultSet rSet=LopHocDAO.getData("select * from cauhoi where CauHoiID="+"'"+id+"'");
			rSet.next();
			request.setAttribute("CauHoi", rSet);
			}
			catch(Exception ex){
				ex.printStackTrace();
			}
			RequestDispatcher rd =request.getRequestDispatcher("View/Admin1/update_cauhoi_get.jsp");
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
