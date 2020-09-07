<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>4
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="en">

 
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- JQuery -->
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.min.css">
    <link href="assets/vendor/fonts/circular-std/style.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/libs/css/style.css">
    <link rel="stylesheet" href="assets/vendor/fonts/fontawesome/css/fontawesome-all.css">
    <link rel="stylesheet" href="assets/vendor/charts/morris-bundle/morris.css">
    <link rel="stylesheet" href="assets/vendor/fonts/material-design-iconic-font/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
    
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
	            <a class="navbar-brand" href="main.jsp">BOMBOM</a>
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
                                <a class="nav-link active" href="main.jsp"><i class="fa fa-home"></i>Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="pages/DataTable.jsp"><i class="fa fa-fw fa-rocket"></i>Goods List</a>
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
	        <div class="dashboard-influence">
	            <div class="container-fluid dashboard-content">
	                <!-- ============================================================== -->
	                <!-- pageheader  -->
	                <!-- ============================================================== -->
	                <div class="row">
	                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
	                        <div class="page-header">
	                            <h3 class="mb-2">Product Detail Page </h3>
	                            <p class="pageheader-text">Proin placerat ante duiullam scelerisque a velit ac porta, fusce sit amet vestibulum mi. Morbi lobortis pulvinar quam.</p>
	                            <div class="page-breadcrumb">
	                                <nav aria-label="breadcrumb">
	                                    <ol class="breadcrumb">
	                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">consumption</a></li>
	                                        <li class="breadcrumb-item active" aria-current="page">Trend</li>
	                                    </ol>
	                                </nav>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <!-- ============================================================== -->
	                <!-- end pageheader  -->
	                <!-- ============================================================== -->
	                <!-- ============================================================== -->
	                <!-- content  -->
	                <!-- ============================================================== -->
	                <!-- ============================================================== -->
	                <!-- influencer profile  -->
	                <!-- ============================================================== -->

	                
	                <script>
	               		
