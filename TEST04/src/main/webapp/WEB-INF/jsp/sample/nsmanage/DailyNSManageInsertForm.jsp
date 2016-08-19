<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>HMS - Hanjin Monitoring System</title>

    <!-- Bootstrap Core CSS -->
    <link href="${pageContext.request.contextPath}/css/bootstrap/bootstrap.min.css" rel="stylesheet">
    <!-- MetisMenu CSS -->
    <link href="${pageContext.request.contextPath}/css/metismenu/metismenu.min.css" rel="stylesheet">
    <!-- Bootstrap DatePicker CSS -->
    <link href="${pageContext.request.contextPath}/css/bootstrap/bootstrap-datetimepicker.min.css" rel="stylesheet">
	<!-- DataTables CSS -->
    <!-- <link href="./css/datatables/datatables.bootstrap.min.css" rel="stylesheet"> -->
	<!-- DataTables Responsive CSS -->
    <!-- <link href="./css/datatables/datatables.responsive.css" rel="stylesheet"> -->
	<!-- jQuery DataTables CSS -->
    <!-- <link href="./css/datatables/jquery.datatables.min.css" rel="stylesheet"> -->
    <!-- Timeline CSS -->
    <!-- <link href="./css/timeline.css" rel="stylesheet"> -->
    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/css/admin.css" rel="stylesheet">
    
        <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/css/signin.css" rel="stylesheet">
    <!-- Morris Charts CSS -->
    <!-- <link href="./css/morris/morris.css" rel="stylesheet"> -->
    <!-- Custom Fonts -->
    <link href="${pageContext.request.contextPath}/css/font-awesome/font-awesome.min.css" rel="stylesheet" type="text/css">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]--> 
	<style type="text/css">
		table.dataTable.compact thead th,
		table.dataTable.compact thead td { padding: 4px 17px 4px 4px; text-align: center; }
		table.dataTable.compact tfoot th,
		table.dataTable.compact tfoot td { padding: 4px; }
		table.dataTable.compact tbody th,
		table.dataTable.compact tbody td { padding: 4px; }
		
		.reverse {
			background: black;
			color: white;
		}
	</style>
</head>

