package ContronllerAdmin;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.DethiDAO;




@WebServlet("/UpdateDethi")
public class UpdateDethi extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public UpdateDethi() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			long id =Long.parseLong(request.getParameter("iddethi")) ;
			ResultSet rSet=DethiDAO.getData("select * from dethi1 where dethiID="+"'"+id+"'");
			rSet.next();
			request.setAttribute("dethi", rSet);
			}
			catch(Exception ex){
				ex.printStackTrace();
			}
			RequestDispatcher rd =request.getRequestDispatcher("View/Admin/UpdateDeThi.jsp");
			rd.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
