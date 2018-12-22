package ContronllerAdmin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.Member;
import DAO.MemberDAO;

/**
 * Servlet implementation class InsertUser
 */
@WebServlet("/InsertUser")
public class InsertUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd =request.getRequestDispatcher("View/Admin/addUser.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				request.setCharacterEncoding("UTF-8");
				
				if(request.getParameter("button1")!=null)
				{
				request.setCharacterEncoding("UTF-8");
				String ishoten = request.getParameter("isName");
				String istendn = request.getParameter("isMemberName");
				String ismatkhau = request.getParameter("isMemberPass");
				String sex=request.getParameter("isGioiTinh");
				String isdt = request.getParameter("isSoDienThoai");
				String isdc =request.getParameter("isDiaChi");
				String isngaysinh=request.getParameter("isNgaySinh");
				Member member=new Member();
				member.setName(ishoten);
				member.setMembername(istendn);
				member.setMemberpass(ismatkhau);
				member.setSex(sex);
				member.setPhone(isdt);
				member.setDiaChi(isdc);
				member.setNgaySinh(isngaysinh);
				
				
				//boolean test = CategoryDAO.insertCategory(category);
				boolean test=MemberDAO.insertmember(member);
				if (test)
				{
					request.setAttribute("msgaddmember","thêm thành công");
					RequestDispatcher rDispatcher=request.getRequestDispatcher("UserForWard?pageid=1");
					rDispatcher.forward(request,response);
				}
				else 
				{
					request.setAttribute("msgaddmember","thêm thất bại");
					RequestDispatcher rd = request.getRequestDispatcher("View/Admin/addUser.jsp");
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
