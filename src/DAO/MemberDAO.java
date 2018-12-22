package DAO;

import java.io.File;
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

import BEAN.Member;
import DB.DBConnection;

public class MemberDAO {
	public static List<Member>l()
	{
		Connection conn =null;
		List<Member> list=new ArrayList<>();
		try {
			conn=DBConnection.CreateConnection();
			PreparedStatement ptmt=conn.prepareStatement("select * from member");
			ResultSet rs =null;
			rs= ptmt.executeQuery();
			while(rs.next())
			{
				int MemberID=rs.getInt("MemberID");
				String MemberName=rs.getString("MemberName");
				String MemberPass=rs.getString("MemberPass");
				String Name=rs.getString("Name");
				String IDlop=rs.getString("IDlop");
				String NgaySinh=rs.getString("NgaySinh");
				String GioiTinh=rs.getString("GioiTinh");
				String DiaChi=rs.getString("DiaChi");
				String Phone=rs.getString("Phone");
				String image=rs.getString("image");
				Member member=new Member();
				member.setMemberid(MemberID);
				member.setImage(image);
				member.setMembername(MemberName);
				member.setMemberpass(MemberPass);
				member.setName(Name);
				member.setIDLop(IDlop);
				member.setNgaySinh(NgaySinh);
				member.setSex(GioiTinh);
				member.setDiaChi(DiaChi);
				member.setPhone(Phone);
				list.add(member);
			
			}

		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}
	
	public static List<Member>Display1member(Long MemberID)
	{
		Connection conn =null;
		List<Member> list=new ArrayList<>();
		try {
			conn=DBConnection.CreateConnection();
			PreparedStatement ptmt=conn.prepareStatement("select * from member where MemberID="+"'"+MemberID+"'");
			ResultSet rs =null;
			rs= ptmt.executeQuery();
			while(rs.next())
			{
				String MemberName=rs.getString("MemberName");
				String MemberPass=rs.getString("MemberPass");
				String Name=rs.getString("Name");
				String IDlop=rs.getString("IDlop");
				String NgaySinh=rs.getString("NgaySinh");
				String GioiTinh=rs.getString("GioiTinh");
				String DiaChi=rs.getString("DiaChi");
				String Phone=rs.getString("Phone");
				String image=rs.getString("image");
				Member member=new Member();
				member.setImage(image);
				member.setMembername(MemberName);
				member.setMemberpass(MemberPass);
				member.setName(Name);
				member.setIDLop(IDlop);
				member.setNgaySinh(NgaySinh);
				member.setSex(GioiTinh);
				member.setDiaChi(DiaChi);
				member.setPhone(Phone);
				member.setMemberid(MemberID);
				list.add(member);
			
			}

		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}
	public static boolean insertmember(Member p) throws ServletException {
		 Connection conn=DBConnection.CreateConnection();
		 try {
			//String anh=MemberDAO.Themhinhmember(request,response);
			 String sql = "insert into member(MemberName,MemberPass,Name,categorymemberid,NgaySinh,GioiTinh,DiaChi,Phone)"
				 		+ " values (?,?,?,?,?,?,?,?)";
			     
			        	PreparedStatement ptmt=conn.prepareStatement(sql);
			        	ptmt.setString(1, p.getMembername());
			        	String name=p.getName();
			        	ptmt.setString(2, p.getMemberpass());
			        	ptmt.setString(3, p.getName());
			        	
			        	ptmt.setInt(4, 1);
			        	ptmt.setString(5, p.getNgaySinh());
			        	ptmt.setString(6, p.getSex());
			        	ptmt.setString(7, p.getDiaChi());
			        	ptmt.setString(8, p.getPhone());
			            return ptmt.executeUpdate() == 1;
			        
		} 
		 catch (SQLException ex) {
	           ex.getErrorCode();
	        }
	        return false;
	    }
	 public static boolean deleteMemBer(long MemberID) {
		 Connection conn=DBConnection.CreateConnection();
	        String sql = "delete from member where MemberID= ?";
	        try {
	        	PreparedStatement ptmt=conn.prepareStatement(sql);
	        	ptmt.setLong(1, MemberID);
	            return ptmt.executeUpdate() == 1;
	        } catch (SQLException ex) {
	            Logger.getLogger(MemberDAO.class.getName()).log(Level.SEVERE, null, ex);
	        }
	        return false;
	    }
	 public static boolean updatemember(Long id,Member p) throws ServletException {
		 Connection conn=DBConnection.CreateConnection();
		 try {
			//String anh=MemberDAO.Themhinhmember(request,response);
			 String sql = "UPDATE member SET MemberName = ?, MemberPass = ?, Name = ?"
			 		+ ",categorymemberid=?,IDlop=?,NgaySinh=?,GioiTinh=?,DiaChi=?,Phone=?,image=? WHERE MemberID="+"'"+id+"'";
			     
			        	PreparedStatement ptmt=conn.prepareStatement(sql);
			        	ptmt.setString(1, p.getMembername());
			        	ptmt.setString(2, p.getMemberpass());
			        	ptmt.setString(3, p.getName());
			        	ptmt.setInt(4, 1);
			        	ptmt.setString(5, p.getIDLop());
			        	ptmt.setString(6, p.getNgaySinh());
			        	ptmt.setString(7, p.getSex());
			        	ptmt.setString(8, p.getDiaChi());
			        	ptmt.setString(9, p.getPhone());
			        	ptmt.setString(10, p.getImage());
			            return ptmt.executeUpdate() == 1;
			        
		} 
		 catch (SQLException ex) {
	           ex.getErrorCode();
	        }
	        return false;
	    }
//	 public static boolean Themhinhmember(HttpServletRequest request,HttpServletResponse response,Member member) 
//				throws ServletException, IOException 
//		{
//			String test = "";
//			String fileName="";
//			ServletContext context = request.getServletContext();
//			response.setContentType("text/html; charset=UTF-8");
//			
//			final String Address = context.getRealPath("Imageaudiodethi/");
//		
//			//final String Address = "F://";
//			final int MaxMemorySize = 1024 * 1024 * 3; //3MB
//			final int MaxRequestSize = 1024 * 1024 * 50; //50 MB
//			
//			boolean isMultipart = ServletFileUpload.isMultipartContent(request);
//			
//			if (!isMultipart)
//			{
//				test = "Thiếu multipart/form-data trong form";
//			}
//			
//			DiskFileItemFactory factory = new DiskFileItemFactory();
//			
//			
//			// Set factory constraints
//			factory.setSizeThreshold(MaxMemorySize);
//
//			factory.setRepository(new File(System.getProperty("java.io.tmpdir")));
//			
//			
//			// Create a new file upload handler
//			ServletFileUpload upload = new ServletFileUpload(factory);
//			
//			
//			// Set overall request size constraint
//			upload.setSizeMax(MaxRequestSize);
//			
//			
//			
//			try 
//			{
//				// Parse the request
//				List<FileItem> items = upload.parseRequest(request);
//				
//				// Process the uploaded items
//				Iterator<FileItem> iter = items.iterator();
//				
//				while (iter.hasNext()) 
//				{
//				    FileItem item = iter.next();
//
//				    if (!item.isFormField()) 
//				    {
//				    	 fileName = item.getName();
//				    	 
//				    	 //pathFile: vị trí mà chúng ta muốn upload file vào
//				    	 //gửi cho server
//				    	 
//				    	String pathFile = Address + File.separator + fileName;
//				    	 
//				    	File uploadedFile = new File(pathFile);
//				    	
//				    	
//				    	boolean kt = uploadedFile.exists();
//				    	 
//				    	try 
//				    	{
//				    		
//				    			    			
//				    			item.write(uploadedFile);
//				    			
//				    			return true;
//							
//							
//						} 
//				    	catch (Exception e) 
//				    	{ 		
//				    		test = e.getMessage();
//						}   	 
//				    } 
//				    else 
//				    {
//				    	test = "thêm file thất bại";
//				    }
//				}
//				
//			} 
//			catch (FileUploadException e) 
//			{
//				test = e.getMessage();
//			}
//			if(MemberDAO.insertmember(member,request, fileName)==true)
//			{
//			return true;
//			}
//			return false;
//		}
}
