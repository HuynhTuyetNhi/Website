package DAO;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;

import BEAN.CauHoi;
import BEAN.Examinationquestion;
import BEAN.Loaicauhoi;
import BEAN.Member;
import DB.DBConnection;

public class CauHoiDAO {
	public static List<CauHoi>DisplayCauHoi()
	{
		Connection conn =null;
		List<CauHoi> list=new ArrayList<>();
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
				list.add(cauHoi);
			
			}

		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}
	public static List<CauHoi>DisplayCauHoibyloaicauhoi(long loaicauID)
	{
		Connection conn =null;
		List<CauHoi> list=new ArrayList<>();
		try {
			conn=DBConnection.CreateConnection();
			PreparedStatement ptmt=conn.prepareStatement("select * from cauhoi WHERE LoaiCauID = '" + loaicauID + "'");
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
				list.add(cauHoi);
			
			}

		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}
	public static boolean deleteCauHoi(long CauHoiID) {
		 Connection conn=DBConnection.CreateConnection();
	        String sql = "delete from cauhoi where CauHoiID= ?";
	        try {
	        	PreparedStatement ptmt=conn.prepareStatement(sql);
	        	ptmt.setLong(1, CauHoiID);
	            return ptmt.executeUpdate() == 1;
	        } catch (SQLException ex) {
	            Logger.getLogger(MemberDAO.class.getName()).log(Level.SEVERE, null, ex);
	        }
	        return false;
	    }
	public static boolean insertCauHoi(CauHoi ch) {
		 Connection conn=DBConnection.CreateConnection();
		 String sql = "insert into cauhoi(TenCauHoi,DapAnA,DapAnB,DapAnC,DapAnD,DapAn,LoaiCauID)"
		 		+ " values (?,?,?,?,?,?,?)";
	        try {
	        	PreparedStatement ptmt=conn.prepareStatement(sql);
	        	ptmt.setString(1, ch.getTenCauHoi());
	        	ptmt.setString(2,ch.getDapAnA());
	        	ptmt.setString(3, ch.getDapAnB());
	        	ptmt.setString(4,ch.getDapAnC());
	        	ptmt.setString(5, ch.getDapAnD());
	        	ptmt.setString(6, ch.getDapAn());
	        	ptmt.setInt(7, ch.getLoaiCauID());
	
	            return ptmt.executeUpdate() == 1;
	        } catch (SQLException ex) {
	           ex.getErrorCode();
	        }
	        return false;
	    }
	//upload tu file excel
	public static String Uploadcauhoidethi(Connection conn, HttpServletRequest request,HttpServletResponse response) 
			throws ServletException, IOException 
	{
		String test = "";
		ServletContext context = request.getServletContext();
		response.setContentType("text/html; charset=UTF-8");
		
		final String Address = context.getRealPath("Filedethi/");
	
	
		final int MaxMemorySize = 1024 * 1024 * 3; //3MB
		final int MaxRequestSize = 1024 * 1024 * 50; //50 MB
		
		boolean isMultipart = ServletFileUpload.isMultipartContent(request);
		
		if (!isMultipart)
		{
			test = "Thiếu multipart/form-data trong form";
		}
		
		DiskFileItemFactory factory = new DiskFileItemFactory();
		
		
		// Set factory constraints
		factory.setSizeThreshold(MaxMemorySize);

		factory.setRepository(new File(System.getProperty("java.io.tmpdir")));
		
		
		// Create a new file upload handler
		ServletFileUpload upload = new ServletFileUpload(factory);
		
		
		// Set overall request size constraint
		upload.setSizeMax(MaxRequestSize);
		
		
		
		try 
		{
			// Parse the request
			List<FileItem> items = upload.parseRequest(request);
			
			// Process the uploaded items
			Iterator<FileItem> iter = items.iterator();
			
			while (iter.hasNext()) 
			{
			    FileItem item = iter.next();

			    if (!item.isFormField()) 
			    {
			    	 String fileName = item.getName();
			    	 
			    	 //pathFile: vị trí mà chúng ta muốn upload file vào
			    	 //gửi cho server
			    	 
			    	String pathFile = Address + File.separator + fileName;
			    	 
			    	File uploadedFile = new File(pathFile);
			    	
			    	
			    	boolean kt = uploadedFile.exists();
			    	 
			    	try 
			    	{
			    		
			    		if (kt == true)
			    		{
			    					    
			    			test = "file tồn tại. Yêu cầu chọn file khác";
			    		}
			    		else
			    		{		    			
			    			item.write(uploadedFile);
			    			try
			    			{
			    				CauHoiDAO.Themcauhoituexcel(request, response, conn, pathFile);
			    			}
			    			catch(NullPointerException e)
			    			{
			    				test = e.getMessage();
			    			}
			    			
			    			
			    			test="Success";
			    		}
						
						
					} 
			    	catch (Exception e) 
			    	{ 		
			    		test = e.getMessage();
					}   	 
			    } 
			    else 
			    {
			    	test = "thêm file thất bại";
			    }
			}
			
		} 
		catch (FileUploadException e) 
		{
			test = e.getMessage();
		}
		
		return test;
	}
	public static void Themcauhoituexcel(HttpServletRequest request,HttpServletResponse response, Connection conn, String address) 
			throws ServletException, IOException
	{
		FileInputStream inp;
		try 
		{
			
			inp = new FileInputStream(address);
			HSSFWorkbook wb = new HSSFWorkbook(new POIFSFileSystem(inp));
			
			Sheet sheet = wb.getSheetAt(0);
			
			
			
			for (int i=1; i<=sheet.getLastRowNum();i++)
			{
				Row row = sheet.getRow(i);
				int num = (int) row.getCell(0).getNumericCellValue();
				String TenCauHoi=row.getCell(1).getStringCellValue();
				String DapAnA=row.getCell(2).getStringCellValue();
				String DapAnB=row.getCell(3).getStringCellValue();
				String DapAnC=row.getCell(4).getStringCellValue();
				String DapAnD=row.getCell(5).getStringCellValue();
				String DapAn=row.getCell(6).getStringCellValue();
				int LoaiCauID=(int) row.getCell(7).getNumericCellValue();
				
				CauHoi cauHoi=new CauHoi();
				
				cauHoi.setTenCauHoi(TenCauHoi);
				cauHoi.setDapAnA(DapAnA);
				cauHoi.setDapAnB(DapAnB);
				cauHoi.setDapAnC(DapAnC);
				cauHoi.setDapAnD(DapAnD);
				cauHoi.setDapAn(DapAn);
				cauHoi.setLoaiCauID(LoaiCauID);
				CauHoiDAO.Themcauhoivaomysql(request, cauHoi, conn);
				
				
			}
			
			wb.close();
			
		} 
		catch (FileNotFoundException e) 
		{
			e.printStackTrace();
			
		}
		catch (IOException e) 
		{
			e.printStackTrace();
			
		}
	}
	
	
	
	//Them cau hoi vao mysql
	public static void Themcauhoivaomysql(HttpServletRequest request,CauHoi cauHoi, Connection conn)
	{
		String sql = "insert into cauhoi(TenCauHoi,DapAnA,DapAnB,DapAnC,DapAnD,"
				+ "DapAn,LoaiCauID) values (?,?,?,?,?,?,?)";
		try 
		{
			PreparedStatement ptmt = conn.prepareStatement(sql);
			
			ptmt.setString(1, cauHoi.getTenCauHoi());
			ptmt.setString(2, cauHoi.getDapAnA());
			ptmt.setString(3, cauHoi.getDapAnB());
			ptmt.setString(4, cauHoi.getDapAnC());
			ptmt.setString(5, cauHoi.getDapAnD());
			ptmt.setString(6, cauHoi.getDapAn());
			ptmt.setInt(7, cauHoi.getLoaiCauID());
			ptmt.executeUpdate();
			ptmt.close();
			
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
	}
	public static List<Loaicauhoi> Displayloaicauhoi() throws SQLException
	{
		Connection conn=DBConnection.CreateConnection();
		List<Loaicauhoi> list= new ArrayList<Loaicauhoi>();
		try 
		{
			ResultSet rSet=null;
			PreparedStatement ptmt=conn.prepareStatement("select * from loaicauhoi");
			rSet=ptmt.executeQuery();
			while(rSet.next())
			{
				Loaicauhoi ca=new Loaicauhoi();
				int loaicauID=rSet.getInt("maloaicauhoi");
				String tenloaicau=rSet.getString("tenloaicauhoi");
				ca.setMaloaicauhoi(loaicauID);
				ca.setTenloaicauhoi(tenloaicau);
				list.add(ca);
			}
			
			ptmt.close();
			rSet.close();
		}
		catch (SQLException e) {
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
		} catch (SQLException e) {
			e.printStackTrace();
			e.getErrorCode();
		}
		return rSet;
	}
	 public static boolean updateCauHoi(int IDCauHoi,String TenCauHoi,String DapAnA,String DapAnB,String DapAnC,String DapAnD,String DapAn,String IDLoaiCauHoi) {
		 Connection conn=DBConnection.CreateConnection();
	        String sql = "UPDATE cauhoi " + 
	        		" SET TenCauHoi=?, DapAnA=?, DapAnB=?,DapAnC=?,DapAnD=?,DapAn=?,LoaiCauID=? where CauHoiID=?";
	        try {
	        	PreparedStatement ptmt=conn.prepareStatement(sql);
	        	
	        	ptmt.setString(1, TenCauHoi);
	        	ptmt.setString(2, DapAnA);
	        	ptmt.setString(1, DapAnB);
	        	ptmt.setString(2, DapAnC);
	        	ptmt.setString(1, DapAnD);
	        	ptmt.setString(2, DapAn);
	        	ptmt.setString(1, TenCauHoi);
	        	ptmt.setString(2, DapAnA);
	        	ptmt.setString(3,DapAnD);
	            return ptmt.executeUpdate() == 1;
	        } catch (SQLException ex) {
	            Logger.getLogger(LopHocDAO.class.getName()).log(Level.SEVERE, null, ex);
	           // loi=ex.getMessage();
	            
	        }
	        return false;
	    }
	

}
