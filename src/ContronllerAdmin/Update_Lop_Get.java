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
 * Servlet implementation class Update_Lop_Get
 */
@WebServlet("/Update_Lop_Get")
public class Update_Lop_Get extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Update_Lop_Get() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			long id =Long.parseLong(request.getParameter("idlop")) ;
			ResultSet rSet=LopHocDAO.getData("select * from lop where MaLop="+"'"+id+"'");
			rSet.next();
			request.setAttribute("lop", rSet);
			}
			catch(Exception ex){
				ex.printStackTrace();
			}
			RequestDispatcher rd =request.getRequestDispatcher("View/Admin1/update_lop_get.jsp");
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
