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
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.min.css">
    <link href="assets/vendor/fonts/circular-std/style.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/libs/css/style.css">
    <link rel="stylesheet" href="assets/vendor/fonts/fontawesome/css/fontawesome-all.css">
    <link rel="stylesheet" href="assets/vendor/charts/morris-bundle/morris.css">
    <link rel="stylesheet" href="assets/vendor/fonts/material-design-iconic-font/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="assets/vendor/charts/c3charts/c3.css">
    <link rel="stylesheet" href="assets/vendor/fonts/flag-icon-css/flag-icon.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- JQuery -->
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    <!-- Load c3.css -->
	<link href="https://cdnjs.cloudflare.com/ajax/libs/c3/0.7.18/c3.css" rel="stylesheet">
	<link href="https://cdnjs.cloudflare.com/ajax/libs/c3/0.7.18/c3.min.css" rel="stylesheet">
	<!-- Load d3.js and c3.js -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/d3/5.16.0/d3.js" charset="utf-8"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/d3/5.16.0/d3.min.js" charset="utf-8"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/c3/0.7.18/c3.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/c3/0.7.18/c3.min.js"></script>
    <title>Concept - Bootstrap 4 Admin Dashboard Template</title>
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
                <a class="navbar-brand" href="main.jsp">BomBom</a>
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
                                        <div class="list-group">
                                            <a href="#" class="list-group-item list-group-item-action active">
                                            </a>
                                            <a href="#" class="list-group-item list-group-item-action">
                                                <div class="notification-info">
                                                    <div class="notification-list-user-img"><img src="assets/images/avatar-3.jpg" alt="" class="user-avatar-md rounded-circle"></div>
                                                    <div class="notification-list-user-block"><span class="notification-list-user-name">John Abraham </span>is now following you
                                                        <div class="notification-date">2 days ago</div>
                                                    </div>
                                                </div>
                                            </a>
                                            <a href="#" class="list-group-item list-group-item-action">
                                                <div class="notification-info">
                                                    <div class="notification-list-user-img"><img src="assets/images/avatar-4.jpg" alt="" class="user-avatar-md rounded-circle"></div>
                                                    <div class="notification-list-user-block"><span class="notification-list-user-name">Monaan Pechi</span> is watching your main repository
                                                        <div class="notification-date">2 min ago</div>
                                                    </div>
                                                </div>
                                            </a>
                                            <a href="#" class="list-group-item list-group-item-action">
                                                <div class="notification-info">
                                                    <div class="notification-list-user-img"><img src="assets/images/avatar-5.jpg" alt="" class="user-avatar-md rounded-circle"></div>
                                                    <div class="notification-list-user-block"><span class="notification-list-user-name">Jessica Caruso</span>accepted your invitation to join the team.
                                                        <div class="notification-date">2 min ago</div>
                                                    </div>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="list-footer"> <a href="#">View all notifications</a></div>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item dropdown connection">
                            <ul class="dropdown-menu dropdown-menu-right connection-dropdown">
                                <li>
                                    <div class="conntection-footer"><a href="#">More</a></div>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item dropdown nav-user">
                            <div class="dropdown-menu dropdown-menu-right nav-user-dropdown" aria-labelledby="navbarDropdownMenuLink2">
                                <div class="nav-user-info">
                                    <h5 class="mb-0 text-white nav-user-name">John Abraham </h5>
                                    <span class="status"></span><span class="ml-2">Available</span>
                                </div>
                                <a class="dropdown-item" href="#"><i class="fas fa-user mr-2"></i>Account</a>
                                <a class="dropdown-item" href="#"><i class="fas fa-cog mr-2"></i>Setting</a>
                                <a class="dropdown-item" href="#"><i class="fas fa-power-off mr-2"></i>Logout</a>
                            </div>	
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
                                <a class="nav-link active" href="#"><i class="fa fa-home"></i>Home</a>
                            </li>
                            <li class="nav-item">	
                                <a class="nav-link" href="pages/DataTable.jsp"><i class="fa fa-fw fa-rocket"></i>Goods List</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link"  href="#" id="dbRefresh"><i class="fa fa-refresh fa-spin"></i>DB Refresh</a>
                            </li>
                            <script>
                            $('#dbRefresh').click(function() {
                            	 $.ajax({
									  url : "/batch.do",
									  method : "get",
									  contentType : 'application/x-www-form-urlencoded; charset=UTF-8',
									  success : function(DBRefresh){
										alert(DBRefresh + "\nDB Refresh Success");
									  },
									  error : function(DBRefresh){
										 alert("Error!");
									  }
								 	}); //e.o.ajax
                            	});
                              </script>           	
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
            <div class="dashboard-ecommerce">
                <div class="container-fluid dashboard-content ">
                    <!-- ============================================================== -->
                    <!-- pageheader  -->
                    <!-- ============================================================== -->
                    <div class="row">
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                            <div class="page-header">
                                <h2 class="pageheader-title">Online market consumption trend analysis </h2>
                                <p class="pageheader-text">Nulla euismod urna eros, sit amet scelerisque torton lectus vel mauris facilisis faucibus at enim quis massa lobortis rutrum.</p>
                                <div class="page-breadcrumb">
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item">Consumption</a></li>
                                            <li class="breadcrumb-item active" aria-current="page">Trend </li>
                                        </ol>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- ============================================================== -->
                    <!-- end pageheader  -->
                    <!-- ============================================================== -->
                    <div class="ecommerce-widget">
                        <div class="row">
                        
                        
                    <!-- ============================================================== -->
                    <!-- 대분류별 판매금액 그래프  -->
                    <!-- ============================================================== -->
                            <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h5 class="text-muted">Category Total Sales</h5>
                                        <div class="metric-value d-inline-block">
                                            <h1 class="mb-1" id="categoryTotSales"></h1>
                                        </div>
                                        <div class="metric-label d-inline-block float-right text-success font-weight-bold">
                                            <span id="categorySalesAvg"></span>
                                        </div>
                                    </div>
                                    <div id="categorySalesChart"></div>
                                   	<script>
										 $.ajax({
											  url : "/categoryTotSales.do",
											  method : "get",
											  contentType : 'application/x-www-form-urlencoded; charset=UTF-8',
											  dataType : "json",
											  success : function(jsonObjList){
												
											  	//데이터 전송여부 콘솔 확인
												//console.log(jsonObjList);
											  
											  	//바 차트
												var listArr = [];
												var categorySalesTotal = 0;
												 	$.map(jsonObjList, function(vv, key){
												 		var voArr = []; 
												 		voArr.push(vv.clac1_NM);
												 		voArr.push(vv.pd_BUY_AM);
												 		listArr.push(voArr);
												 		categorySalesTotal += vv.pd_BUY_AM
												 		
												 		// 데이터 전송 여부 콘솔 확인
												 		//console.log(listArr);
												 	})
												 	var arrLength = listArr.length;
		                           					var avg = Math.ceil(categorySalesTotal/arrLength);
		                           					var avgLocale = avg.toLocaleString();
		                           					var totalLocale = categorySalesTotal.toLocaleString();
		                            				$('#categorySalesAvg').html("평균 " + avgLocale + " 억원");
		                            				$('#categoryTotSales').html("총 " + totalLocale + " 억원");
													printBarChart1(listArr);
											  } //e.o.success  
										 }) //e.o.ajax
									
									//바 차트
									function printBarChart1(listArr) {
										var chart = c3.generate({
											bindto: "#categorySalesChart",
										    data: {
										        columns: listArr,
											    type: 'bar',
											    colors: {
											    	babycare: '#FF8DA7',
							                        manclothes:'#FFFA2F',
							                        others:'#FFE89C',
							                        sportware:'#FFC58D',
							                        sundries:'#FEC5E5',
							                        food:'#CBE174',
							                        electronics:'#E1B2E8',
							                        sports:'#C4C9F1',
							                        housewares:'#9ADBEF',
							                        underware:'#7CCA5C',
							                        necessaries:'#FE007F',
							                        wonmenclothes:'#FF65AF',

							                    }	
										    },
										    
										    axis: {
								                   y: {
								                       tick:{
								                           values:[0,100,200,300,400,500,600]

								                       }
								                   }
										    },
								                       
										    bar: {
										        width: {
										            ratio: 1.0  //width: 100	
										        }
										    },
										    grid: { x: {show: false}, y: { show: false}},
										    size: {height: 240, width: 350}
										}); 
									}
									</script> 
									</script> 
                                </div>
                            </div>
                            
                            
                           
                    <!-- ============================================================== -->
                    <!-- 대분류별 판매건수 그래프  -->
                    <!-- ============================================================== -->
                            <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h5 class="text-muted">Category Total Sales Count</h5>
                                        <div class="metric-value d-inline-block">
                                            <h1 class="mb-1" id="categoryTotSalesCount"></h1>
                                        </div>
                                        <div class="metric-label d-inline-block float-right text-success font-weight-bold">
                                            <span id="categorySalesCountAvg"></span>
                                        </div>
                                    </div>
                                    <div id="categorySalesCountChart"></div>
                                   	<script>
										 $.ajax({
											  url : "/categoryTotSalesCount.do",
											  method : "get",
											  contentType : 'application/x-www-form-urlencoded; charset=UTF-8',
											  dataType : "json",
											  success : function(jsonObjList2){
												
											  	//데이터 전송여부 콘솔 확인
												//console.log(jsonObjList);
											  
											  	//바 차트
												var listArr = [];
												var categoryCountTotal = 0;
												 	$.map(jsonObjList2, function(vv, key){
														var voArr = [];
														voArr.push(vv.clac1_NM);
														voArr.push(vv.pd_BUY_CT);
														listArr.push(voArr);
												 		categoryCountTotal += vv.pd_BUY_CT
												 		
												 		// 데이터 전송 여부 콘솔 확인
												 		//console.log(listArr);
												 	})
												 	var arrLength = listArr.length;
		                           					var avg = Math.ceil(categoryCountTotal/arrLength);
		                           					var avgLocale = avg.toLocaleString();
		                           					var totalLocale = categoryCountTotal.toLocaleString();
		                            				$('#categorySalesCountAvg').html("평균 " + avgLocale + " 건");
		                            				$('#categoryTotSalesCount').html("총 " + totalLocale + " 건");
													printBarChart2(listArr);
											  } //e.o.success  
										 }) //e.o.ajax
									
									//바 차트
									function printBarChart2(listArr2) {
										var chart = c3.generate({
											bindto: "#categorySalesCountChart",
										    data: {
										        columns: listArr2,
											    type: 'bar',
											    colors: {
							                        babycare: '#FF8DA7',
							                        manclothes:'#FFFA2F',
							                        others:'#FFE89C',
							                        sportware:'#FFC58D',
							                        sundries:'#FEC5E5',
							                        food:'#CBE174',
							                        electronics:'#E1B2E8',
							                        sports:'#C4C9F1',
							                        housewares:'#9ADBEF',
							                        underware:'#7CCA5C',
							                        necessaries:'#FE007F',
							                        wonmenclothes:'#FF65AF',
											    }
										    },
										    
										    
										    axis: {
								                   y: {
								                       tick:{
								                    	   values:[0,200000,400000,600000,800000,1000000]

								                       }
								                   }
										    },
										    
										    bar: {
										        width: {
										            ratio: 1.0  //width: 100
										        }
										    },
										    grid: { x: {show: false}, y: { show: false}},
										    
										    size: {height: 240, width: 350}
										}); 
									}
									</script>
                                </div>
                            </div>
                            
                            
                            
                    <!-- ============================================================== -->
                    <!-- 총 판매건수 그래프  -->
                    <!-- ============================================================== -->
                            <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h5 class="text-muted">Month Total Sales</h5>
                                        <div class="metric-value d-inline-block">
                                            <h1 class="mb-1" id="salesTotal"></h1>
                                        </div>
                                        <div class="metric-label d-inline-block float-right text-success font-weight-bold">
                                            <span id="salesAvg"></span>
                                        </div>
                                    </div>
                                    <div id="totSalesChart"></div>
                                    <script>
                                	$.ajax({
                            			url : "/totSales.do",
                            			method : "get",
                            			contentType : 'application/x-www-form-urlencoded; charset=UTF-8',
                            			dataType : "json",
                            			success : function(jsonTotSales){
                            				
                            				//데이터 전송여부 콘솔 확인
                            				//console.log(jsonTotSales);

                            				var totSalesArr1 = [];
                           					var totSalesArr2 = [];
                           					var salesTotal = 0;
                            				$.map(jsonTotSales, function(vv, key){ 
                            					totSalesArr1.push(vv.sess_DT);
                            					totSalesArr2.push(vv.pd_BUY_AM);
                            					salesTotal += vv.pd_BUY_AM;
                            				}) 	//e.o.map
                           					var arrLength = totSalesArr2.length;
                           					var salesAvg = Math.ceil(salesTotal/arrLength);
                           					var avgLocale = salesAvg.toLocaleString();
                           					var totalLocale = salesTotal.toLocaleString();
                            				$('#salesAvg').html("평균 " + avgLocale + " 억원");
                            				$('#salesTotal').html("총 " + totalLocale + " 억원");
                            				printTotSalesChart(totSalesArr1, totSalesArr2);
                            			} //e.o.success
                                	}) //e.o.ajax
                                	
                                	//라인차트
                                	function printTotSalesChart(totSalesArr1, totSalesArr2){
                           			 		// 데이터 전송 여부 콘솔 확인
                                			//console.log(totSalesArr1);
                            				//console.log(totSalesArr2);
                                		var chart = c3.generate({
                            				
                                			bindto: "#totSalesChart",
                                			data: {
                                				json: {
                                					x: totSalesArr1,
                                					구매금액: totSalesArr2
                                				},
                                				x: 'x',
										        type: 'line'
										    },
										    
										    axis: {
										    	y: {
										    		tick:{
										    			values:[300, 340, 380]
										    		}
										    	}
										    },
										    
										    size: {height: 240, width: 400}
                                		});
                                	}
                                    </script>
                                </div>
                            </div>
                            
                            
                            
                            
                            
                    <!-- ============================================================== -->
                    <!-- 총 판매금액 그래프  -->
                    <!-- ============================================================== -->
                            <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h5 class="text-muted">Month Total Sales Count</h5>
                                        <div class="metric-value d-inline-block">
                                            <h1 class="mb-1" id="salesCountTotal"></h1>
                                        </div>
                                        <div class="metric-label d-inline-block float-right text-success font-weight-bold">
                                            <span id="salesCountAvg"></span>
                                        </div>
                                    </div>
                                    <div id="salesCountChart"></div>
                                    <script>
                                    $.ajax({
                                    	url : "/totSalesCount.do",
                            			method : "get",
                            			contentType : 'application/x-www-form-urlencoded; charset=UTF-8',
                            			dataType : "json",
                            			success : function(jsonTotSales){
                            				
                            				var totSalesCountArr1 = [];
                           					var totSalesCountArr2 = [];
                           					var salesCountTotal = 0;
                           					$.map(jsonTotSales, function(vv, key){
                           						totSalesCountArr1.push(vv.sess_DT);
                           						totSalesCountArr2.push(vv.pd_BUY_CT);
                           						salesCountTotal += vv.pd_BUY_CT;
                            				}) 	//e.o.map
                           					var arrLength = totSalesCountArr2.length;
                           					var avg = Math.ceil(salesCountTotal/arrLength);
                           					var avgLocale = avg.toLocaleString();
                           					var totalLocale = salesCountTotal.toLocaleString();
                            				$('#salesCountAvg').html("평균 " + avgLocale + " 건");
                            				$('#salesCountTotal').html("총 " + totalLocale + " 건");
                            				printTotSalesCountChart(totSalesCountArr1, totSalesCountArr2);
                            			} //e.o.success0
                                    }) //e.o.ajax
                                    function printTotSalesCountChart(totSalesCountArr1, totSalesCountArr2){
                                    	var chart = c3.generate({
                                    		bindto: "#salesCountChart",
                                    		data: {
                                    			json: {
                                    				x: totSalesCountArr1,
                                					구매건수: totSalesCountArr2
                                    			}, //e.o.json
                                    			x: 'x',
										        type: 'line'
                                    		}, //e.o.data
                                    		axis: {
                                    			y: {
                                    				tick:{
                                    					values:[635000, 750000 ,850000]
                                    				} //e.o.ytick
                                    			} //e.o.y
                                    		}, //e.o.axis
                                    		size: {height: 240, width: 400}
                                    	}) //e.o.chart
                                    } //e.o.function
                                    </script>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <!-- ============================================================== -->
                      
                            <!-- ============================================================== -->

                                          <!-- recent orders  -->
                            <!-- ============================================================== -->
							<div class="col-xl-9 col-lg-12 col-md-6 col-sm-12 col-12">
                                <div class="card">
                                    <h5 class="card-header">Recent Orders Rank</h5>	
                                    <div class="card-body p-0">
                                        <div class="table-responsive">
                                            <table id="selectTable" class="table table-bordered table-hover">
                                                <thead class="bg-light">
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
                                                <tbody id="trendselect">
                                                <script>
                                                    	$(function getInfo(){
                                                        $.ajax({
              											  url : "/trendSelect.do",
              											  method : "get",
              											  contentType : 'application/x-www-form-urlencoded; charset=UTF-8',
              											  dataType : "json",
              											  success : function(jsonTrendOrderName){
              												//console.log(jsonTrendOrderName);
              												var html = "";
              												for(key in jsonTrendOrderName){
              													var price = jsonTrendOrderName[key].pd_BUY_MAM
              													var quantity = jsonTrendOrderName[key].tot_PD_BUY_CT
              													var totSale = jsonTrendOrderName[key].tot_SALES
              													
              													var priceL = price.toLocaleString()
              													var quantityL = quantity.toLocaleString()
              													var totSaleL = totSale.toLocaleString()
              													
              													html += '<tr style = "cursor:pointer;" onclick="location.href='+"'/concept-master/Influencer.jsp?pd_C="+encodeURI(jsonTrendOrderName[key].pd_C)+"'"+'">';
              													html += '<td>'+ parseInt(parseInt(key)+1) +'</td>';
              													html += '<td>'+jsonTrendOrderName[key].pd_NM+'</td>';
              													html += '<td>'+jsonTrendOrderName[key].pd_C+'</td>';
              													html += '<td>'+jsonTrendOrderName[key].pd_BRA_NM+'</td>';
              													html += '<td>'+jsonTrendOrderName[key].clac2_NM+'</td>';
              													html += '<td>'+priceL+'</td>';
              													html += '<td>'+quantityL+'</td>';
              													html += '<td>'+totSaleL+'</td>';
              													html += '</tr>';	
              													}
              												console.log(price);
              												$("#trendselect").html(html);
              											  }
              										 	}); //e.o.ajax
                                                        })	//e.o.getinfo
                                                        </script>
                                                    <tr>
                                                        <td colspan="9"><a href="#" class="btn btn-outline-light float-right">View Details</a></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- ============================================================== -->
                            <!-- end recent orders  -->

    
                            <!-- ============================================================== -->
                            <!-- ============================================================== -->
                            <!-- 성별 월 구매금액  -->
                            <!-- ============================================================== -->
                            <div class="col-xl-3 col-lg-6 col-md-8 col-sm-12 col-12">
                                <div class="card">
                                    <h5 class="card-header">Total Sales by Gender</h5>
                                    <div class="card-body">
                                        <div id="genTotSalChart" align="center"></div>
                                        	<script>
                                        	$.ajax({
                                        		url : "/genderTotSales.do",
                                    			method : "get",
                                    			contentType : 'application/x-www-form-urlencoded; charset=UTF-8',
                                    			dataType : "json",
                                    			success : function(jsonGenSale){
                                    				
                                    				var genTotSalArr1 = [];
                                   					var genTotSalArr2 = [];
                                   					var genTotSalArr3 = [];
                                   					$.map(jsonGenSale, function(vv, key){ 
                                   						genTotSalArr1.push(vv.sess_DT);
                                   						genTotSalArr2.push(vv.pd_BUY_CT);
                                   						genTotSalArr3.push(vv.pd_BUY_CT2);
                                    				}) 	//e.o.map
                                    				printGenTotSalChart(genTotSalArr1, genTotSalArr2, genTotSalArr3);
                                    			} //e.o.success
                                        	}) //e.o.ajax
                                        	function printGenTotSalChart(genTotSalArr1, genTotSalArr2, genTotSalArr3){
                                        		var chart = c3.generate({
                                        			bindto: "#genTotSalChart",
                                        			data:{
                                        				json: {
                                        					x		: genTotSalArr1,
                                        					Female 	: genTotSalArr2,
                                        					Male	: genTotSalArr3	
                                        				}, //e.o.json
                                        				x: 'x',
                                        				type : 'area-spline',
                                        				colors : {
                                        					Female: "#FF1015",
                                        					Male: "#2B44FF"
                                        				} //e.o.colors
                                        			}, //e.o.data
                                        			axis:{
                                        				y:{
                                        					tick:{
                                        						count : 3
                                        					} //e.o.tick
                                        				} //e.o.y
                                        			}, //e.o.axis
                                        			size: {height: 205, width: 350}
                                        		}) //e.o.chart
                                        	} //e.o.function
                                        	
                                        	
                                        	</script>

                                    </div>
                                </div>
                            </div>
                            <!-- ============================================================== -->
                            <!-- end customer acquistion  -->
                            <!-- ============================================================== -->
                        </div>
                        <div class="row">
                            <!-- ============================================================== -->
              				                        <!-- product category  -->
                            <!-- ============================================================== -->
                            <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
                                <div class="card">
                                    <h5 class="card-header"> Gender Total Sales Count</h5>
                                    <div class="card-body">
                                        <div id="chart2"></div>
                                        <script>
										$(document).ready(function(){
											 $.ajax({
												  url : "/genderTotSalesCount.do",
												  method : "get",
												  contentType : 'application/x-www-form-urlencoded; charset=UTF-8',
												  dataType : "json",
												  success : function(jsonObjList){
														//console.log(jsonObjList);
														 
														//파이차트 용도 ---------------------------
														var dataJson = {};
														var keyArray = [];
															$.map(jsonObjList, function(vv,key){
														 		dataJson[vv.clnt_GENDER] = vv.pd_BUY_CT;  //{"4":"373"}
														 		keyArray.push(vv.clnt_GENDER);   			//--4---5---6---7--- X축
															})
													 	//	console.log(dataJson);
														//console.log(dataJson);
														//console.log(keyArray);
														printPieChart(dataJson, keyArray); 
												  }
											 })
										});
										//파이차트
										function printPieChart(dataJson, keyArray){
											var chart = c3.generate({
												bindto: "#chart2",
											    data: {
											        //columns: data,
											        json: [ dataJson ],
													keys: {value: keyArray },
											        type : 'donut',
											        onclick: function (d, i) { 
											        	alert("ajax...옆에 목록 보이기"); 
											        },
											        
											        onmouseover: function (d, i) { console.log("onmouseover", d, i); },
											        onmouseout: function (d, i) { console.log("onmouseout", d, i); },
											        colors: {
								                        F: '#ff407b',
								                       M: '#5969ff'}	
											        
											    },
											    size: {height: 325, width: 325},
											    donut: {
											        title: "Gender Count"
											    }
											});
										}
									</script>

                                    </div>
                                </div>
                            </div>
                            <!-- ============================================================== -->
                            <!-- end product category  -->
                                   <!-- product sales  -->
                            <!-- ============================================================== -->
                            <div class="col-xl-6 col-lg-12 col-md-12 col-sm-12 col-12">
                                <div class="card">
                                    <div class="card-header">
                                        <h5 class="mb-0"> Gender Category Total Sales Count</h5>
                                    </div>
                                    <div class="card-body">
                                        <div id="chart1"></div>
                                        <script>
                                		$(document).ready(function(){
                               			 $.ajax({
                               				  url : "/gendercategoryTotSalesCount.do",
                               				  method : "get",
                               				  contentType : 'application/x-www-form-urlencoded; charset=UTF-8',
                               				  dataType : "json",
                               				  success : function(jsonObjList){
                               						//console.log(jsonObjList);
                               						 
                               						
                               					 
                               						//리니어차트 용도 ---------------------------
                               						var htmlString = "";
                               						var listArr = []; 
                               						 	$.map(jsonObjList, function(vv, key){
                               						 		var voArr = []; 
                               						 		voArr.push(vv.clnt_GENDER);
                               						 		voArr.push(vv.babycare);
                               						 		voArr.push(vv.others);
                               						 		voArr.push(vv.manclothes);
                               						 		voArr.push(vv.sportware);
                               				    			voArr.push(vv.sundries);
                               				    			voArr.push(vv.food);
                               				    			voArr.push(vv.electronics);
                               				    			voArr.push(vv.sports);
                               				    			voArr.push(vv.housewares);
                               				    			voArr.push(vv.underware);
                               				    			voArr.push(vv.necessaries);
                               				    			voArr.push(vv.womenclothes);
                               						 		listArr.push(voArr);
                               						 	})
                               						$("#tbody_id").html(htmlString);
                               						//console.log(listArr);
                               						printLinearChart(listArr);
                               				  }  //e.o.success()
                               			}) //e.o.$.ajax()
                               		});//e.o.ready()
                               		 
                               		
                               		
                               		//리니어 차트
                               		function printLinearChart(listArr) {
                               			var chart = c3.generate({
                               				bindto: "#chart1",
                               			    data: {
                               			        columns: listArr,
                               				    type: 'bar',
                               				    groups: [
                                                       ['M', 'F']
                                                   ],
                                                   order: 'desc',
                                                   
                                                   colors:{
                                                   	F: '#ff407b',
                                                   	M: '#5969ff'
                               			  			  }
                               				    },
                               				size: {height: 325, width: 830},
                               				    
                               					
                               			    axis: {
                                                   y: {
                                                       show: true,


                                                   },
                                                   x: {
                                                       show: true,
                                                   }
                                               },
                                               grid: {
                                                   y: {
                                                       lines: [{ value: 0 }]
                                                   }
                                               }
                               			}); 
                               		}
                               		
                               		

                                        </script>
                                    </div>
                                </div>
                            </div>
                            <!-- ============================================================== -->
                            <!-- end product sales  -->
                            <!-- ============================================================== -->
                            <div class="col-xl-3 col-lg-12 col-md-6 col-sm-12 col-12">
                                <!-- ============================================================== -->
                                <!-- top perfomimg  -->
                                <!-- ============================================================== -->
                                <div class="card">
                                    <h5 class="card-header">Top Search Keywords</h5>
                                    <div class="card-body p-0">
                                        <div class="table-responsive">
                                            <table class="table no-wrap p-table">
                                                <thead class="bg-light">
                                                    <tr class="border-0">
                                                        <th class="border-0">Rank</th>
                                                        <th class="border-0">Keywords</th>
                                                        <th class="border-0">Search Count</th>
                                                    </tr>
                                                </thead>
                                                <tbody id="searchselect">
                                                
                                                	
                                                    <script>
                                                    	$(function getInfo(){
                                                        $.ajax({
              											  url : "/searchSelect.do",
              											  method : "get",
              											  contentType : 'application/x-www-form-urlencoded; charset=UTF-8',
              											  dataType : "json",
              											  success : function(jsonSearchOrderName){
              												//console.log(jsonTrendOrderName);
              												var htmlsearch = "";
              												for(key in jsonSearchOrderName){
              													var cnt = jsonSearchOrderName[key].search_CNT
              													var cntL = cnt.toLocaleString()
              													htmlsearch += '<tr>';
              													htmlsearch += '<td>'+ parseInt(parseInt(key)+1) +'</td>';
              													htmlsearch += '<td>'+jsonSearchOrderName[key].kwd_NM+'</td>';
              													htmlsearch += '<td>'+cntL+'</td>';
              													htmlsearch += '</tr>';	
              													}
              												//console.log(html);
              												$("#searchselect").html(htmlsearch);
              											  }
              										 	}); //e.o.ajax
                                                        })	//e.o.getinfo
                                                        </script>
                                                    <tr>
                                                        <td colspan="3">
                                                            <a href="#" class="btn btn-outline-light float-right">Details</a>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <!-- ============================================================== -->
                                <!-- end top perfomimg  -->
                                <!-- ============================================================== -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
            <div class="footer">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
                             Copyright © 2018 Concept. All rights reserved. Dashboard by <a href="https://colorlib.com/wp/">Colorlib</a>.
                        </div>
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
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
        <!-- ============================================================== -->
        <!-- end wrapper  -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- end main wrapper  -->
    <!-- ============================================================== -->
    <!-- Optional JavaScript -->
    <!-- jquery 3.3.1 -->
    <script src="assets/vendor/jquery/jquery-3.3.1.min.js"></script>
    <!-- bootstap bundle js -->
    <script src="assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
    <!-- chart c3 js -->
    <script src="assets/vendor/charts/c3charts/c3.min.js"></script>
    <script src="assets/vendor/charts/c3charts/d3-5.4.0.min.js"></script>
    <script src="assets/vendor/charts/c3charts/C3chartjs.js"></script>
</body>
 
</html>