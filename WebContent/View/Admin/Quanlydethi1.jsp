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
                  <a href="InsertDeThi"> <button type="button" class="btn btn-info" style="width:200px;float:left;margin-top:14px;height:40px">Thêm Đề Thi</button></a>
                 
			
                  <table class="table table-striped">
                    <thead>
                      <tr>
                        <th>
                         Tên đề thi
                        </th>
                        <th>
                        Số câu dễ
                        </th>
                        <th>
                        Số câu trung bình
                        </th>
                        <th>
                        Số câu khó
                        </th>
                        <th>
                         Thời gian làm bài
                        </th>
                         <th>
                         Thời gian mở đề
                        </th>
                        <th>
                         Lớp
                        </th>
                        <th>
                        Thao tác
                        </th>
                      </tr>
                    </thead>
                    <tbody>
					                    
                    <c:forEach items="${listdethi}" var="listdethi" >
                    
			                      <tr>			                       
			                        <td>
			                        ${listdethi.tendethi}
			                        </td>
			                        <td>
			                         ${listdethi.socaude}
			                        </td>
			                        <td>
			                      ${listdethi.socautrungbinh}
			                        </td>
			                      	<td>
			                     	${listdethi.socaukho}
			                      	</td>
			                      	<td>
			                      	 ${listdethi.thoigianmode}
			                      	</td>             
			                      	<td>
			                     	${listdethi.thoigianlambai}
			                      	</td>
			                      	<td>
			                      	${listdethi.tendethi}
			                      	</td>
			                        <td>
			                        <a href="XemDeThi?iddethi=${listdethi.dethiID}">
						<button class="btn btn-success" data-toggle="modal"
								data-target="#myModal1" name="button1">Xem</button></a>
						<a href="UpdateDethi?iddethi=${listdethi.dethiID}">
							<button class="btn btn-danger" data-toggle="modal"
								data-target="#myModal2">Sửa</button></a></td>
			                      </tr> 
             
                   </c:forEach>
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