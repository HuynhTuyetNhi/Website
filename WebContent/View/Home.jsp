<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
     <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
    <link rel="stylesheet" href="Template/style.css">
    
</head>
<body>

  
<div id="demo" class="carousel slide" data-ride="carousel">
<jsp:include page="Header.jsp"></jsp:include>

  <!-- Indicators -->
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
   
  </ul>
  
  <!-- The slideshow -->
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="Template/img/anhh.jpg" alt="Los Angeles" width="1300" height="400">
      <div class="txt-menu">
	<div class="text_content">Bộ đề thi thử <p> mới nhất </p> 2018</div>
	<button class="btn_test btn btn-success">Luyện thi ngay</button>
	<img src="Template/img/onthi.jpg"/>

</div>
    </div>
    <div class="carousel-item">
      <img src="Template/img/anhbiaa.jpg" alt="Chicago" width="1300" height="400">
          <div class="txt-menu txt-carou ">
	<div class="text_content caro_content">
	<ul class="txt_iteam carousel_2">
	
	<li class="test_iteam">Liên tục cập nhật</li>
	<li class="test_iteam">Đổi mới phương pháp</li>
	<li class="test_iteam">Thi trắc nghiệm và thi tự luận</li>
	</ul>
	<button class="btn_test btn btn-success">Thi thử</button>
	 </div>

</div>
    </div>
  
  </div>
  
  <!-- Left and right controls -->
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div>
<div class="question container-fluid">
            <div class="container">
                <h1 class="title">Bộ đề tổng hợp</h1>
                <div class="row">
                    <div class="col-md-3">
                        <div class="event_content py-10">
                            <img src="Template/img/OT.jpg" class="card-img-top"/>
                            <div class="newest">
                            <h4>BỘ ĐỀ TỔNG HỢP 1</h4>
                            <p><i class="fa fa-calendar"> </i>12/11/2017 </p>
                            <div class="new">
                              <p><span>Xem Thêm</span></p>
                              <img src="Template/img/scroll.jpg"/>
                            </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                            <div class="event_content py-10">
                            <img src="Template/img/-4.jpg" class="card-img-top"/>
                            <div class="newest">
                            <h4>BỘ ĐỀ TỔNG HỢP 2</h4>
                            <p> <i class="fa fa-calendar"></i>12/1/2018</p>
                            <div class="new">
                              <p><span>Xem Thêm</span></p>
                              <img src="Template/img/scroll.jpg"/>
                            </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                            <div class="event_content py-10">
                            <img src="Template/img/images.jpg" class="card-img-top"/>
                            <div class="newest">
                            <h4>BỘ ĐỀ TỔNG HỢP 3</h4>
                            <p> <i class="fa fa-calendar"></i>20/4/2018</p>
                            <div class="new">
                              <p><span>Xem Thêm</span></p>
                              <img src="Template/img/scroll.jpg"/>
                            </div>
                            </div>
                        </div>
                    </div>
                      <div class="col-md-3">
                            <div class="event_content py-10">
                            <img src="Template/img/file.jpg" class="card-img-top"/>
                            <div class="newest">
                            <h4>BỘ ĐỀ TỔNG HỢP 4</h4>
                            <p> <i class="fa fa-calendar"></i>10/8/2018</p>
                            <div class="new">
                              <p><span>Xem Thêm</span></p>
                              <img src="Template/img/scroll.jpg"/>
                            </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
     
</div>

<div class="total container">
   
                <h1>Ngân hàng câu hỏi <h1>
                <br>
                <!-- Nav tabs -->
                <ul class="nav nav-tabs" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link active" data-toggle="tab" href="#home"> 
                               <img src="Template/img/book.jpg"/>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="tab" href="#menu1">
                                <img src="Template/img/book.jpg"/>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="tab" href="#menu2">
                                <img src="Template/img/book.jpg"/>
                        </a>
                    </li>
                    <li class="nav-item">
                            <a class="nav-link" data-toggle="tab" href="#menu3">
                                    <img src="Template/img/book.jpg"/>
                            </a>
                    </li>
                   
                </ul>
            
                <!-- Tab panes -->
                <div class="tab-content">
                    <div id="home" class="container tab-pane active"><br>
                     <h2>Bài thi trắc nghiệm 1</h2>
                     <p>Tổng hợp 24 đề thi thử của LIVEBOOK </p>
                    </div>
                    <div id="menu1" class="container tab-pane fade"><br>
                      <h2>Bài thi trắc nghiệm 2</h2>
                     <p>201 câu trắc nghiệm tồng hợp</p>
                    </div>
                    <div id="menu2" class="container tab-pane fade"><br>
                       <h2>Bài thi trắc nghiệm 3</h2>
                     <p>200 câu trắc nghiệm bổ sung kỹ năng đọc hiểu </p>
                    </div>
                    <div id="menu3" class="container tab-pane fade"><br>
                       <h2>Bài thi trắc nghiệm 4</h2>
                     <p>150 câu listening và writing</p>
                    </div>
                   
                    
                    </div>
                </div>
       

</div>











<jsp:include page="Footer.jsp"></jsp:include>
 <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
    	
   
</body>
</html>
