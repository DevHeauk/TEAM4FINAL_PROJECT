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
                <div class="col-md-7 col-sm-7" ng-app>
                  <form action="update.do" method="post" id="updateForm" class="form-horizontal" role="form">
					<input type="hidden" name="id" value="${dto.id }"/>                  
                    <fieldset>
                      <div class="form-group">
                        <label for="id" class="col-lg-4 control-label">ID</label>
                        <div class="col-lg-8">
                          <input type="text" class="form-control" id="id" name="id" value="${dto.id }" disabled="disabled">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="pwd" class="col-lg-4 control-label">Password <span class="require">*</span></label>
                        <div class="col-lg-8" ng-class="{'has-success': myForm.pwd.$valid, 'has-error': myForm.pwd.$invalid && myForm.pwd.$dirty">
                          <input type="password" class="form-control" id="pwd" name="pwd" required="required" ng-model="pwd" ng-minlength="6" required="required"><br />
                          <span ng-show="myForm.pwd.$error.minlength && myForm.pwd.$dirty" class="help-block">최소 6글자 이상으로 입력하세요.</span>
                          <input type="password" class="form-control" id="pwd2" name="pwd" required="required" ng-model="pwd2" ng-minlength="6" required="required">
                          <span ng-show="myForm.pwd2.$error.minlength && myForm.pwd2.$dirty" class="help-block">최소 6글자 이상으로 입력하세요.</span>
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="email" class="col-lg-4 control-label">Email</label>
                        <div class="col-lg-8">
                          <input type="email" class="form-control" id="email" name="email" value="${dto.email }">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="addr01" class="col-lg-4 control-label">Address <span class="require">*</span></label>
                        <div class="col-lg-8">
					    <input type="text" name="addr01" id="addr01" class="form-control" placeholder="우편번호"  value="${dto.addr01 }" required="required"><br />
						<input type="text" name="addr02" id="addr02" class="form-control" placeholder="주소"  value="${dto.addr02 }" required="required"><br />
						<input type="text" name="addr03" id="addr03" class="form-control" placeholder="상세주소"  value="${dto.addr03 }" required="required"><br />
						<input type="button" onclick="addrClick()" class="btn btn-primary col-md-12 col-sm-12" value="우편번호 찾기">						
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="b_position" class="col-lg-4 control-label" >Position <span class="require">*</span></label>
                        <div class="col-lg-8">
                          <input type="text" class="form-control" id="b_position" name="b_position" value="${dto.b_position }" required="required">
                        </div>
                      </div>    
                      <div class="form-group">
                        <label for="career" class="col-lg-4 control-label">career <span class="require">*</span></label>
                        <div class="col-lg-8">
                          <input type="text" class="form-control" id="career" name="career" value="${dto.career }" required="required">
                        </div>
                      </div>                                                                                        
                    </fieldset>
                    <div class="row">
                      <div class="col-lg-8 col-md-offset-6 col-xs-offset-3 padding-left-0 padding-top-20">                        
                        <button type="submit" class="btn btn-primary">정보수정</button>
                        <button type="button" class="btn btn-default">돌아가기</button>
                      </div>
                    </div>
                  </form>
                </div>
                <div class="col-md-4 col-sm-4 pull-right">
                  <div class="form-info">
                    <h2><em>Important</em> Information</h2>
                    <p>Lorem ipsum dolor ut sit ame dolore  adipiscing elit, sed sit nonumy nibh sed euismod ut laoreet dolore magna aliquarm erat sit volutpat. Nostrud exerci tation ullamcorper suscipit lobortis nisl aliquip  commodo quat.</p>

                    <p>Duis autem vel eum iriure at dolor vulputate velit esse vel molestie at dolore.</p>

                    <button type="button" class="btn btn-default">More details</button>
                  </div>
                </div>
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
		document.querySelector("#updateForm")
		.addEventListener("submit", function(event){
			var inputPwd=document.querySelector("#pwd").value;
			var inputPwd2=document.querySelector("#pwd2").value;
			if(inputPwd != inputPwd2){
				alert("비밀번호를 확인 하세요");
				event.preventDefault();//폼전송 막기 
			}
		});
	</script>	
	
	<script>
	    function addrClick() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

	                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var fullAddr = ''; // 최종 주소 변수
	                var extraAddr = ''; // 조합형 주소 변수

	                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                    fullAddr = data.roadAddress;

	                } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                    fullAddr = data.jibunAddress;
	                }

	                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
	                if(data.userSelectedType === 'R'){
	                    //법정동명이 있을 경우 추가한다.
	                    if(data.bname !== ''){
	                        extraAddr += data.bname;
	                    }
	                    // 건물명이 있을 경우 추가한다.
	                    if(data.buildingName !== ''){
	                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                    }
	                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
	                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
	                }

	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                document.getElementById('addr01').value = data.zonecode; //5자리 새우편번호 사용
	                document.getElementById('addr02').value = fullAddr;

	                // 커서를 상세주소 필드로 이동한다.
	                document.getElementById('addr03').focus();
	            }
	        }).open();
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