package DAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.imageio.ImageTranscoder;
import javax.servlet.http.HttpServletRequest;

import BEAN.CauHoi;
import BEAN.Examination;
import BEAN.Examinationquestion;
//import BEAN.Result;
import BEAN.Result;
import BEAN.dethi;
import DB.DBConnection;

public class LambaithiDAO 
{
		//hien thi danh sach de thi va phan trang
		public static List<Examination> Hienthidsdethi(HttpServletRequest request,int start, int count,Connection conn)
		{
			List<Examination> list = new ArrayList<Examination>();
			
			String sql = "select * from examination limit "+(start-1)+", "+count+"";
			try 
			{
				PreparedStatement ptmt = conn.prepareStatement(sql);
				
				ResultSet rs = ptmt.executeQuery();
				
				if (rs.isBeforeFirst())
				{
					while (rs.next())
					{
						Examination examination = new Examination();
						
						int examinationid = rs.getInt("examinationid");
						String examinationame = rs.getString("examinationame");
						String examinatioimage = rs.getString("examinatioimage");
						int checkedcauhoi = rs.getInt("checkedcauhoi");
						
						examination.setExaminationid(examinationid);
						examination.setExaminationame(examinationame);
						examination.setExaminatioimage(examinatioimage);
						examination.setCheckedcauhoi(checkedcauhoi);
						
						list.add(examination);
					}
				}
				else 
				{
					request.setAttribute("msgdsdethi","Không có đề thi nào trong danh sách");
				}
				
			} 
			catch (SQLException e) 
			{
				request.setAttribute("msgdsdethi",e.getMessage());
			}
					
			return list;
		}
		
		public static List<dethi> Hienthidsdethi1(HttpServletRequest request,int start, int count,Connection conn)
		{
			List<dethi> list = new ArrayList<dethi>();
			
			String sql = "select * from dethi1 limit "+(start-1)+", "+count+"";
			try 
			{
				PreparedStatement ptmt = conn.prepareStatement(sql);
				
				ResultSet rs = ptmt.executeQuery();
				
				if (rs.isBeforeFirst())
				{
					while (rs.next())
					{
						dethi dethi = new dethi();
						
						int dethiID = rs.getInt("dethiID");
						String tendethi = rs.getString("tendethi");
						String thoigianmode = rs.getString("thoigianmode");
						int thoigianlambai = rs.getInt("thoigianlambai");
						int lopID=rs.getInt("lopID");
						
						dethi.setDethiID(dethiID);
						dethi.setTendethi(tendethi);
						dethi.setThoigianmode(thoigianmode);
						dethi.setThoigianlambai(thoigianlambai);
						dethi.setLop(lopID);
						
						list.add(dethi);
					}
				}
				else 
				{
					request.setAttribute("msgdsdethi","Không có đề thi nào trong danh sách");
				}
				
			} 
			catch (SQLException e) 
			{
				request.setAttribute("msgdsdethi",e.getMessage());
			}
					
			return list;
		}
		
		//dem so hang cua 1 bang
		public static int Countrow(Connection conn)
		{
			int count = 0;
			
			
			String sql = "select count(*) from dethi1";
			
			try 
			{
				PreparedStatement ptmt = conn.prepareStatement(sql);
				
				ResultSet rs = ptmt.executeQuery();
				
				rs.next();
				
				count = rs.getInt(1);
				
					
			} 
			catch (SQLException e) 
			{
				
				e.printStackTrace();
			}
			
			return count;
		}
		
		//hien thi danh sach cau hoi de thi
		public static List<CauHoi> Hienthicauhoidethi(Connection conn,int examinationid)
		{
			List<CauHoi> list = new ArrayList<CauHoi>();
			 
			String sql = "select * from noidungdethi where IDdethi="+examinationid;
			
			try 
			{
				PreparedStatement ptmt = conn.prepareStatement(sql);
				
				ResultSet rs = ptmt.executeQuery();
				
				
					while (rs.next())
					{
						CauHoi cauHoi=new CauHoi();
						String tencauhoi=rs.getString("cauhoi");
						String DapAnA=rs.getString("dapanA");
						String DapAnB=rs.getString("dapanB");
						String DapAnC=rs.getString("dapanC");
						String DapAnD=rs.getString("dapanD");
						String DapAn=rs.getString("dapan");
						
						int CauHoiID=rs.getInt("noidungdethiid");
						int num=rs.getInt("num");
						cauHoi.setCauHoiID(CauHoiID);
						cauHoi.setTenCauHoi(tencauhoi);
						cauHoi.setDapAnA(DapAnA);
						cauHoi.setDapAnB(DapAnB);
						cauHoi.setDapAnC(DapAnC);
						cauHoi.setDapAnD(DapAnD);
						cauHoi.setDapAn(DapAn);
						cauHoi.setNum(num);
						
						
						list.add(cauHoi);
					}
				
			} 
			catch (SQLException e) 
			{
				e.printStackTrace();
			}
					
			return list;
		}
		
		//xuat dap an dung cua cac cau hoi
		
