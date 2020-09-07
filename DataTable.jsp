<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="en">
 
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Data Tables</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../assets/vendor/bootstrap/css/bootstrap.min.css">
    <link href="../assets/vendor/fonts/circular-std/style.css" rel="stylesheet">
    <link rel="stylesheet" href="../assets/libs/css/style.css">
    <link rel="stylesheet" href="../assets/vendor/fonts/fontawesome/css/fontawesome-all.css">
    <link rel="stylesheet" type="text/css" href="../assets/vendor/datatables/css/dataTables.bootstrap4.css">
    <link rel="stylesheet" type="text/css" href="../assets/vendor/datatables/css/buttons.bootstrap4.css">
    <link rel="stylesheet" type="text/css" href="../assets/vendor/datatables/css/select.bootstrap4.css">
    <link rel="stylesheet" type="text/css" href="../assets/vendor/datatables/css/fixedHeader.bootstrap4.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- JQuery -->
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
</head>

<body>
    <!-- ============================================================== -->
    <!-- main wrapper -->
    <!-- ============================================================== -->
    <div class="dashboard-main-wrapper">
         <!-- ============================================================== -->
        <!-- navbar -->
        <!-- ============================================================== -->
         <div class="dashboard-header">
	        <nav class="navbar navbar-expand-lg bg-white fixed-top">
	            <a class="navbar-brand" href="/concept-master/main.jsp">BOMBOM</a>
	            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	                <span class="navbar-toggler-icon"></span>
	            </button>
	            <div class="collapse navbar-collapse " id="navbarSupportedContent">
	                <ul class="navbar-nav ml-auto navbar-right-top">
	                    <li class="nav-item dropdown notification">
	                        <ul class="dropdown-menu dropdown-menu-right notification-dropdown">
	                            <li>
	                                <div class="notification-title"> Notification</div>
	                                <div class="notification-list">
	                                </div>
	                            </li>
	                            <li>
	                                <div class="list-footer"> <a href="#">View all notifications</a></div>
	                            </li>
	                        </ul>
	                    </li>
	                </ul>
	            </div>
	        </nav>
	    </div>
        <!-- ============================================================== -->
        <!-- end navbar -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- left sidebar -->
        <!-- ============================================================== -->
	    <div class="nav-left-sidebar sidebar-dark">
	        <div class="menu-list">
	            <nav class="navbar navbar-expand-lg navbar-light">
	                <a class="d-xl-none d-lg-none" href="#">Dashboard</a>
	                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
	                    <span class="navbar-toggler-icon"></span>
	                </button>
	                <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav flex-column">
                            <li class="nav-divider">
                                Menu
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link active" href="/concept-master/main.jsp"><i class="fa fa-home"></i>Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#"><i class="fa fa-fw fa-rocket"></i>Goods List</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="/batch.do"><i class="fa fa-refresh fa-spin"></i>DB Refresh</a>
                            </li>
                        </ul>
                    </div>
	            </nav>
	        </div>
	    </div>
        <!-- ============================================================== -->
        <!-- end left sidebar -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- wrapper  -->
        <!-- ============================================================== -->
        <div class="dashboard-wrapper">
            <div class="container-fluid  dashboard-content">
                <!-- ============================================================== -->
                <!-- pageheader -->
                <!-- ============================================================== -->
                <div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="page-header">
                            <h2 class="pageheader-title">Goods List</h2>
                            <p class="pageheader-text">Proin placerat ante duiullam scelerisque a velit ac porta, fusce sit amet vestibulum mi. Morbi lobortis pulvinar quam.</p>
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">consumption</a></li>
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Trend</a></li>
                                        <li class="breadcrumb-item active" aria-current="page">Goods List</li>
                                    </ol>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- end pageheader -->
                <!-- ============================================================== -->
                <div class="row">
                    <!-- ============================================================== -->
                    <!-- basic table  -->
                    <!-- ============================================================== -->
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="card">
                            <h5 class="card-header">Basic Table</h5>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered table-hover">
                                        <thead>
                                            <tr class="border-0">
                                                <th class="border-0">#</th>
                                                <th class="border-0">Product Name</th>
                                                <th class="border-0">ProductId</th>
                                                <th class="border-0">Brand</th>
                                                <th class="border-0">classified</th>
                                                <th class="border-0">Price</th>
                                                <th class="border-0">quantity</th>
                                                <th class="border-0">Total Sales</th>
                                            </tr>
                                        </thead>
                                        <tbody id="GoodsList">
                                        <script>
                                        $.ajax({
                                        	url : "/GoodsList.do",
											method : "get",
											contentType : 'application/x-www-form-urlencoded; charset=UTF-8',
											dataType : "json",
											success : function(GoodsObj){
												//console.log(jsonTrendOrderName);
  												var html = "";
  												for(key in GoodsObj){
  													var p = GoodsObj[key].pd_BUY_MAM
  													var c = GoodsObj[key].tot_PD_BUY_CT
  													var s = GoodsObj[key].tot_SALES
  													
  													var price = p.toLocaleString()
  													var count = c.toLocaleString()
  													var sales = s.toLocaleString()
  													html += '<tr style = "cursor:pointer;" onclick="location.href='+"'/concept-master/Influencer.jsp?pd_C="+encodeURI(GoodsObj[key].pd_C)+"'"+'">';
  													html += '<td>'+ parseInt(parseInt(key)+1) +'</td>';
  													html += '<td>'+GoodsObj[key].pd_NM+'</td>';
  													html += '<td>'+GoodsObj[key].pd_C+'</td>';
  													html += '<td>'+GoodsObj[key].pd_BRA_NM+'</td>';
  													html += '<td>'+GoodsObj[key].clac2_NM+'</td>';
  													html += '<td>'+price+'	원 </td>';
  													html += '<td>'+count+'	개 </td>';
  													html += '<td>'+sales+'	원 </td>';
  													html += '</tr>';	
  													}
  												//console.log(html);
  												$("#GoodsList").html(html);
											  } //e.success
                                        }) //e.ajax
                                        </script>
                                            
                                        </tbody>
                                        <tfoot>
                                            <tr class="border-0">
                                                <th class="border-0">#</th>
                                                <th class="border-0">Product Name</th>
                                                <th class="border-0">ProductId</th>
                                                <th class="border-0">Brand</th>
                                                <th class="border-0">classified</th>
                                                <th class="border-0">Price</th>
                                                <th class="border-0">quantity</th>
                                                <th class="border-0">Total Sales</th>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- ============================================================== -->
                    <!-- end basic table  -->
                    <!-- ============================================================== -->
                </div>
               
                
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
            <div class="footer">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12">
                            Copyright © 2018 Concept. All rights reserved. Dashboard by <a href="https://colorlib.com/wp/">Colorlib</a>.
                        </div>
                        <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12">
                            <div class="text-md-right footer-links d-none d-sm-block">
                                <a href="javascript: void(0);">About</a>
                                <a href="javascript: void(0);">Support</a>
                                <a href="javascript: void(0);">Contact Us</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- end footer -->
            <!-- ============================================================== -->
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- end main wrapper -->
    <!-- ============================================================== -->
    <!-- Optional JavaScript -->
    <script src="../assets/vendor/jquery/jquery-3.3.1.min.js"></script>
    <script src="../assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
    <script src="../assets/vendor/slimscroll/jquery.slimscroll.js"></script>
    <script src="../assets/vendor/multi-select/js/jquery.multi-select.js"></script>
    <script src="../assets/libs/js/main-js.js"></script>
    <script src="../assets/vendor/datatables/js/dataTables.bootstrap4.min.js"></script>
    <script src="../assets/vendor/datatables/js/buttons.bootstrap4.min.js"></script>
     <script src="../assets/vendor/datatables/js/data-table.js"></script>
</body>
 
</html>