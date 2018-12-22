<%@page import="BEAN.Loaicauhoi"%>
<%@page import="DAO.CauHoiDAO"%>
<%@page import="BEAN.CauHoi"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
    <%if(request.getAttribute("page").equals("1"))
    {
    %>
 <div class="card mb-3">
            <div class="card-header">
              <i class="fas fa-table"></i>
              Quản lý thành viên</div>
            <div class="card-body">	
            <a class="btn btn-primary triggeradd" href="#" style="width:200px;margin-bottom:10px">Thêm Thành Viên</a>
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>Họ và tên</th>
                      <th>Nickname</th>
                      <th>Mật khẩu</th>
                      <th>Giới tính</th>
                      <th>Điện thoại</th>
                      <th>Địa chỉ</th>
                      <th>Lớp học</th>
                      <th>Thao tác</th>
                    </tr>
                  </thead>
                  <tfoot>
                    <tr>
                     <th>Họ và tên</th>
                      <th>Nickname</th>
                      <th>Mật khẩu</th>
                      <th>Giới tính</th>
                      <th>Điện thoại</th>
                      <th>Địa chỉ</th>
                       <th>Lớp học</th>
                      <th>Thao tác </th>
                    </tr>
                  </tfoot>
                  <tbody>
                  <c:forEach items="${listMemBer}" var="listMemBer">
                   <tr>
                    
                      <td>${listMemBer.name}</td>
                      <td>${listMemBer.membername}</td>
                      <td>${listMemBer.memberpass}</td>
                      <td>${listMemBer.sex}</td>        
                      <td>${listMemBer.phone}</td>
                      <td>${listMemBer.diaChi}</td>
                      <td>${listMemBer.IDLop}</td>
              	<td>
                      <a class="btn btn-danger triggerRemove" href="DeleteUser?idmember=${listMemBer.memberid}" style="width:100px">delete</a>
                      </td>
                     
                    </tr>
                   
                   </c:forEach> 
                  </tbody>
                </table>
              </div>
            </div>
           
          </div>
         <!-- modal xóa -->
          <div class="modal fade" id="modalRemove" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
       
        <h4 class="modal-title" id="myModalLabel">Xóa thành viên</h4>
      </div>
      <div class="modal-body">
       Bạn có chắc chắn xóa
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
        <a href="" class="btn btn-danger removeBtn">Remove</a>
      </div>
    </div>
  </div>
</div>

<!-- htmt thêm -->
<div class="modal fade" id="modaladd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog" id="product_dialog">
  
 
    <div class="modal-content">
     <form name="paymentitrform" id="paymentitrform" class="payment"
                    method="post"
                    action="InsertUser">
      <div class="modal-header">	
       
        <h4 class="modal-title" id="myModalLabel">Thêm thí sinh</h4>
      </div>
      <div class="modal-body">
     
                            <div class="form-group">
                                <label>Tên thí sinh</label> <input id="ndHoTen"
                                    class="form-control" placeholder="Tên thí sinh" name="isName">
                            </div>
                            <div class="form-group">
                                <label>Tên đăng nhập </label> <input id="NgaySinh"
                                    class="form-control" placeholder="Tên đăng nhập" name="isMemberName">
                            </div>
                            <div class="form-group">
                                <label>Mật khẩu</label> <input
                                    
							class="form-control" placeholder="Mật khẩu" name="isMemberPass">
                            </div>
                            <div class="form-group">
                                <label>Ngày sinh</label> <input style="height=100px"
                                    class="form-control" placeholder="Ngày sinh" name="isNgaySinh">

                            </div>
                            <div class="form-group">
                                <label>Giới tính</label> <input style="height=100px"
                                    class="form-control" placeholder="Giới tính" name="isGioiTinh">

                            </div>
                            <div class="form-group">
                                <label>Địa chỉ</label> <input style="height=100px"
                                    class="form-control" placeholder="Địa chỉ" name="isDiaChi">

                            </div>
                            <div class="form-group">
                                <label>Số điện thoại</label> <input style="height=100px"
                                    class="form-control" placeholder="Số điện thoại" name="isSoDienThoai">
                            </div>   
      </div>
       					<div class="modal-footer">
       					 <input type="hidden" name="planamount" id="planamount" value="0">
                                
                            <button class="btn btn-success" name="button1" >Thêm</button>
                            
                        </div>
                         </form>
                          <button type="button" class="btn btn-default" data-dismiss="modal" style="width:70px;margin-top:-54px;margin-left:340px">Cancel</button>
    </div>
   
   
  </div>
</div>
							   
												 														
					<script type="text/javascript">
$(document).ready(function() {
	$('.nav-tabs a:first').tab('show'); // Select first tab
	$(".triggerRemove").click(function(e) {
		e.preventDefault();
		$("#modalRemove .removeBtn").attr("href", $(this).attr("href"));
		$("#modalRemove").modal();
	});
});
</script>
<!-- modal thêm -->

 <script type="text/javascript">
$(document).ready(function() {
	$('.nav-tabs a:first').tab('show'); // Select first tab
	$(".triggeradd").click(function(e) {
		e.preventDefault();
		$("#modaladd .addBtn").attr("href", $(this).attr("href"));
		$("#modaladd").modal();
	});
});

function form_submit() {
    document.getElementById("paymentitrform").submit();
} 
</script>
 <%} %>
 
   <%if(request.getAttribute("page").equals("2"))
    {
    %>
 <div class="card mb-3">
            <div class="card-header">
              <i class="fas fa-table"></i>
              Quản lý lớp học</div>
            <div class="card-body">
            <a class="btn btn-primary triggeradd" href="#" style="width:200px;margin-bottom:10px">Thêm Lớp Học</a>
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>ID Lớp Học</th>
                      <th>Tên Lớp Học</th>
                      <th>Tên giảng viên</th>
                     <th>Thao tác </th>
                    </tr>
                  </thead>
                  <tfoot>
                    <tr>
                     <th>ID Lớp Học</th>
                      <th>Tên Lớp Học</th>
                      <th>Tên giảng viên</th>
                     <th>Thao tác </th>

                    </tr>
                  </tfoot>
                  <tbody>
                  <c:forEach items="${listLopHoc}" var="listLopHoc">
                    <tr>
                      <td>${listLopHoc.lopID}</td>
                       <td>${listLopHoc.tenLop}</td>
                        <td>${listLopHoc.tenGiangVien}</td>
                     
              	<td>
              	<a class="btn btn-danger triggerRemove" href="DeleteLop?idlop=${listLopHoc.lopID}" style="width:100px">delete</a>
                <a class="btn btn-danger triggerupdate" style="width:100px" data-product-id="${listLopHoc.lopID}">Update</a> 
                      </td>
                     
                    </tr>
                   
                   </c:forEach> 
                  </tbody>
                </table>
              </div>
            </div>
           
          </div>
          
          <!-- modal xóa -->
          <div class="modal fade" id="modalRemove" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
       
        <h4 class="modal-title" id="myModalLabel">Xóa thành viên</h4>
      </div>
      <div class="modal-body">
       Bạn có chắc chắn xóa
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
        <a href="" class="btn btn-danger removeBtn">Remove</a>
      </div>
    </div>
  </div>
</div>

<!-- modal add -->
        
  <div class="modal fade" id="modaladd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog" id="a">
  <form name="paymentitrform" id="paymentitrform" class="payment" method="get"
                    action="InserLop">
    <div class="modal-content">
      <div class="modal-header">
       
        <h4 class="modal-title" id="myModalLabel">Thêm Lớp Học</h4>
      </div>
      <div class="modal-body">
      <input type="text" id="inputEmail" class="form-control" placeholder="Tên lớp học" required="required" autofocus="autofocus" name="isLopHoc" >
      </div>
      <div class="modal-body">
      <input type="text" id="inputEmail" class="form-control" placeholder="Tên giảng viên" required="required" autofocus="autofocus" name="isTenGiangVien" >
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
        <button onclick="form_submit()" class="btn btn-success" data-dismiss="modal">Thêm</button>
      </div>
    </div>
    </form>
  </div>
</div>					
<!-- modal upadte -->      
  <div class="modal fade" id="modalupdate" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog" id="product_dialog">
 
  </div>
</div>								   
<!-- Xóa -->
						
<script type="text/javascript">
$(document).ready(function() {
	$('.nav-tabs a:first').tab('show'); // Select first tab
	$(".triggerRemove").click(function(e) {
		e.preventDefault();
		$("#modalRemove .removeBtn").attr("href", $(this).attr("href"));
		$("#modalRemove").modal();
	});
});
</script>						 			
						<!-- sửa -->						
					<script type="text/javascript">
					<!-- modal update -->
					$(".triggerupdate").click(function(){
						var id = $(this).data("product-id");
						$.get("Update_Lop_Get?idlop="+id,
						  function(data, status){
							$("#product_dialog").html(data);	
						  });
						});
					</script>	
					<script type="text/javascript">
					$(document).ready(function() {
						$('.nav-tabs a:first').tab('show'); // Select first tab
						$(".triggerupdate").click(function(e) {
							e.preventDefault();
							$("#modalupdate .addBtn").attr("href", $(this).attr("href"));
							$("#modalupdate").modal();
						});
					});

					
					function form_submit() {
					    document.getElementById("search_form").submit();
					   }   
					</script>
					
					
<!-- modal thêm -->

 <script type="text/javascript">
$(document).ready(function() {
	$('.nav-tabs a:first').tab('show'); // Select first tab
	$(".triggeradd").click(function(e) {
		e.preventDefault();
		$("#modaladd .addBtn").attr("href", $(this).attr("href"));
		$("#modaladd").modal();
	});
});

function form_submit() {
    document.getElementById("paymentitrform").submit();
} 
</script>
 <%} %>  
 
  <%if(request.getAttribute("page").equals("3"))
    {
	  
	  int categoryID=1;
	  if(request.getParameter("category")!=null)
	  {
	  	categoryID=Integer.parseInt(request.getParameter("category"));
	  }
	  
    %>
 <div class="card mb-3">
            <div class="card-header">
              <i class="fas fa-table"></i>
              Quản lý sản phẩm</div>
            <div class="card-body">
            <a class="btn btn-primary triggeradda" href="#" style="width:200px;margin-bottom:10px">Thêm sản phẩm</a>
             
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
				
				 <li><a href="CauHoiforward?pageid=3&category=<%=c.getMaloaicauhoi()%>"><%=c.getTenloaicauhoi()%></a></li> 
				
				
				<%} %>
				  </div>
				</div>
             
              <div class="table-responsive">
              
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>Tên câu hỏi</th>
                      <th> Đáp án A</th>
                      <th> Đáp án B</th>
                      <th> Đáp án C</th>
                      <th> Đáp án D</th>
                      <th> Đáp án</th>
                      <th>Loại câu hỏi</th>
                      <th>Thao tác</th>
                    </tr>
                  </thead>
                  <tfoot>
                    <tr>
                      <th>Tên câu hỏi</th>
                      <th> Đáp án A</th>
                      <th> Đáp án B</th>
                      <th> Đáp án C</th>
                      <th> Đáp án D</th>
                      <th> Đáp án</th>
                      <th>Loại câu hỏi</th>
                      <th>Thao tác</th>
                    </tr>
                  </tfoot>
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
			                        <a class="btn btn-danger triggerRemove" href="DeleteCauHoi?idCauHoi=<%=p.getCauHoiID()%>" style="width:100px">delete</a>
               						 <a class="btn btn-danger triggerupdate" style="width:100px" data-product-id=<%=p.getCauHoiID()%>>Update</a> </td>
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
         <div class="modal fade" id="modalRemove" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
       
        <h4 class="modal-title" id="myModalLabel">Xóa Câu Hỏi</h4>
      </div>
      <div class="modal-body">
       Bạn có chắc chắn xóa
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
        <a href="" class="btn btn-danger removeBtn">Remove</a>
      </div>
    </div>
  </div>
