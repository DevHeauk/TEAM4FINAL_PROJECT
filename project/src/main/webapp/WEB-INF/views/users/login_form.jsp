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
  <title>Login | Metronic Frontend</title>

  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

  <%@ include file="../inc/header_script.jsp" %>
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
            <li class="active">Login</li>
        </ul>
        <!-- BEGIN SIDEBAR & CONTENT -->
        <div class="row margin-bottom-40">

          <!-- BEGIN CONTENT -->
          <div class="col-md-12 col-sm-12" style=" margin-bottom: 80px">
            <h1>Login</h1>
            <div class="content-form-page">
              <div class="row" style="padding: 20px 0;">
                <div class="col-md-7 col-sm-7">
                  <form action="login.do" method="post" class="form-horizontal form-without-legend form-signin" role="form">
      				<input type="hidden" name="url" value="${url }"/>	                  
                    <div class="form-group">
                      <label for="id" class="col-lg-4 control-label">ID <span class="require">*</span></label>
                      <div class="col-lg-8">
                        <input type="text" class="form-control" name="id" id="id">
                      	<input type="checkbox" id="isSave">	<span>아이디 저장</span>                         
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="pwd" class="col-lg-4 control-label">Password <span class="require">*</span></label>
                      <div class="col-lg-8">
                        <input type="password" class="form-control" name="pwd" id="pwd">                       
                      </div>
                    </div>
                    <div class="row">	                    
                      <div class="col-lg-8 col-md-offset-4 padding-left-0 padding-top-20">
                        <button type="submit" class="btn btn-primary">Login</button>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-lg-8 col-md-offset-4 padding-left-0 padding-top-10 padding-right-30">
                        <hr>
                        <div class="login-socio">
                            <p class="text-muted">or login using:</p>
                            <ul class="social-icons">
                                <li><a href="javascript:;" data-original-title="facebook" class="facebook" title="facebook"></a></li>
                                <li><a href="javascript:;" data-original-title="Twitter" class="twitter" title="Twitter"></a></li>
                                <li><a href="javascript:;" data-original-title="Google Plus" class="googleplus" title="Google Plus"></a></li>
                                <li><a href="javascript:;" data-original-title="Linkedin" class="linkedin" title="LinkedIn"></a></li>
                            </ul>
                        </div>
                      </div>
                    </div>
                  </form>
                </div>
                
                <div class="col-md-4 col-sm-4 pull-right">
                  <div class="form-info">
                    <h2><em>Important</em> Information</h2>
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
       	// localStorage 에 저장된 아이디 비밀번호가 있으면 복구시켜준다.
       	if(localStorage.id != undefined){
       		$("#id").val(localStorage.id);
       		//체크박스 체크해주기
       		$("#isSave").prop("checked", true);
       	}


       	//폼 전송 이벤트가 발생했을때 실행할 함수 등록
       	$(".form-signin").on("submit", function(){
       		//아이디 비밀번호 저장여부 
       		var isSave=$("#isSave").is(":checked");
       		if(isSave){
       			//입력한 아이디 비밀번호를 읽어와서
       			var inputId=$("#id").val();
       			//localStorage 에 저장한다.
       			localStorage.id=inputId;
       		}else{
       			//localStorage 에 id, pwd 삭제하기 
       			delete localStorage.id;
       		}
       	});	               	
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