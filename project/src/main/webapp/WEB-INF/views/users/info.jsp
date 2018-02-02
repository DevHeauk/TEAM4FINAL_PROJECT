<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->

<!-- Head BEGIN -->
<head>
  <meta charset="utf-8">
  <title>Create new account | Metronic Frontend</title>

  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

  <%@ include file="../inc/header_script.jsp" %>
  <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>	  
</head>
<!-- Head END -->

<!-- Body BEGIN -->
<body class="ecommerce">
    <%@ include file="../inc/header.jsp" %>

    <div class="main">
      <div class="container"> 
        <ul class="breadcrumb">
            <li><a href="index.html">Home</a></li>
            <li><a href="javascript:;">Pages</a></li>
            <li class="active">Create new account</li>
        </ul>
        <!-- BEGIN SIDEBAR & CONTENT -->

          <!-- BEGIN CONTENT -->
          <div class="col-md-12 col-sm-12" style="padding: 0; margin-bottom: 80px;">
            <h1>Create an account</h1>
            <div class="content-form-page">
              <div class="row" style="padding: 50px 0;">
				<table class="table">
					<thead>
						<tr>
							<th height="80">항목</th>
							<th height="80">정보</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th>아이디</th>
							<td>${dto.id }</td>
						</tr>
						<tr>
							<th>이메일</th>
							<td>${dto.email }</td>
						</tr>
						<tr>
							<th>소속 팀</th>
							<td>${dto.team }</td>
						</tr>	
						<tr>
							<th>직급</th>
							<td>${dto.responsibility }</td>
						</tr>					
						<tr>
							<th>주소</th>
							<td>${dto.addr01 } - ${dto.addr02 } - ${dto.addr03 }</td>
						</tr>
						<tr>
							<th>포지션</th>
							<td>${dto.b_position }</td>
						</tr>
						<tr>
							<th>구력</th>
							<td>${dto.career }</td>
						</tr>	
						<tr>
							<th>돈</th>
							<td><span id="result">${dto.money }</span> <button class="btn btn-primary" id="cash_on">충전</button></td>
						</tr>	
						<tr>
							<th>포인트</th>
							<td>${dto.point }</td>
						</tr>
						<tr>
							<th>가입일</th>
							<td>${dto.regdate }</td>
						</tr>																				
					</tbody>
				</table>
              </div>
            </div>
          </div>
          <!-- END CONTENT -->
        </div>
        <!-- END SIDEBAR & CONTENT -->
      </div>
    </div>
    <%@ include file="../inc/footer.jsp" %>

    <%@ include file="../inc/footer_script.jsp" %>
	<script>
		$("#inputMoney").click(function(){
			var inputId=$("#money").val();
			$.ajax({
				method:"POST",
				url:"inputMoney.do",
				data:{"inputId":inputId},
				success:function(data){
					$("#result").text(data.price.money);
				}
			});
			
		});	
		function userConfirm(){
			var isDelete=confirm("탈퇴 하시겠습니까?");
			if(isDelete){
				location.href="delete.do";
			}
		}
	</script>    
    <script type="text/javascript">
        jQuery(document).ready(function() {
            Layout.init();
            Layout.initUniform();
            Layout.initTwitter();
            
            Layout.initFixHeaderWithPreHeader();
            Layout.initNavScrolling();               
        });
    </script>
    <!-- END PAGE LEVEL JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>