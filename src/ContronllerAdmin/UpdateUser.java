package ContronllerAdmin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.Member;
import DAO.MemberDAO;

/**
 * Servlet implementation class UpdateUser
 */
@WebServlet("/UpdateUser")
public class UpdateUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		Long MemberID=Long.parseLong(request.getParameter("idmember"));
		List<Member> listMemBer1=MemberDAO.Display1member(MemberID);
		request.setAttribute("listMemBer1", listMemBer1);
		RequestDispatcher rd =request.getRequestDispatcher("View/Admin/UpdateUser.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		if(request.getParameter("button1")!=null)
		{
		long memberid=Long.parseLong(request.getParameter("isid"));
		String ishoten = request.getParameter("ishoten");
		String istendn = request.getParameter("istendn");
		String ismatkhau = request.getParameter("ismatkhau");
		String sex=request.getParameter("rdsex");
		String isdt = request.getParameter("isdt");
		String isdc =request.getParameter("isdc");
		String isngaysinh=request.getParameter("isngaysinh");
		String islop=request.getParameter("islop");
		
		Member member=new Member();
		member.setName(ishoten);
		member.setMembername(istendn);
		member.setMemberpass(ismatkhau);
		member.setSex(sex);
		member.setPhone(isdt);
		member.setDiaChi(isdc);
		member.setIDLop(islop);
		member.setImage("image");
		member.setNgaySinh(isngaysinh);
		
		
		//boolean test = CategoryDAO.insertCategory(category);
		boolean test=MemberDAO.updatemember(memberid,member);
		if (test)
		{
			request.setAttribute("msgaddmember","thêm thành công");
			RequestDispatcher rd = request.getRequestDispatcher("UserForWard");
			rd.forward(request,response);
		}
		else 
		{
			request.setAttribute("msgaddmember","thêm thất bại");
			RequestDispatcher rd = request.getRequestDispatcher("UserForWard");
			rd.forward(request,response);
		}
		}
	else
		{
			RequestDispatcher rd = request.getRequestDispatcher("UserForWard");
		rd.forward(request,response);
		}
		
	}

}
