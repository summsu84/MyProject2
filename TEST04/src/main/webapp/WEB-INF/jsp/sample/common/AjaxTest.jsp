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
   
   <!-- 
   <form name="ReadingInfoSelectForm" id="ReadingInfoSelectForm" action="" method="post">
	<table>
		<tr>
	  		<td>
				사용자ID : <input type="text" size="50" name="UserID" value="hema30" /><br/>
				도서ID : <input type="text" size="50" name="BookID" value="uuid:35aeb750-ee9f-4813-be49-c43a0df68475" /><br/>
	  		</td>
	 	</tr>
	 	<tr>
	  		<td align="right">
	   			<input type="button" id="ReadingInfoSelectBtn" name="ReadingInfoSelectBtn" value="전송"/>
	  		</td>
	 	</tr>
	</table>
	</form>
	
	-->
	<canvas id = "canvas" width="700" height="400" style="border: 3px solid black ">
	
	</canvas>
	<h1> Start : </h1>
	<h1> Start : </h1>
	<%-- <form class="form-horizontal" name="ReadingInfoSelectForm" id="ReadingInfoSelectForm" action="" method="post" >
		<div class="form-group">
			<div class="row">
				<div class="col-sm-4">
					<div class="col-sm-3">
						<label for="code" class="control-label">사용자id</label>
					</div>
					<div class="col-sm-8">
						<input type="text" class="form-control input-sm" size="50" name="UserID" value="hema30" />
					</div>
				</div>
				<div class="col-sm-4">
					<div class="col-sm-3">
						<label for="cdValue" class="control-label">코드명</label>
					</div>
					<div class="col-sm-8">
						<input type="text" class="form-control input-sm" size="50" name="BookID" value="uuid:35aeb750-ee9f-4813-be49-c43a0df68475" />
					</div>
				</div>
				<div class="col-sm-4">
					<div class="col-sm-3">
						<label for="remark" class="control-label">생성날짜</label>
					</div>
					<div class="col-sm-8">
						<input type="button" id="ReadingInfoSelectBtn" name="ReadingInfoSelectBtn" value="전송"/>
					</div>
				</div>
			</div>
		</div>
	</form> --%>
	<form name="formname1" id="formname1" style="margin:0px;">
<div>
    <label for="fname">이름</label>
        :
    <input type="text" name="fname" id="fname" value="C.m.A" />
</div>
 <div>
    <label for="femail">이메일</label>
    :
    <input type="text" name="femail" id="femail" value="" />
</div>
<div>
    <label for="sex">성별</label>
    :
    <input type="radio" name="sex" value="0" />여자
    <input type="radio" name="sex" value="1" checked="checked" />남자
 </div>
<div>
    <label for="job">직업</label>
    :
    <select name="job" id="job">
    <option value="직업1">직업1</option>
    <option value="직업2">직업2</option>
    <option value="직업3">직업3</option>
    </select>
 </div>
<div>
       <input type="button" value="Ajax 폼 전송" />
 </div>
</form>
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
		
			/* $("#ReadingInfoSelectBtn").click(function()
			{
				var formData = $("#ReadingInfoSelectForm").serialize();
				
				alert("param : " + formData);
	 
				$.ajax({
		 					type : "POST",
		 					url : "[요청URL]",
		 					cache : false,
		 					data : formData,
		 					success : onSuccess,
		 					error : onError
				});
			});
			
			var canvas = document.getElementById('canvas');
			var context = canvas.getContext('2d');
			
			$(canvas).on({
				mousedown: function(event){
				
					var position = $(this).offset();
					
					var x =event.pageX - position.left;
					var y = event.pageY - position.top;
					
					context.beginPath();
					context.moveTo(x, y);
				},
				mouseup: function(event){
					var position = $(this).offset();
					
					var x =event.pageX - position.left;
					var y = event.pageY - position.top;
					
					context.lineTo(x, y);
					context.stroke();

				}
			}) */
			
			//이벤트 강제 실행
			
			
			
			
			$("#formname1").click(function formSubmit() {
			    var params = jQuery("#formname1").serialize(); // serialize() : 입력된 모든Element(을)를 문자열의 데이터에 serialize 한다.
			    
			    var params2 = $('#formname1').serializeArray().reduce(function(a, x) { a[x.name] = x.value; return a; }, {});
			    
			    var url = "/app/nsmanage/DailyNSManageInsert.do"
			    
			    alert("Param : " + params + ", params2 : " + params2);
			    jQuery.ajax({
			        url : url,
			        type: 'POST',
			        data:params2,
		            dataType:'json',
			        success: function (result) {
			            if (result){
			                // 데이타 성공일때 이벤트 작성
			            }
			        }
			    });
			});
			
/* 			function test (inputs){
				var obj = $.map(inputs, function(n, i)
				{
				    return { Key: n.name, Value: $(n).val() };
				});
			} */
		});
			
	
	</script>
    
</body>
</html>
