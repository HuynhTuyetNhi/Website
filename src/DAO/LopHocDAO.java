package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletException;

import BEAN.LopHoc;
import BEAN.Member;
import BEAN.dethi;
import DB.DBConnection;

public class LopHocDAO {

	public static List<LopHoc>DisplayLopHoc()
	{
		Connection conn =null;
		List<LopHoc> list=new ArrayList<>();
		try {
			conn=DBConnection.CreateConnection();
			PreparedStatement ptmt=conn.prepareStatement("select * from lop");
			ResultSet rs =null;
			rs= ptmt.executeQuery();
			while(rs.next())
			{
				int LopID=rs.getInt("MaLop");
				String TenLop=rs.getString("TenLop");
				String TenGiangVien=rs.getString("TenGiangVien");
				LopHoc lopHoc=new LopHoc();
				lopHoc.setLopID(LopID);
				lopHoc.setTenLop(TenLop);
				lopHoc.setTenGiangVien(TenGiangVien);
				list.add(lopHoc);
			}

		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}
	public static boolean insertDeThi(dethi ch) {
		 Connection conn=DBConnection.CreateConnection();
		 String sql = "insert into dethi1(tendethi,socaude,socautrungbinh,socaukho,thoigianmode,thoigianlambai,lopID)"
		 		+ " values (?,?,?,?,?,?,?)";
	        try {
	        	PreparedStatement ptmt=conn.prepareStatement(sql);
	        	ptmt.setString(1, ch.getTendethi());
	        	ptmt.setInt(2,ch.getSocaude());
	        	ptmt.setInt(3, ch.getSocautrungbinh());
	        	ptmt.setInt(4,ch.getSocaukho());
	        	ptmt.setString(5, ch.getThoigianmode());
	        	ptmt.setInt(6, ch.getThoigianlambai());
	        	ptmt.setInt(7, ch.getLop());
	        	
	            return ptmt.executeUpdate() == 1;
	        } catch (SQLException ex) {
	           ex.getErrorCode();
	        }
	        return false;
	    }
	public static boolean deleteLopHoc(long idLop) {
		 Connection conn=DBConnection.CreateConnection();
	        String sql = "delete from lop where MaLop= ?";
	        try {
	        	PreparedStatement ptmt=conn.prepareStatement(sql);
	        	ptmt.setLong(1, idLop);
	            return ptmt.executeUpdate() == 1;
	        } catch (SQLException ex) {
	            Logger.getLogger(LopHocDAO.class.getName()).log(Level.SEVERE, null, ex);
	        }
	        return false;
	    }
	public static ResultSet getData(String sql)
	{
	 Connection conn=DBConnection.CreateConnection();
		ResultSet rSet=null;
		PreparedStatement ptmt=null;
		try {
			ptmt=conn.prepareStatement(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			rSet=ptmt.executeQuery();
			//String aString=rSet.getNString("CategoryName");
		} catch (SQLException e) {
			e.printStackTrace();
			//maloi=e.getMessage();
			e.getErrorCode();
		}
		return rSet;
	}
	 public static boolean updateLop(int LopID,String TenLop,String TenGiangVien) {
		 Connection conn=DBConnection.CreateConnection();
	        String sql = "UPDATE lop " + 
	        		" SET TenLop=?, TenGiangVien=? where MaLop=?";
	        try {
	        	PreparedStatement ptmt=conn.prepareStatement(sql);
	        	
	        	ptmt.setString(1, TenLop);
	        	ptmt.setString(2, TenGiangVien);
	        	ptmt.setInt(3, LopID);
	            return ptmt.executeUpdate() == 1;
	        } catch (SQLException ex) {
	            Logger.getLogger(LopHocDAO.class.getName()).log(Level.SEVERE, null, ex);
	           // loi=ex.getMessage();
	            
	        }
	        return false;
	    }
	 public static boolean insertlop(LopHoc p) throws ServletException {
		 Connection conn=DBConnection.CreateConnection();
		 try {
			//String anh=MemberDAO.Themhinhmember(request,response);
			 String sql = "insert into lop(TenLop,TenGiangVien)"
				 		+ " values (?,?)";
			     
			        	PreparedStatement ptmt=conn.prepareStatement(sql);
			        	ptmt.setString(1, p.getTenLop());
			        	ptmt.setString(2, p.getTenGiangVien());
			            return ptmt.executeUpdate() == 1;
			        
		} 
		 catch (SQLException ex) {
	           ex.getErrorCode();
	        }
	        return false;
	    }
	
}