<body>
    <div id="wrapper">
        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/app/index.do"><strong>HMS</strong></a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#"><i class="fa fa-user fa-fw"></i> Create Account</a></li>
                        <li class="divider"></li>
                        <li><a href="/app/user/registerUser.do"><i class="fa fa-sign-out fa-fw"></i> Sign in</a></li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li class="sidebar-search">
                            <div class="input-group custom-search-form">
                                <input type="text" class="form-control" placeholder="Search...">
                                <span class="input-group-btn">
									<button class="btn btn-default" type="button">
										<i class="fa fa-search"></i>
									</button>
								</span>
                            </div>
                            <!-- /input-group -->
                        </li>
						<!-- Set Up -->
						<li>
                            <a href="#"><i class="fa fa-wrench fa-fw"></i> Setup<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
								<li>
                                    <a href="codes.html">공통코드</a>
                                </li>
                                <li>
                                    <a href="panels-wells.html">구조물정보관리</a>
                                </li>
                                <li>
                                    <a href="buttons.html">센서정보관리</a>
                                </li>
                                <li>
                                    <a href="notifications.html">센서별유효구간설정</a>
                                </li>
                                <li>
                                    <a href="typography.html">프로파일정보관리</a>
                                </li>
                                <li>
                                    <a href="icons.html">GNSS일측정데이터</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
						<!-- Sensor -->
						<li>
                            <a href="#"><i class="fa fa-edit fa-fw"></i> Sensor<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="panels-wells.html">일측정데이터</a>
                                </li>
                                <li>
                                    <a href="buttons.html">일유효데이터</a>
                                </li>
                                <li>
                                    <a href="notifications.html">일평균데이터</a>
                                </li>
                                <li>
                                    <a href="typography.html">주간데이터</a>
                                </li>
                                <li>
                                    <a href="icons.html">월간데이터</a>
                                </li>
								<li>
                                    <a href="icons.html">전체일평균데이터</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
						<!-- Profile -->
						<li>
                            <a href="#"><i class="fa fa-dashboard fa-fw"></i> Profile<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="panels-wells.html">일평균데이터</a>
                                </li>
                                <li>
                                    <a href="buttons.html">월평균데이터</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
						<!-- X Chart -->
						<li>
                            <a href="xchart.html"><i class="fa fa-bar-chart-o fa-fw"></i> X-Chart</a>
                        </li>
						<!-- Y Chart -->
						<li>
                            <a href="ychart.html"><i class="fa fa-bar-chart-o fa-fw"></i> Y-Chart</a>
                        </li>
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>

		<div id="page-wrapper">
		            <div class="row">
		                <div class="col-lg-12">
		                    <h1 class="page-header">일일영양소 등록</h1>
		                </div>
		                <!-- /.col-lg-12 -->
		            </div>
		            <!-- /.row -->
		            <div class="row">
		                <div class="col-lg-12">	<!--  폭 크기 설정  -->
		                    <div class="panel panel-info">
		                        <div class="panel-heading">
									<div class="row">
										<div class="col-sm-12 text-right">
											<h4> 오늘 섭취하는 영양소를 입력하세요....</h4>
										</div>
									</div>
		                        </div>
		                        <!-- /.panel-heading -->
		                        <div class="panel-body">
		                            <!-- /.table-responsive -->
									<!-- Function Buttons -->
									<div class="panel panel-default">
										<div class="panel-heading">
											상세 정보
										</div>
										<div class="panel-body">
											<form class="form-horizontal" role="form" id="form_daily_ns">
												<div class="form-group">
													<div class="row">
													<!--  여기부터 입력창 추가하기 ..  -->
														<div class="col-sm-6">
															<div class="col-sm-6">
																<label for="reg_date" class="control-label">등록일자</label>
															</div>
															<div class="col-sm-6 input-group date" id="applyDatePicker">
																<input type="text" class="form-control input-sm" id="reg_date" name="reg_date" placeholder="등록일자">
																<span class="input-group-addon">
																	<span class="glyphicon glyphicon-calendar"></span>
																</span>
															</div>
														</div>
													</div>
													<hr>
													<div class="row">	
														<!-- 영양소 선택하기 나중에 디비로 가져오기 -->
														<div class="col-sm-6">
															<div class="col-sm-6">
											  					<label >영양소 선택하기</label>
											  				</div>
											  				<div class="col-sm-6">
	  															<button type="button" id=add_row class="btn btn-default dropdown-toggle"><i class="glyphicon glyphicon-plus"></i></button>
	  															<button type="button" id="delete_row" class="btn btn-default dropdown-toggle"><i class="glyphicon glyphicon-remove"></i></button>
	  														</div>
	  													</div>
	  												</div>
	  												
	  												<div class="row">
	  												 <div class="panel-body">
						                            	<div class="dataTable_wrapper">
						                                	<table class="table compact table-striped table-bordered table-hover" id="tbl_ns_information">
						                                    	<thead>
						                                        	<tr>
							                                            <th>#</th>
							                                            <th>영양소</th>
							                                            <th>수량</th>
							                                            <th>함량</th>

							                                        </tr>
							                                    </thead>
							                                    <tbody>
							                                    </tbody>
							                                </table>
							                            </div>
							                            </div>
							                        </div>
	  												<hr>
	  												<!--  Checkbox -->
	  												<div class="row">
	  													<div class="col-sm-6">
															<div class="col-sm-6">
											  					<label><input type="checkbox" id="ns_notify" name="ns_notify" checked> 알림을 설정합니다.</label>
											  				</div>
											  			</div>
											  		</div>
										
											  		<div class="row">
											  			<div class="col-sm-6">
												  			<div class='dropdown'>
																<button id="ns_notify_desc" class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Delay to..
																<span class="caret"></span></button>
												 				<ul class="dropdown-menu">
												    				<li><a href="#">30 분 뒤..</a></li>
												    				<li><a href="#">1 시간 뒤..</a></li>
												    				<li><a href="#">4 시간 뒤..</a></li>
												  				</ul>
												  			</div>
												  		</div>
													</div>	  	
												</div>
											</form>
										</div>
									</div>
									<div class="panel panel-default">
										<div class="panel-body">
											<div class="row text-right">
												<a href="#" class="btn btn-default btn-sm" id="insert_daily_ns">등록</a>
												<a href="#" class="btn btn-default btn-sm">수정</a>
												<a href="#" class="btn btn-default btn-sm">삭제</a>
												<a href="#" class="btn btn-default btn-sm">취소</a>
											</div>
										</div>
									</div>
		                        </div>
		                        <!-- /.panel-body -->
		                    </div>
		                    <!-- /.panel -->
		                </div>
		                <!-- /.col-lg-12 -->
		            </div>
		        </div>
		        <!-- /#page-wrapper -->
		    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="${pageContext.request.contextPath}/js/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/moment/moment.min.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="${pageContext.request.contextPath}/js/bootstrap/bootstrap.min.js"></script>
    <!--  DatePicker -->
    <script src="${pageContext.request.contextPath}/js/bootstrap/bootstrap-datetimepicker.min.js"></script>
    <!-- Metis Menu Plugin JavaScript -->
    <script src="${pageContext.request.contextPath}/js/metismenu/metismenu.min.js"></script>
    <!-- Morris Charts JavaScript -->
    <!-- <script src="./js/raphael/raphael-min.js"></script> -->
    <!-- <script src="./js/morris/morris.min.js"></script> -->
    <!-- <script src="./js/morris-data.js"></script> -->
    <!-- Custom Theme JavaScript -->
	<!-- DataTables JavaScript
    <script src="./js/datatables/jquery.datatables.min.js"></script>
    <script src="./js/datatables/datatables.bootstrap.min.js"></script>
    <script src="./js/datatables/datatables.responsive.js"></script>
	-->
	<!-- Custom Theme JavaScript -->
    <script src="${pageContext.request.contextPath}/js/admin.js"></script>
	
	<!-- Page-Level Demo Scripts - Tables - Use for reference -->
	
	<!--  Script -->
	
	<script>
		$(document).ready(function(){
		
			var d = new Date();
			var year = d.getFullYear();
			var month = d.getMonth() + 1;
			var day = d.getDate();
			var fulldate = year+"-"+month+"-"+day;
			//이벤트를 연결합니다..
			$("#reg_date").val(fulldate);

			//그리드 추가 하기 
		    $("#add_row").click(function(){
		    	 
		    	 //tr 개수 구하기 한개는 헤더 tr 
		    	 var row = $("#tbl_ns_information tr").length ;
		    	 
		    	 $("#tbl_ns_information").append('<tr><td>' + row + '</td><td><select style="width:100%;" name="ns_code' + row + '" id="ns_code' + row + '"> </select>"'
		    	 + '</td><td><input type="number" min="0" max="10" required name="ns_quantity_'+row+'" id="ns_quantity_' + row + '"style="width:100%;"/></td><td>'
		    	 + '<input type="text" name="ns_content_'+row+'"  id="ns_content_'+row+'" style="width:100%;" /></td></tr>');
		    	 
		    	 getComboList(row);
		     });
		    	
			$("#delete_row").click(function(){
				
			});
		 
		     $(function () {
				$('#applyDatePicker').datetimepicker({
					format: 'YYYY-MM-DD'
				});
			});
		    
		    
		});
		
		
		
		
		
		//콤보 리스트를 가져온다.
		function getComboList(row)
		{
			var v_selector = "ns_code" + row;
			var param = {};
			$.ajax({
				url : "/app/common/NSCodeCombo.do",
				type : "POST",
				data : param,
				success : function(info) {
					var data = info;
					data.forEach(function (v, i){
						//alert("v.code_name : " + v.CODE_NAME + ", i : " + i);
						$('#'+v_selector).append("<option value='" + v.CODE + "'>" + v.CODE_NAME +"</option>");
					});
					
										
				},
				error : function(info) {
					alert("error!!");
				}
			});
		}
		
		//등록하기 
		$("#insert_daily_ns").click(function(){
		  // 	var param = $('#form_daily_ns').serialize();
			var url = "/app/nsmanage/DailyNSManageInsert.do";
			var param = {
			    	regDate: $('#reg_date').val(),
			    	nsCodeName: $('#ns_code1 option:selected').val(),
			    	nsQuantity: $('#ns_quantity_1').val(),
			    	nsContent: $('#ns_content_1').val(),
			    	nsNotify:$('#ns_notify').val(),
			    	nsNotifyDesc:$('#ns_notify_desc').val()
			}
			
			var result = confirm("저장하시겠습니까?")
			{
				if (result) {
				
					$.ajax({
						url : url,
						type : "POST",
						data : param,
						success : function(info) {
							//clickBtn_Search();
							alert("저장완료");
						},
						error : function(info) {
							alert("저장실패");
						}
					});
				}
			} 
		});
	
	
	</script>
    
</body>
</html>