</div>	
<!-- modal upadte -->      
  <div class="modal fade" id="modalupdate" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog" id="product_dialog">
  
  
  
  
  </div>
</div>		

<!-- htmt thêm -->
<div class="modal fade" id="modaladda" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog" id="product_dialog">
  
 
    <div class="modal-content">
     <form name="paymentitrforma" id="paymentitrform" class="payment"
                    method="post"
                    action="product_insert">
      <div class="modal-header">	
       
        <h4 class="modal-title" id="myModalLabel">Thêm sản phẩm</h4>
      </div>
      <div class="modal-body">
     <div class="form-group">
                                <label>ID loại sản phẩm </label> <input id="Ndmts"
                                    class="form-control" placeholder="Nhập ID loại sách" name="iscategoryID">
                            </div>
                            <div class="form-group">
                                <label>Tên sản phẩm </label> <input id="ndHoTen"
                                    class="form-control" placeholder="Nhập tên sách" name="isproductName">
                            </div>
                            <div class="form-group">
                                <label>tên ảnh </label> <input id="NgaySinh"
                                    class="form-control" placeholder="Nhập ảnh" name="isproductImage">
                            </div>
                            <div class="form-group">
                                <label>Số Lượng </label> <input
                                    
							class="form-control" placeholder="Nhập số lượng sách " name="isproductPrice">
                            </div>
                            <div class="form-group">
                                <label>Nội dung sản phẩm</label> <input style="height=100px"
                                    class="form-control" placeholder="Nhập nội dung sách" name="isProductDescription">

                            </div>
           
      </div>
       					<div class="modal-footer">
       					 <input type="hidden" name="planamount" id="planamount" value="0">
                                
                            <button class="btn btn-success" name="button1" >Thêm</button>
                            
                        </div>
                         </form>
                          <button type="button" class="btn btn-default" data-dismiss="modal" style="width:70px;margin-top:-54px;margin-left:340px">Cancel</button>
    </div>
   
   
  </div>