/* 	                var getParameters = function (paramName) {
	                	var returnValue;			// return 설정
	                	var url = location.href;	// url 받아오기
	                	
	                	// ?를 기점으로 url 자른 후 & 를 기점으로 분할.
	                	var parameters = (url.slice(url.indexOf('?') + 1, url.length)).split('&');
	                	
	                	// paramName 으로 요청된 데이터의 값만 return
	                	for (var i = 0; i < parameters.length; i++) {
	                		var varName = parameters[i].split('=')[0];
	                		if (varName.toUpperCase() == paramName.toUpperCase()) {
	                			returnValue = parameters[i].split('=')[1];
	                            return decodeURIComponent(returnValue);
	                		}
	                	}
	                	
	                } //e.o.getpara
	                var pd_C = getParameters('pd_C');
	                console.log("주소에서 받아온 pd_C = "+getParameters('pd_C'));
	                console.log("변수 선언으로 받아온 pd_C = " + pd_C); */
	                 

	                 
	                $.ajax({
               		  url : "/detailView.do",
					  method : "get",
					  data : "pd_C=${param.pd_C}",
					  contentType : 'application/x-www-form-urlencoded; charset=UTF-8',
					  dataType : "json",
					  success : function(jsonObject){
						//console.log("pd_C=${param.pd_C}");
						//console.log(jsonObject);
						  
	                	var name="";
	                	var code="";
	                	var brnad="";
	                	var price="";
	                	var clac1="";
	                	var clac2="";
	                	var clac3="";
	                	var totView = "";
	                	var totSess = "";
	                	var totSale = "";
	                	var totCount = "";
	                	$.map(jsonObject, function(vv, key){
	                		name = vv.pd_NM;
	                		code = vv.pd_C;
	                		brand = vv.pd_BRA_NM;
	                		price = vv.pd_BUY_AM;
	                		clac1 = vv.clac1_NM;
	                		clac2 = vv.clac2_NM;
	                		clac3 = vv.clac3_NM;
	                		totView = vv.tot_PAG_VIEW_CT;
	                		totSess = vv.tot_SESS_HR_V;
	                		totSale = vv.tot_PD_BUY_AM;
	                		totCount = vv.pd_BUY_CT;
	                	})
	                	var sessNO = Math.ceil(totSess/3600);
	                	var priceL = price.toLocaleString();
	                	var viewL = totView.toLocaleString();
	                	var sessL = sessNO.toLocaleString();
	                	var saleL = totSale.toLocaleString();
	                	var countL = totCount.toLocaleString();
	                	$('#pd_NM').html(name);
	                	$('#pd_Code').html("상품코드 : " + code);
	                	$('#pd_Brand').html("브랜드 명 : " + brand);
	                	$('#pd_Sale').html("개당 가격 : " + priceL);
	                	$('#pd_clac1').html("대분류 : " + clac1);
	                	$('#pd_clac2').html("중분류 : " + clac2);
	                	$('#pd_clac3').html("소분류 : " + clac3);
	                	$('#pd_View').html(viewL + " 건");
	                	$('#pd_Sess').html(sessL + " 시간");
	                	$('#pd_TotSale').html(saleL + " 원");
	                	$('#pd_Count').html(countL + " 개");
					  }
	                });

	                
	                </script>
	                <div class="row">
	                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
	                        <div class="card influencer-profile-data">
	                            <div class="card-body">
	                                <div class="row">
	                                    <div class="col-xl-2 col-lg-4 col-md-4 col-sm-4 col-12">
	                                        <div class="text-center">
	                                            <img src="https://f1.pngfuel.com/png/983/986/405/birthday-gift-box-birthday-icon-box-icon-gift-icon-present-icon-computer-icons-birthday-symbol-png-clip-art.png" alt="User Avatar" class="rounded-circle user-avatar-xxl">
	                                            </div>
	                                        </div>
	                                        <div class="col-xl-10 col-lg-8 col-md-8 col-sm-8 col-12">
	                                            <div class="user-avatar-info">
	                                                <div class="m-b-20">
	                                                    <div class="user-avatar-name">
	                                                        <h2 id="pd_NM" class="mb-1"></h2>
	                                                    </div>
	                                                    <div class="rating-star  d-inline-block">
	                                                        <p class="d-inline-block text-dark"> </p>
	                                                    </div>
	                                                </div>
	                                                <!--  <div class="float-right"><a href="#" class="user-avatar-email text-secondary">www.henrybarbara.com</a></div> -->
	                                                <div class="user-avatar-address">
	                                                    <p class="border-bottom pb-3">
	                                                        <span id="pd_Code" class="d-xl-inline-block d-block mb-2"></span>
	                                                        <span id="pd_Brand" class="mb-2 ml-xl-4 d-xl-inline-block d-block"></span>
	                                                        <span id="pd_Sale" class=" mb-2 d-xl-inline-block d-block ml-xl-4"> </span>
	                                                    </p>
	                                                    <div class="mt-3">
	                                                        <a id="pd_clac1" href="#" class="badge badge-light mr-1"></a> <a id="pd_clac2" href="#" class="badge badge-light mr-1"></a> <a id="pd_clac3" href="#" class="badge badge-light"></a>
	                                                    </div>
	                                                </div>
	                                            </div>
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                    <!-- ============================================================== -->
	                    <!-- end influencer profile  -->
	                    <!-- ============================================================== -->
	                    <!-- ============================================================== -->
	                    <!-- widgets   -->
	                    <!-- ============================================================== -->
	                    <div class="row">
	                        <!-- ============================================================== -->
	                        <!-- four widgets   -->
	                        <!-- ============================================================== -->
	                        <!-- ============================================================== -->
	                        <!-- total views   -->
	                        <!-- ============================================================== -->
	                        <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
	                            <div class="card">
	                                <div class="card-body">
	                                    <div class="d-inline-block">
	                                        <h5 class="text-muted">Total Page View</h5>
	                                        <h2 id="pd_View" class="mb-0"></h2>
	                                    </div>
	                                    <div class="float-right icon-circle-medium  icon-box-lg  bg-info-light mt-1">
	                                        <i class="fa fa-eye fa-fw fa-sm text-info"></i>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                        <!-- ============================================================== -->
	                        <!-- end total views   -->
	                        <!-- ============================================================== -->
	                        <!-- ============================================================== -->
	                        <!-- total followers   -->
	                        <!-- ============================================================== -->
	                        <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
	                            <div class="card">
	                                <div class="card-body">
	                                    <div class="d-inline-block">
	                                        <h5 class="text-muted">Total Session Time</h5>
	                                        <h2 id="pd_Sess" class="mb-0"></h2>
	                                    </div>
	                                    <div class="float-right icon-circle-medium  icon-box-lg  bg-primary-light mt-1">
	                                        <i class="fa fa-user fa-fw fa-sm text-primary"></i>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                        <!-- ============================================================== -->
	                        <!-- end total followers   -->
	                        <!-- ============================================================== -->
	                        <!-- ============================================================== -->
	                        <!-- partnerships   -->
	                        <!-- ============================================================== -->
	                        <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
	                            <div class="card">
	                                <div class="card-body">
	                                    <div class="d-inline-block">
	                                        <h5 class="text-muted">Total Sales Count</h5>
	                                        <h2 id="pd_Count" class="mb-0"></h2>
	                                    </div>
	                                    <div class="float-right icon-circle-medium  icon-box-lg  bg-secondary-light mt-1">
	                                        <i class="fa fa-handshake fa-fw fa-sm text-secondary"></i>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                        <!-- ============================================================== -->
	                        <!-- end partnerships   -->
	                        <!-- ============================================================== -->
	                        <!-- ============================================================== -->
	                        <!-- total earned   -->
	                        <!-- ============================================================== -->
	                        <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
	                            <div class="card">
	                                <div class="card-body">
	                                    <div class="d-inline-block">
	                                        <h5 class="text-muted">Total Sales</h5>
	                                        <h2 id="pd_TotSale" class="mb-0"></h2>
	                                    </div>
	                                    <div class="float-right icon-circle-medium  icon-box-lg  bg-brand-light mt-1">
	                                        <i class="fa fa-money-bill-alt fa-fw fa-sm text-brand"></i>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                        <!-- ============================================================== -->
	                        <!-- end total earned   -->
	                        <!-- ============================================================== -->
	                    </div>
	                    <!-- ============================================================== -->
	                    <!-- end widgets   -->
	                    <!-- ============================================================== -->
	                    <div class="row">
	                        <!-- ============================================================== -->
	                        <!-- followers by gender   -->
	                        <!-- ============================================================== -->
	                        <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
	                            <div class="card">
	                                <h5 class="card-header">Purchase Sex Ratio</h5>
	                                <div class="card-body" style="text-align:center">
	                                    <div id="gender_donut" style="height: 230px; margin:0 auto"></div>
	                                    <script>
	                	                $.ajax({
	                	               		  url : "/detailViewgender.do",
	                						  method : "get",
	                						  data : "pd_C=${param.pd_C}",
	                						  contentType : 'application/x-www-form-urlencoded; charset=UTF-8',
	                						  dataType : "json",
	                						  success : function(jsonObject){
	                                    		//console.log("pd_c=${param.pd_C}");
	                                    		//console.log(jsonObject);
	                                    		
	                                    		var dataJson={};
	                                    		var keyArray=[];
	                                    		$.map(jsonObject, function(vv,key){
	                                    			dataJson[vv.clnt_GENDER] = vv.pd_BUY_CT;
	                                    			keyArray.push(vv.clnt_GENDER);
	                                    		}); //e.o.success
	                                    	  //console.log(dataJson);
	                                    	  //console.log(keyArray);
	                                    	  printGenderDonutChart(dataJson, keyArray);

	                                    	  } //e.o.success
	                                    }) //e.o.ajax
                                		function printGenderDonutChart(dataJson, keyArray){
	                                  	  var chart = c3.generate({
	                                  		  bindto: "#gender_donut",
	                                  		  data:{
	                                  			  json: [dataJson],
	                                  			  keys: {value: keyArray},
	                                  			  type : 'donut',
	                                  			 colors: {
	     						                        F: "#FFA3A4 ",
	     							                    M: "#A8C4EB"
	     	                                  		  } //e.o.data
	                                  		  }, //e,o.json
                                  			  onmouseover: function (d, i) { console.log("onmouseover", d, i); },
									          onmouseout: function (d, i) { console.log("onmouseout", d, i); },
									        
	                                  		size: {height: 250, width: 280},
	                                  		donut: {
										        title: "Gender Ratio"
										    }
	                                  	  }) // e.o.generate
	                	                }
	                                    </script>
	                                </div>
	                            </div>
	                        </div>
	                        <!-- ============================================================== -->
	                        <!-- end followers by gender  -->
	                        <!-- ============================================================== -->
	                        <!-- ============================================================== -->
	                        <!-- followers by age   -->
	                        <!-- ============================================================== -->
	                        <div class="col-xl-4 col-lg-6 col-md-6 col-sm-12 col-12">
	                            <div class="card">
	                                <h5 class="card-header">Followers by Age</h5>
	                                <div id="Age" class="card-body" style="margin:0 auto">
	                                </div>
	                            </div>
	                        </div>
	                        <script>
	                        $.ajax({
	                        	
	                        	url : "/detailViewAge.do",
      						  	method : "get",
      						  	data : "pd_C=${param.pd_C}",
      						  	contentType : 'application/x-www-form-urlencoded; charset=UTF-8',
      						  	dataType : "json",
      						  	success : function(jsonObject){
      						  		//console.log(jsonObject);
      						  		
									var Teen = "";		
									var Twenties = "";	
									var Thirties = "";	
									var Forties = "";	
									var Fifties = "";	
									var Sixties = "";	
									var Seventies = "";	
									var Eighties = "";	
									
									var ageArray = [];
									var keyArray = [];
									var everyone = [];
									$.map(jsonObject, function(vv, key){
										ageArray.push(vv.teen)
										ageArray.push(vv.twenties)
										ageArray.push(vv.thirties)
										ageArray.push(vv.forties)
										ageArray.push(vv.fifties)
										ageArray.push(vv.sixties)
										ageArray.push(vv.seventies)
										ageArray.push(vv.eighties)
										keyArray.push("10")
										keyArray.push("20")
										keyArray.push("30")
										keyArray.push("40")
										keyArray.push("50")
										keyArray.push("60")
										keyArray.push("70")
										keyArray.push("80")
										everyone.push(ageArray)
										everyone.push(keyArray)
									}) //e.o.map
									//console.log(keyArray);
									//console.log(ageArray);
									printAgeChart(ageArray, keyArray);
      						    } //e.o.success
	                        }) //e.o.ajax
	                        function printAgeChart(ageArray, keyArray){
	                        	var chart = c3.generate({
	                        		bindto: "#Age",
	                        		data: {
	                        			json: {
	                        				x: keyArray,
	                        				사용빈도: ageArray
	                        			},
	                        			x: 'x',
		                        		type: "bar",
		                        		colors: {사용빈도: '#A3E6BD'}
		                    
	                        		}, //e.o.data
	                        		size: {height: 265, width: 500},
	                        		axis: {
	                        			y: { show: true},
	                        			x: { show: true}
	                        		}
	                        	}) //e.o.generate
	                        } //e.o.function
	                        
	                        </script>
	                        <!-- ============================================================== -->
	                        <!-- end followers by age   -->
	                        <!-- ============================================================== -->
	                        <!-- ============================================================== -->
	                        <!-- followers by locations   -->
	                        <!-- ============================================================== -->
	                        <div class="col-xl-5 col-lg-6 col-md-6 col-sm-12 col-12">
	                            <div class="card">
	                                <h5 class="card-header">Top Folllowes by Locations </h5>
	                                <div id="regionChart" class="card-body" style="margin:0 auto"></div>
	                            </div>
	                        </div>
	                                <script>
	                                $.ajax({
	                                	url : "/detailViewRegion.do",
	                                	  	method : "get",
	                                	  	data : "pd_C=${param.pd_C}",
	                                	  	contentType : 'application/x-www-form-urlencoded; charset=UTF-8',
	                                	  	dataType : "json",
	                                	  	success : function(regionObj){
	                                	  		//console.log(jsonObject);
	                                	  		var gListArr = [];
	                                	  		$.map(regionObj, function(vv, key){
	                                	  			var voArr = [];
	                                	  			voArr.push(vv.zon_NM);
	                                	  			voArr.push(vv.pd_BUY_CT);
	                                	  			gListArr.push(voArr);
	                                	  		}) //e.map
	                                	  		console.log(gListArr);
	                                	  		printRegionChart(gListArr);
	                                	  	} //e.success
	                                }); //e.ajax'

	                                function printRegionChart(gListArr){
	                                	var chart = c3.generate({
	                                		bindto: "#regionChart",
	                                		data: {
	                                			columns: gListArr,
	                                			type: 'bar',
	                                			colors: {
	                                				Gyeongsangnamdo: '#FEC3A1',
	                                				Ulsan: '#50D1BB',
	                                				Jejudo: '#F8511A',
	                                				Chungcheongnamdo: '#91936B',
	                                				Daejeon: '#FFCA02',
	                                				Gangwondo: '#92A9D3',
	                                				Jeollanamdo: '#7D2C8B',
	                                				Daegu: '#E12E56',
	                                				Gyeonggido: '#4F87D1',
	                                				Busan: '#EE5886',
	                                				Seoul: '#FFD1E1',
	                                				Gyeongsangbukdo: '#BEA9E1',
	                                				Jeollabukdo: '#214368',
	                                				Incheon: '#A9E1BA',
	                                				Chungcheongbukdo: '#FFB43C',
	                                				Gwangju: '#F9D0E2',
	                                			}
	                                		}, //e.data
	                                		axis: {
	                                			y: {
	                                				tick:{
	                                					values:[0, 3000, 6000, 8000]
	                                				}
	                                			}
	                                		},
	                                		grid: { x: {show: false}, y: { show: false}},
	                                		size: {height: 265, width: 500}
	                                	}); //e.generate
	                                } //e.chart
	                                </script>
	                        <!-- ============================================================== -->
	                        <!-- end followers by locations  -->
	                        <!-- ============================================================== -->
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
	                    <!-- slimscroll js -->
	                    <script src="assets/vendor/slimscroll/jquery.slimscroll.js"></script>
	                    <!-- main js -->
	                    <script src="assets/libs/js/main-js.js"></script>
	                    <!-- chart js -->
	                    <script src="assets/vendor/charts/charts-bundle/Chart.bundle.js"></script>
	                    <script src="assets/vendor/charts/charts-bundle/chartjs.js"></script>
	                    <!-- dashboard js -->
	                    <script src="assets/libs/js/dashboard-influencer.js"></script>
</body>
 
</html>