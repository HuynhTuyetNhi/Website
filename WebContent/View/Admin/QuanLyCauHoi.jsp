<%@page import="BEAN.Loaicauhoi"%>
<%@page import="DAO.CauHoiDAO"%>
<%@page import="BEAN.CauHoi"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
 
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Purple Admin</title>
 
  <link rel="stylesheet" href="Template/Admin/vendors/iconfonts/mdi/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="Template/Admin/vendors/css/vendor.bundle.base.css">
 
  <link rel="stylesheet" href="Template/Admin/css/style.css">
 
  <link rel="shortcut icon" href="Template/Admin/images/favicon.png" />
  <style>
.dropbtn {
    background-color: #4CAF50;
    color: white;
    padding: 16px;
    font-size: 16px;
    border: none;
}

.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f1f1f1;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown-content a:hover {background-color: #ddd;}

.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {background-color: #3e8e41;}
</style>
</head>
<body>
<% 
int categoryID=1;
if(request.getParameter("category")!=null)
{
	categoryID=Integer.parseInt(request.getParameter("category"));
}
%>
 <div class="container-scroller">
<jsp:include page="Header.jsp"></jsp:include>
<jsp:include page="Menu.jsp"></jsp:include>
 <div class="content-wrapper" style="margin-top:-630px">
          <div class="page-header">
            <h3 class="page-title">
             Quản lý User
            </h3>
            <nav aria-label="breadcrumb">
              <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#">Quản lý Câu hỏi</a></li>
              </ol>
            </nav>
          </div>
          <div class="row">
         
          
     <div class="col-lg-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <a href="InsertCauHoi"> <button type="button" class="btn btn-info" style="width:200px;float:left;margin-top:14px;height:40px">Thêm Câu Hỏi</button></a>
                  <form action="InsertCauHoiExcel" method="POST" enctype="multipart/form-data">
                   <div class="container mt-3">	
   			 <div class="custom-file mb-3" style="width:205px;margin-left:10px;margin-top:-30px" >
     		 <input type="file" class="custom-file-input" id="customFile" name="filename">
     		 <label class="custom-file-label" for="customFile">Choose file</label>
    			</div>
					</div>
					<button class="btn btn-success"  style="float:left"
								>Thêm từ file excel</button>
					</form>
				<div class="dropdown">
				  <button class="dropbtn" style="margin-left:7px;height:45px">Loại câu hỏi</button>
				  <div class="dropdown-content">
				    <%
						for(Loaicauhoi c:CauHoiDAO.Displayloaicauhoi())
						{
					%>
				
				 <li><a href="CauHoiforward?category=<%=c.getMaloaicauhoi()%>"><%=c.getTenloaicauhoi()%></a></li> 
				
				
				<%} %>
				
				
				
				  </div>
				</div>
                  <table class="table table-striped">
                    <thead>
                      <tr>
                        <th>
                         Tên câu hỏi
                        </th>
                        <th>
                        Đáp án A
                        </th>
                        <th>
                         Đáp án B
                        </th>
                        <th>
                         Đáp án C
                        </th>
                        <th>
                          Đáp án D
                        </th>
                         <th>
                          Đáp án
                        </th>
                        <th>
                         Loại câu hỏi
                        </th>
                        <th>
                        Thao tác
                        </th>
                      </tr>
                    </thead>
                    <tbody>
					                    
                    <%
                    if(request.getParameter("category")==null)
					{
						for(Loaicauhoi c:CauHoiDAO.Displayloaicauhoi())
						{
						for(CauHoi p : CauHoiDAO.DisplayCauHoibyloaicauhoi(c.getMaloaicauhoi()))
						{
						%>
				
                    
			                      <tr>			                       
			                        <td>
			                        <%=p.getTenCauHoi()%>
			                        </td>
			                        <td>
			                        <%=p.getDapAnA() %>
			                        </td>
			                        <td>
			                       <%=p.getDapAnB()%>
			                        </td>
			                      	<td>
			                      <%=p.getDapAnC()%>
			                      	</td>
			                      	<td>
			                      	 	<%=p.getDapAnD()%>
			                      	</td>             
			                      	<td>
			                     	<%=p.getDapAn() %>
			                      	</td>
			                      	<td>
			                      <%=c.getTenloaicauhoi()%>
			                      	</td>
			                        <td>
			                        <a href="DeleteCauHoi?idCauHoi=<%=p.getLoaiCauID()%>}">
						<button class="btn btn-success" data-toggle="modal"
								data-target="#myModal1" name="button1">Xóa</button></a>
						<a href="UpdateCauHoi?idmember=<%=p.getLoaiCauID() %>>">
							<button class="btn btn-danger" data-toggle="modal"
								data-target="#myModal2">Sửa</button></a></td>
			                      </tr> 
               <%
						}
					}
						}
						else{
							for(CauHoi p : CauHoiDAO.DisplayCauHoibyloaicauhoi(categoryID))
							{
							%>
							
							
							          <tr>			                       
			                        <td>
			                        <%=p.getTenCauHoi()%>
			                        </td>
			                        <td>
			                        <%=p.getDapAnA() %>
			                        </td>
			                        <td>
			                       <%=p.getDapAnB()%>
			                        </td>
			                      	<td>
			                      <%=p.getDapAnC()%>
			                      	</td>
			                      	<td>
			                      	 	<%=p.getDapAnD()%>
			                      	</td>             
			                      	<td>
			                     	<%=p.getDapAn() %>
			                      	</td>
			                      	<td>
			                      <%=p.getLoaiCauID()%>
			                      	</td>
			                        <td>
			                        <a href="DeleteCauHoi?idCauHoi=<%=p.getLoaiCauID()%>}">
						<button class="btn btn-success" data-toggle="modal"
								data-target="#myModal1" name="button1">Xóa</button></a>
						<a href="UpdateCauHoi?idmember=<%=p.getLoaiCauID() %>>">
							<button class="btn btn-danger" data-toggle="modal"
								data-target="#myModal2">Sửa</button></a></td>
			                      </tr> 
						<%
						}
						
							}
						%>     
                   
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
 </div>
          </div>
   <script src="Template/Admin/vendors/js/vendor.bundle.base.js"></script>
  <script src="Template/Admin/vendors/js/vendor.bundle.addons.js"></script>

  <script src="Template/Admin/js/off-canvas.js"></script>
  <script src="Template/Admin/js/misc.js"></script>
 
  <script src="Template/Admin/js/dashboard.js"></script>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<script type="text/javascript">$(document).ready(function(){
    $(":file").css("background-color", "red");
});
</script>
</body>
</html>