</div>					   
			<!-- modal xoa -->									 			
												
					<script type="text/javascript">
$(document).ready(function() {
	$('.nav-tabs a:first').tab('show'); // Select first tab
	$(".triggerRemove").click(function(e) {
		e.preventDefault();
		$("#modalRemove .removeBtn").attr("href", $(this).attr("href"));
		$("#modalRemove").modal();
	});
});
</script>

<!-- sửa -->						
					<script type="text/javascript">
					<!-- modal update -->
					$(".triggerupdate").click(function(){
						var id = $(this).data("product-id");
						$.get("Update_CauHoi_Get?IDCauHoi="+id,
						  function(data, status){
							$("#product_dialog").html(data);	
						  });
						});
					</script>	
					<script type="text/javascript">
					$(document).ready(function() {
						$('.nav-tabs a:first').tab('show'); // Select first tab
						$(".triggerupdate").click(function(e) {
							e.preventDefault();
							$("#modalupdate .addBtn").attr("href", $(this).attr("href"));
							$("#modalupdate").modal();
						});
					});

					
					function form_submit() {
					    document.getElementById("search_form").submit();
					   }   
					</script>	



<script type="text/javascript">
$(document).ready(function() {
	$('.nav-tabs a:first').tab('show'); // Select first tab
	$(".triggeradd").click(function(e) {
		e.preventDefault();
		$("#modaladd .addBtn").attr("href", $(this).attr("href"));
		$("#modaladd").modal();
	});
});

