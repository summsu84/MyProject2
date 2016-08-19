<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%

%>
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
                            <a href="#"><i class="fa fa-wrench fa-fw"></i> 관리<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
								<li>
                                    <a href="/app/common/NSCodeSearch.do">영양제 코드관리</a>
                                </li>
                                <li>
                                    <a href="panels-wells.html">나의 정보 관리</a>
                                </li>
                                <li>
                                    <a href="/app/common/NSTest.do">테스트</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
						<!-- Sensor -->
						<li>
                            <a href="#"><i class="fa fa-edit fa-fw"></i> 나의 영양소 관리 <span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="/app/nsmanage/DailyNSManageSearch.do">일별 영양소 관리</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
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
		                    <h1 class="page-header">공통코드</h1>
		                </div>
		                <!-- /.col-lg-12 -->
		            </div>
		            <!-- /.row -->
		            <div class="row">
		                <div class="col-lg-12">
		                    <div class="panel panel-info">
		                        <div class="panel-heading">
									<div class="row">
										<div class="col-sm-12 text-right">
											<a href="#" class="btn btn-default btn-sm">Search</a>
										</div>
									</div>
		                        </div>
		                        <!-- /.panel-heading -->
		                        <div class="panel-body">
		                            <div class="dataTable_wrapper">
		                                <table class="table compact table-striped table-bordered table-hover" id="codelist">
		                                    <thead>
		                                        <tr>
		                                            <th>#</th>
		                                            <th>코드</th>
		                                            <th>코드명</th>
		                                            <th>생성날짜</th>
		                                        </tr>
		                                    </thead>
		                                    <tbody>
		                                    	<c:choose>
		                                    		<c:when test="${fn:length(list) > 0 }">
		                                    			<c:forEach items="${list }" var="row">
					                                        <tr>
					                                            <td>${row.IDX }</td>
					                                            <td>${row.CODE }</td>
					                                            <td>${row.CODE_NAME }</td>
					                                            <td>${row.CREATE_DATE }</td>
					                                        </tr>
				                                        </c:forEach>
			                                        </c:when>
			                                        <c:otherwise>
			                                        	<tr>
			                                        		<td colspan="4">조회된 결과가 없습니다. </td>
			                                        	</tr>
			                                        </c:otherwise>
		                                        </c:choose>
		                                    </tbody>
		                                </table>
		                            </div>
		                            <!-- /.table-responsive -->
									<div class="panel panel-default">
										<div class="panel-body">
											<div class="row text-right">
												<a href="#" class="btn btn-default btn-sm" id="insert_nscode">등록</a>
												<a href="#" class="btn btn-default btn-sm">수정</a>
												<a href="#" class="btn btn-default btn-sm">삭제</a>
												<a href="#" class="btn btn-default btn-sm">취소</a>
											</div>
										</div>
									</div>
									<!-- Function Buttons -->
									<div class="panel panel-default">
										<div class="panel-heading">
											Detail Information
										</div>
										<div class="panel-body">
											<form class="form-horizontal" role="form" name="NSCODE_FORM" id="NSCODE_FORM" action="" >
												<div class="form-group">
													<div class="row">
														<div class="col-sm-4">
															<div class="col-sm-3">
																<label for="code" class="control-label">코드</label>
															</div>
															<div class="col-sm-8">
																<input type="text" class="form-control input-sm" name="code" id="code" placeholder="CODE를 입력하세요">
															</div>
														</div>
														<div class="col-sm-4">
															<div class="col-sm-3">
																<label for="cdValue" class="control-label">코드명</label>
															</div>
															<div class="col-sm-8">
																<input type="text" class="form-control input-sm" name="code_name" id="cdValue" placeholder="CODE VALUE를 입력하세요">
															</div>
														</div>
														<div class="col-sm-4">
															<div class="col-sm-3">
																<label for="remark" class="control-label">생성날짜</label>
															</div>
															<div class="col-sm-8">
																<input type="text" class="form-control input-sm" name="create_date" id="remark" placeholder="REMARK를 입력하세요">
															</div>
														</div>
													</div>
												</div>
											</form>
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
		        <!-- test -->
<!-- 		        <div>
		        	<h1>Header1</h1>
		        	<p>Paragraph1</p>
		        </div>
     		    <div>
		        	<h1>Header2</h1>
		        	<p>Paragraph2</p>
		        </div>
		        <div>
		        	<h1>Header3</h1>
		        	<p>Paragraph3</p>
		        </div> -->
		    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="${pageContext.request.contextPath}/js/jquery/jquery.min.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="${pageContext.request.contextPath}/js/bootstrap/bootstrap.min.js"></script>
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
		
			//이벤트를 연결합니다..
			$('h2').on('click', function(){
				
				$(this).html(function (index, html){
					return html + '+';
				});
				
			});
			
			$('h2').on({
				mouseenter: function() { $(this).addClass('reverse');},
				mouseleave: function() { $(this).removeClass('reverse')}
				
			});
			/* 
			$('#delete').click(function(){
//		 		alert($('#code').val());
				if ($('#data_area').valid()) {
					$.ajax({
		    			url: 'bsmCd/'+ $('#code').val(),
		    			type: 'DELETE',
		    			success: function(data) {
//		     				alert(data);
		    				dataTable.ajax.reload();
//		     				alert("reload: "+ data);
		    			},
		    			error:function(request,status,error){
		    		        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		    		    }
		    	 	});	
				} else {
			        alert('form is not valid');
			    }	
			});  
 */
			$("#insert_nscode").click(function(){
				
		    	//var param = $("form[name=NSCODE_FORM]").serialize();
		    	var param = $('#NSCODE_FORM').serialize();
				var url = "/app/common/NSCodeInsert.do";
				alert("paramData : " + param);
								
				var result = confirm("저장하시겠습니까?")
				{
					if (result) {
					
						$.ajax({
							url : url,
	
							type : "POST",
							data : param,
							success : function(info) {
	
								/* dhx.alert(info.firstChild.textContent);
								dhx.progress(false);
								clickBtn_Search(); */
							},
							error : function(info) {
								/* dhx.alert(info.firstChild.textContent, -1);
								dhx.progress(false); */
							}
						});
					}
				}
			});
 
/*  			$('div').click(function(){
 				/* var header = $('h1', this).text();
 				var para = $('p', this).text(); 
 				
 				var header = $('h1').text();
 				var para = $('p').text();
 				
 				alert("header : " + header + ", para : " + para);
 			}) */
		});
			
	
	</script>
    
</body>
</html>
