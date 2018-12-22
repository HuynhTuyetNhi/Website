package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;
import javax.servlet.http.HttpServletRequest;

import BEAN.CauHoi;
import BEAN.Examination;
import BEAN.dethi;
import DB.DBConnection;

public class DethiDAO {
	public static List<dethi>Displaydethi()
	{
		Connection conn =null;
		List<dethi> list=new ArrayList<>();
		try {
			conn=DBConnection.CreateConnection();
			PreparedStatement ptmt=conn.prepareStatement("select * from dethi1");
			ResultSet rs =null;
			rs= ptmt.executeQuery();
			while(rs.next())
			{
				int dethiID=rs.getInt("dethiID");
				String tendethi=rs.getString("tendethi");
				int socaude=rs.getInt("socaude");
				int socautrungbinh=rs.getInt("socautrungbinh");
				int socaukho=rs.getInt("socaukho");
				String thoigianmode=rs.getString("thoigianmode");
				int thoigianlambai=rs.getInt("thoigianlambai");
				int lopID=rs.getInt("lopID");
				dethi dethi=new dethi();
				dethi.setDethiID(dethiID);
				dethi.setTendethi(tendethi);
				dethi.setSocaude(socaude);
				dethi.setSocautrungbinh(socautrungbinh);
				dethi.setSocaukho(socaukho);
				dethi.setThoigianmode(thoigianmode);
				dethi.setThoigianlambai(thoigianlambai);
				dethi.setLop(lopID);
				
				list.add(dethi);
			
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
	public static ResultSet Xuatmadethi(dethi ch)
	{	
		Connection connection=DBConnection.CreateConnection();
		PreparedStatement ptmt = null;
		ResultSet rs=null;
		
		String sql = "select * from dethi1 where tendethi='"+ch.getTendethi()+"'";
		
		try 
		{
			ptmt = connection.prepareStatement(sql);	
			rs = ptmt.executeQuery();
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		
		return rs;
	}
	public static void themcauhoivaodethi1(dethi ch)
	{
		Connection conn =null;
		List<CauHoi> list=new ArrayList<>();
		List<CauHoi> listLoai1=new ArrayList<>();
		List<CauHoi> listLoai2=new ArrayList<>();
		List<CauHoi> listLoai3=new ArrayList<>();
		List<CauHoi> listcauhoidethi=new ArrayList<>();
		int DeThiID = 0;
		int SoCauDe=0;
		int SoCauTB=0;
		int SoCauKho=0;
		ResultSet rSet=DethiDAO.getData("select * from dethi1 where tendethi='"+ch.getTendethi()+"'");
		
		try {
			rSet.next();
			 DeThiID=rSet.getInt("dethiID");
			 SoCauDe=rSet.getInt("socaude");
			 SoCauTB=rSet.getInt("socautrungbinh");
			 SoCauKho=rSet.getInt("socaukho");
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		
		/*int de=3;
		int kho=2;
		int trungbinh=5;*/
		try {
			conn=DBConnection.CreateConnection();
			PreparedStatement ptmt=conn.prepareStatement("select * from cauhoi");
			ResultSet rs =null;
			rs= ptmt.executeQuery();
			while(rs.next())
			{
				int CauHoiID=rs.getInt("CauHoiID");
				String TenCauHoi=rs.getString("TenCauHoi");
				String DapAnA=rs.getString("DapAnA");
				String DapAnB=rs.getString("DapAnB");
				String DapAnC=rs.getString("DapAnC");
				String DapAnD=rs.getString("DapAnD");
				String DapAn=rs.getString("DapAn");
				int LoaiCauID=rs.getInt("LoaiCauID");
				CauHoi cauHoi=new CauHoi();
				cauHoi.setCauHoiID(CauHoiID);
				cauHoi.setTenCauHoi(TenCauHoi);
				cauHoi.setDapAnA(DapAnA);
				cauHoi.setDapAnB(DapAnB);
				cauHoi.setDapAnC(DapAnC);
				cauHoi.setDapAnD(DapAnD);
				cauHoi.setDapAn(DapAn);
				cauHoi.setLoaiCauID(LoaiCauID);
				if(rs.getInt("LoaiCauID")==1)
				{
					listLoai1.add(cauHoi);
				}
				else if(rs.getInt("LoaiCauID")==2)
				{
					listLoai2.add(cauHoi);
				}
				else {
					listLoai3.add(cauHoi);
				}
				list.add(cauHoi);
			
			}

		} catch (Exception e) {
			// TODO: handle exception
		}
		for(int i=0;i<SoCauDe;i++)
		{
		Random randomGenerator;
		//ArrayList<CauHoi> catalogue;
		//catalogue = new ArrayList<CauHoi>();
        randomGenerator = new Random();
        int index = randomGenerator.nextInt(listLoai1.size());
       // CauHoi item = catalogue.get(index);
        CauHoi cauHoidethi=new CauHoi();
        
        cauHoidethi.setTenCauHoi(listLoai1.get(index).getTenCauHoi());
        cauHoidethi.setDapAn(listLoai1.get(index).getDapAn());
        cauHoidethi.setDapAnA(listLoai1.get(index).getDapAnA());
        cauHoidethi.setDapAnB(listLoai1.get(index).getDapAnB());
        cauHoidethi.setDapAnC(listLoai1.get(index).getDapAnC());
        cauHoidethi.setDapAnD(listLoai1.get(index).getDapAnD());
        cauHoidethi.setLoaiCauID(listLoai1.get(index).getLoaiCauID());
        listcauhoidethi.add(cauHoidethi);
		}
		for(int i=0;i<SoCauTB;i++)
		{
		Random randomGenerator;
		//ArrayList<CauHoi> catalogue;
		//catalogue = new ArrayList<CauHoi>();
        randomGenerator = new Random();
        int index = randomGenerator.nextInt(listLoai2.size());
       // CauHoi item = catalogue.get(index);
        CauHoi cauHoidethi=new CauHoi();
        
        cauHoidethi.setTenCauHoi(listLoai2.get(index).getTenCauHoi());
        cauHoidethi.setDapAn(listLoai2.get(index).getDapAn());
        cauHoidethi.setDapAnA(listLoai2.get(index).getDapAnA());
        cauHoidethi.setDapAnB(listLoai2.get(index).getDapAnB());
        cauHoidethi.setDapAnC(listLoai2.get(index).getDapAnC());
        cauHoidethi.setDapAnD(listLoai2.get(index).getDapAnD());
        cauHoidethi.setLoaiCauID(listLoai2.get(index).getLoaiCauID());
        listcauhoidethi.add(cauHoidethi);
		}
		for(int i=0;i<SoCauKho;i++)
		{
		Random randomGenerator;
		//ArrayList<CauHoi> catalogue;
		//catalogue = new ArrayList<CauHoi>();
        randomGenerator = new Random();
        int index = randomGenerator.nextInt(listLoai3.size());
       // CauHoi item = catalogue.get(index);
        CauHoi cauHoidethi=new CauHoi();
        
        cauHoidethi.setTenCauHoi(listLoai3.get(index).getTenCauHoi());
        cauHoidethi.setDapAn(listLoai3.get(index).getDapAn());
        cauHoidethi.setDapAnA(listLoai3.get(index).getDapAnA());
        cauHoidethi.setDapAnB(listLoai3.get(index).getDapAnB());
        cauHoidethi.setDapAnC(listLoai3.get(index).getDapAnC());
        cauHoidethi.setDapAnD(listLoai3.get(index).getDapAnD());
        cauHoidethi.setLoaiCauID(listLoai3.get(index).getLoaiCauID());
        listcauhoidethi.add(cauHoidethi);
		}
       try {
		for(int i=0;i<listcauhoidethi.size();i++) {
			String sql="insert into noidungdethi (cauhoi,dapanA,dapanB,dapanC,dapanD,dapan,LoaiCauID,IDdethi) values(?,?,?,?,?,?,?,?)";
			PreparedStatement ptmtt=conn.prepareStatement(sql);
			ptmtt.setString(1,listcauhoidethi.get(i).getTenCauHoi());
        	ptmtt.setString(2,listcauhoidethi.get(i).getDapAnA());
        	ptmtt.setString(3, listcauhoidethi.get(i).getDapAnB());
        	ptmtt.setString(4,listcauhoidethi.get(i).getDapAnC());
        	ptmtt.setString(5,listcauhoidethi.get(i).getDapAnD());
        	ptmtt.setString(6,listcauhoidethi.get(i).getDapAn());
        	ptmtt.setInt(7, listcauhoidethi.get(i).getLoaiCauID());
        	ptmtt.setInt(8,DeThiID);
            ptmtt.executeUpdate();
		}
       }
       catch (Exception e) {
		// TODO: handle exception
	}
		
			
}
	public static List<CauHoi>Displaydethichitiet(long iddethi)
	{
		Connection conn =null;
		List<CauHoi> list=new ArrayList<>();
		try {
			conn=DBConnection.CreateConnection();
			PreparedStatement ptmt=conn.prepareStatement("select * from noidungdethi where IDdethi= '"+iddethi+"'");
			ResultSet rs =null;
			rs= ptmt.executeQuery();
			while(rs.next())
			{
				//int dethiID=rs.getInt("IDdethi");
				String tenCauHoi=rs.getString("cauhoi");
				String dapAnA=rs.getString("dapanA");
				String dapAnB=rs.getString("dapanB");
				String dapAnC=rs.getString("dapanC");
				String dapAnD=rs.getString("dapanD");
				String dapAn=rs.getString("dapan");
				CauHoi cauHoi=new CauHoi();
				
				cauHoi.setTenCauHoi(tenCauHoi);
				cauHoi.setDapAnA(dapAnA);
				cauHoi.setDapAnB(dapAnB);
				cauHoi.setDapAnC(dapAnC);
				cauHoi.setDapAnD(dapAnD);
				cauHoi.setDapAn(dapAn);;
				
				
				list.add(cauHoi);
			
			}

		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
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
			//	String aString=rSet.getNString("CategoryName");
			} catch (SQLException e) {
				e.printStackTrace();
				//maloi=e.getMessage();
				e.getErrorCode();
			}
			return rSet;
		}
	
}
