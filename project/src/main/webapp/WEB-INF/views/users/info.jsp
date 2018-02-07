<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
        <style>
        	table{font-size: 15px; border-top: 2px solid #acacac; border-bottom: 1px solid #dddddd;}
        	table .tg{padding: 10px 0 10px 20px !important;}
        	table th.tg{border-right: 1px solid #dddddd;}
        	table td.tg{padding-left: 30px !important;}
        </style>
          <!-- BEGIN CONTENT -->
          <div class="col-md-12 col-sm-12" style="padding: 0; margin-bottom: 80px;">
            <h1>Create an account</h1>
            <div class="content-form-page">
              <div class="row" style="padding: 60px 0;">
              	<div class="col-md-10 col-sm-10 col-md-offset-1 ">
					<table class="table">
						<thead>
							<tr>
								<th class="tg">항목</th>
								<th class="tg" style="border-right: none;">정보</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th class="tg">아이디</th>
								<td class="tg">${dto.id }</td>
							</tr>
							<tr>
								<th class="tg">이메일</th>
								<td class="tg">${dto.email }</td>
							</tr>
							<tr>
								<th class="tg">소속 팀</th>
								<td class="tg">${dto.team }</td>
							</tr>	
							<tr>
								<th class="tg">직급</th>
								<td class="tg">${dto.responsibility }</td>
							</tr>					
							<tr>
								<th class="tg">주소</th>
								<td class="tg">${dto.addr01 } - ${dto.addr02 } ${dto.addr03 }</td>
							</tr>
							<tr>
								<th class="tg">포지션</th>
								<td class="tg">${dto.b_position }</td>
							</tr>
							<tr>
								<th class="tg">구력</th>
								<td class="tg">${dto.career } 년</td>
							</tr>	
							<tr>
								<th class="tg">돈</th>
								<td class="tg"><span id="result">${dto.money } 원</span><a href="#cash-pop-up" class="btn btn-primary fancybox-fast-view" id="cash_on" style="margin-left: 10px; background: #428bca; border-radius: 5px !important; color: #ffffff;">충전</a></td>
							</tr>	
							<tr>
								<th class="tg">포인트</th>
								<td class="tg">${dto.point }</td>
							</tr>
							<tr>
								<th class="tg">가입일</th>
								<td class="tg">${dto.regdate }</td>
							</tr>																				
						</tbody>
					</table>
                    <div class="row">
                      <div class="col-lg-8 col-md-offset-5 col-xs-offset-2 padding-left-0 padding-top-20">                        
						<a href="update_form.do" class="btn btn-primary" style="color: #ffffff;">회원정보 수정</a>
						<a href="javascript:userConfirm()" class="btn btn-default">회원 탈퇴</a>	
                      </div>
                    </div>					
				
				</div>
              </div>
            </div>
          </div>
          <!-- END CONTENT -->
        </div>
        <!-- END SIDEBAR & CONTENT -->
      </div>
	<style>
		.fancybox-inner{height: 110px !important;}	
	</style>
    <div id="cash-pop-up" style="display: none; max-width: 700px;" ng-app>
		<h3>충전금액 입력</h3>
		<form action="" name="cashForm" novalidate>
	        <div class="input-group">
	          <input id="money" type="number" name="money" class="form-control" placeholder="금액을 입력하세요." ng-maxlength="9" ng-model="money" value=""/>          
	          <span class="input-group-btn">
	            <button type="submit" ng-disabled="cashForm.$invalid" class="btn btn-success" id="inputMoney">확인</button>
	          </span>          
	        </div>
			<p ng-show="cashForm.money.$error.maxlength" class="help-block" style="color: #f10025;">최대 충전금액을 초과하였습니다.</p>   
		</form> 
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
			
			var inputStr = $("#result").text();
			var inputNum = Number(inputStr);	
			
			var moneyStr = $('#money').val();
			var moneyNum = Number(moneyStr);	
			
			var cashNum = moneyNum + inputNum; 	
			
			if(cashNum > 2100000000){
				alert("최대 소지 금액(2100000000 원) 초과로 충전에 실패하였습니다.");				
			}else{
				alert(moneyNum + "원 이 충전 되었습니다.");
				$(".fancybox-overlay").fadeOut();				
			}
			
			$("#money").val("");			
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
            Layout.initOWL();
            Layout.initTouchspin();            
            
            Layout.initFixHeaderWithPreHeader();
            Layout.initNavScrolling();               
        });
    </script>
    <!-- END PAGE LEVEL JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>