function form_submit() {
    document.getElementById("paymentitrform").submit();
} 
</script>
 <!-- modal thêm -->
 <script type="text/javascript">
$(document).ready(function() {
	$('.nav-tabs a:first').tab('show'); // Select first tab
	$(".triggeradda").click(function(e) {
		e.preventDefault();
		$("#modaladda .addBtn").attr("href", $(this).attr("href"));
		$("#modaladda").modal();
	});
});

function form_submit() {
    document.getElementById("paymentitrforma").submit();
} 
</script>
 <%} %>
 
  <%if(request.getAttribute("page").equals("4"))
    {
    %>
 <div class="card mb-3">
            <div class="card-header">
              <i class="fas fa-table"></i>
              Quản lý hóa đơn</div>
            <div class="card-body">	
            
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      	<th>Tên đề thi</th>
                        <th>Số câu dễ </th>
                        <th>Số câu trung bình</th>
                        <th>Số câu khó</th>
                        <th>Thời gian làm bài</th>
                        <th>Thời gian mở đề</th>
                        <th>Lớp</th>
                        <th>Thao tác</th>
                    </tr>
                  </thead>
                  <tfoot>
                    <tr>
 						<th>Tên đề thi</th>
                        <th>Số câu dễ </th>
                        <th>Số câu trung bình</th>
                        <th>Số câu khó</th>
                        <th>Thời gian làm bài</th>
                        <th>Thời gian mở đề</th>
                        <th>Lớp</th>
                        <th>Thao tác</th>
                    </tr>
                  </tfoot>
                  <tbody>
                 <c:forEach items="${listdethi}" var="listdethi" >
                    
			                      <tr>			                       
			                        <td>${listdethi.tendethi}</td>
			                        <td>${listdethi.socaude}</td>
			                        <td>${listdethi.socautrungbinh}</td>
			                      	<td>${listdethi.socaukho}</td>
			                      	<td>${listdethi.thoigianmode}</td>             
			                      	<td>${listdethi.thoigianlambai}</td>
			                      	<td>${listdethi.tendethi}<td>
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
         
          <div class="modal fade" id="modalRemove" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
       
        <h4 class="modal-title" id="myModalLabel">Xóa hóa đơn</h4>
      </div>
      <div class="modal-body">
       Bạn có chắc chắn xóa
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
        <a href="" class="btn btn-danger removeBtn">Remove</a>
      </div>
    </div>
  </div>
</div>								   
												 														
					<script type="text/javascript">
$(document).ready(function() {
	$('.nav-tabs a:first').tab('show'); // Select first tab
	$(".triggerRemove").click(function(e) {
		e.preventDefault();
		$("#modalRemove .removeBtn").attr("href", $(this).attr("href"));
		$("#modalRemove").modal();
	});
});
</script>	
 <%} %>
 
 <!-- quản lý chi tiết hóa đơn -->
 <%if(request.getAttribute("page").equals("5"))
    {
    %>
 <div class="card mb-3">
            <div class="card-header">
              <i class="fas fa-table"></i>
              Quản lý hóa đơn</div>
            <div class="card-body">	
            
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>ID chi tiết hóa đơn</th>
                      <th>ID sản phẩm</th>
                      <th>ID hóa đơn</th>
                      
                      <th>Giá</th>
                      <th>Số lượng</th>
                    </tr>
                  </thead>
                  <tfoot>
                    <tr>
                     
                    <th>ID chi tiết hóa đơn</th>
                      <th>ID sản phẩm</th>
                      <th>ID hóa đơn</th>
                      
                      <th>Giá</th>
                      <th>Số lượng</th>
                    </tr>
                  </tfoot>
                  <tbody>
                  <c:forEach items="${listbilld}" var="listbilld">
                  <tr>
                <td>${listbilld.billDetailID}</td>
                      <td>${listbilld.productID}</td>
                      <td>${listbilld.billID}</td>
                      <td>${listbilld.price}</td>
                      <td>${listbilld.quantity}</td>
                    <td>
                      <a class="btn btn-danger triggerRemove" href="delete_bill_detail?idbilld=${listbilld.billDetailID}" style="width:100px">delete</a>
                      </td>
                   </tr>
                   </c:forEach> 
                  </tbody>
                </table>
              </div>
            </div>
           
          </div>
         
          <div class="modal fade" id="modalRemove" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
       
        <h4 class="modal-title" id="myModalLabel">Xóa hóa đơn</h4>
      </div>
      <div class="modal-body">
       Bạn có chắc chắn xóa
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
        <a href="" class="btn btn-danger removeBtn">Remove</a>
      </div>
    </div>
  </div>
</div>								   
												 														
					<script type="text/javascript">
$(document).ready(function() {
	$('.nav-tabs a:first').tab('show'); // Select first tab
	$(".triggerRemove").click(function(e) {
		e.preventDefault();
		$("#modalRemove .removeBtn").attr("href", $(this).attr("href"));
		$("#modalRemove").modal();
	});
});
</script>	
 <%} %>
 
 
 <%if(request.getAttribute("page").equals("6"))
    {
    %>
 <div class="card mb-3">
            <div class="card-header">
              <i class="fas fa-table"></i>
              Quản lý Slide quảng cáo</div>
            <div class="card-body">	
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>Tên ảnh slide</th>
                     <th>Thao tác </th>
                    </tr>
                  </thead>
                  <tfoot>
                    <tr>
                     <th>Tên ảnh slide</th>
                      <th>Thao tác </th>
                    </tr>
                  </tfoot>
                  <tbody>
                  <c:forEach items="${listslide}" var="listslide">
							
					 <tr>
                    
                      <td>${listslide.slidebannerimage}</td>
                     
              			<td>
                      <a class="btn btn-primary triggeradd" href="#" style="width:200px;margin-bottom:10px">Update slideshow</a>
                      </td>
                     
                    </tr>
							 
					</c:forEach>
                  </tbody>
                </table>
              </div>
            </div>
           
          </div>
        <!-- update slide --> 
          <div class="modal fade" id="modaladd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
  
 
    <div class="modal-content">
     <form name="paymentitrform" id="paymentitrform" class="payment"
                    method="post"
                    action="product_insert">
      <div class="modal-header">	
       
        <h4 class="modal-title" id="myModalLabel">Update ảnh</h4>
      </div>
					      <div class="modal-body">
					  <div class="form-group">
					    <label for="exampleFormControlFile1">Example file input</label>
					    <input type="file" class="form-control-file" id="exampleFormControlFile1">
					  </div>
					           
					      </div>
       					<div class="modal-footer">
       					 <input type="hidden" name="planamount" id="planamount" value="0">
                            <button class="btn btn-success" name="button1" >Đồng ý</button>   
                        </div>
                         </form>
                          <button type="button" class="btn btn-default" data-dismiss="modal" style="width:70px;margin-top:-54px;margin-left:340px">Cancel</button>
   					 </div>
 
 						 </div>
</div>							   
										
<!-- modal thêm -->

<script type="text/javascript">
$(document).ready(function() {
	$('.nav-tabs a:first').tab('show'); // Select first tab
	$(".triggeradd").click(function(e) {
		e.preventDefault();
		$("#modaladd .addBtn").attr("href", $(this).attr("href"));
		$("#modaladd").modal();
	});
});

function form_submit() {
    document.getElementById("paymentitrform").submit();
} 
</script>
 		
 <%} %>  
 
 
  