		public static List<CauHoi> Xuatdapandungdethi(Connection conn,int examinationid)
		{
			List<CauHoi> list = new ArrayList<CauHoi>();
			 
			String sql = "select * from noidungdethi where IDdethi="+examinationid;
			
			try 
			{
				PreparedStatement ptmt = conn.prepareStatement(sql);
				
				ResultSet rs = ptmt.executeQuery();

					while (rs.next())
					{
						//Examinationquestion ex = new Examinationquestion();
						
						CauHoi cauHoi=new CauHoi();
						String tencauhoi=rs.getString("cauhoi");
						String DapAnA=rs.getString("dapanA");
						String DapAnB=rs.getString("dapanB");
						String DapAnC=rs.getString("dapanC");
						String DapAnD=rs.getString("dapanD");
						String DapAn=rs.getString("dapan");
						
						int CauHoiID=rs.getInt("noidungdethiid");
						int num=rs.getInt("num");
						cauHoi.setCauHoiID(CauHoiID);
						cauHoi.setTenCauHoi(tencauhoi);
						cauHoi.setDapAnA(DapAnA);
						cauHoi.setDapAnB(DapAnB);
						cauHoi.setDapAnC(DapAnC);
						cauHoi.setDapAnD(DapAnD);
						cauHoi.setDapAn(DapAn);
						cauHoi.setNum(num);
						
						
						list.add(cauHoi);
					}
				
			} 
			catch (SQLException e) 
			{
				e.printStackTrace();
			}
					
			return list;
		}
		
				//dem so cau hoi cua 1 de thi
				public static int Demsocauhoidethi(int examinationid)
				{
					int count = 0;
					
					Connection conn =DBConnection.CreateConnection();
					String sql = "select count(*) from noidungdethi where IDdethi="+examinationid;
					
					try 
					{
						PreparedStatement ptmt = conn.prepareStatement(sql);
						
						ResultSet rs = ptmt.executeQuery();
						
						rs.next();
						
						count = rs.getInt(1);
						
							
					} 
					catch (SQLException e) 
					{
						
						e.printStackTrace();
					}
					
					return count;
				}
		
		//them ket qua thi cua thanh vien vao trong bảng result
		
		public static void Luuketquathi(Connection conn, Result result)
		{
			PreparedStatement ptmt = null;
			
			
			String sql = "insert into result(correctanswernum,incorrectanswernum,time,examinationid,memberid,correctanswerread,correctanswerlisten) values (?,?,?,?,?,?,?)";
			
			try 
			{
				ptmt = conn.prepareStatement(sql);
				
				int correctanswernum = result.getCorrectanswernum();
				int incorrectanswernum = result.getIncorrectanswernum();
				String time = result.getTime();
				int examinationid = result.getExaminationid();
				int memberid = result.getMemberid();
				int correctanswerread = result.getCorrectanswerread();
				int correctanswerlisten = result.getCorrectanswerlisten();
				
				
				
				ptmt.setInt(1,correctanswernum);
				ptmt.setInt(2,incorrectanswernum);
				ptmt.setString(3,time);
				ptmt.setInt(4,examinationid);
				ptmt.setInt(5,memberid);
				ptmt.setInt(6,correctanswerread);
				ptmt.setInt(7,correctanswerlisten);
				
				ptmt.executeUpdate();
				
				
				ptmt.close();
			} 
			catch (SQLException e) 
			{
				e.printStackTrace();
			}
			
		}
		
		//xuat dap an dung cua 1 cau hoi trong de thi
		public static String Dapancua1cauhoi(Connection conn,int examinationid, int num)
		{
			String dapan="";
			
			String sql = "select dapan from noidungdethi where IDdethi="+examinationid+" and num="+num;
			
			try 
			{
				PreparedStatement ptmt = conn.prepareStatement(sql);
				
				ResultSet rs = ptmt.executeQuery();
				
				
					while (rs.next())
					{
						dapan = rs.getString(1);
					}
				
			} 
			catch (SQLException e) 
			{
				e.printStackTrace();
			}
			
			
			return dapan;
		}
		
				//xuat ket qua thi cua thanh vien
				public static List<Result> Xuatketquathi(Connection conn,String time,int examinationid,int memberid)
				{
					
					List<Result> list = new ArrayList<Result>();
					
					String sql = "select * from result where time='"+time+"' and examinationid="+examinationid+" and memberid="+memberid;
					
					try 
					{
						PreparedStatement ptmt = conn.prepareStatement(sql);
						
						ResultSet rs = ptmt.executeQuery();
						
						while(rs.next())
						{
							int correctanswernum = rs.getInt("correctanswernum");
							int incorrectanswernum = rs.getInt("incorrectanswernum");
							int correctanswerread = rs.getInt("correctanswerread");
							int correctanswerlisten = rs.getInt("correctanswerlisten");
							
							Result result = new Result();
							result.setCorrectanswernum(correctanswernum);
							result.setIncorrectanswernum(incorrectanswernum);
							result.setCorrectanswerlisten(correctanswerlisten);
							result.setCorrectanswerread(correctanswerread);
							
							
							list.add(result);
							
						}
						
							
					} 
					catch (SQLException e) 
					{
						
						e.printStackTrace();
					}
					
					return list;
				}
		
		
}
