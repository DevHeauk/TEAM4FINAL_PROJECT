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
  <title>Blog Page | Metronic Frontend</title>

  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  
  <%@ include file="../inc/header_script.jsp" %>
</head>
<!-- Body BEGIN -->
<body class="ecommerce">

    <%@ include file="../inc/header.jsp" %>

    <div class="main">
      <div class="container">
        <ul class="breadcrumb">
            <li><a href="index.html">Home</a></li>
            <li><a href="match_detail.do?awayTeam=${tmp.awayTeam}&homeTeam=${tmp.homeTeam}&num=${tmp.num}">match_detail</a></li>
            <li class="active">Blog Page</li>
        </ul>
        <!-- BEGIN SIDEBAR & CONTENT -->
        <div class="row margin-bottom-40">
          <!-- BEGIN CONTENT -->
          <div class="col-md-12 col-sm-12">
            <h1>LEGEND TEAMS</h1>
            <div class="content-page">
              <div class="row">
                <!-- BEGIN LEFT SIDEBAR -->    
	                                       
                <div class="col-md-12 col-sm-12 blog-posts"> 
                	<c:forEach var="tmp" items="${matchlist}">           
                	  <div class="row">     
                	  <!-- left -->                              	
	                    <div class="col-md-4 col-sm-4 match-left">
	                      <h2 style="text-align: center; padding-bottom: 10px; font-size: 22px;"><a href="detail2.do?name=${tmp.homeTeam }" style="color: #0033cc;">${tmp.homeTeam }</a></h2>	                       
	                       <img style="width:343px;height:191px" src="${pageContext.request.contextPath }/upload/${tmp.saveFileName_H}"/>        
	                      <ul class="blog-info" style="text-align: center; padding-top: 10px;">
	                       	<li><i>경기날짜 : ${tmp.matchDate }</i></li>                      
	                      </ul>	                                   
	                    </div>
	                    <!-- vs -->
	                    <div class="col-md-4 col-sm-4 match-vs" style="text-align: center;;">
							<img src="${pageContext.request.contextPath}/assets/pages/img/match_vs.png" alt="" /><br />
							<c:if test="${tmp.successMatching eq true}">
							<a href="detail.do?awayTeam=${tmp.awayTeam}&homeTeam=${tmp.homeTeam}&num=${tmp.num}" class="btn btn-primary" style="color: #ffffff;">경기 보기</a><br /><br />							
							</c:if>                            
	                    </div>	
	                    <!-- right -->
	                    <div class="col-md-4 col-sm-4 match-right" >
	                      <h2 style="text-align: center; padding-bottom: 10px; font-size: 22px;"><a href="detail2.do?name=${tmp.awayTeam }" style="color: #f10025;">${tmp.awayTeam }</a></h2>	                       
	                        	<img style="width:343px;height:191px" src="${pageContext.request.contextPath }/upload/${tmp.saveFileName_A}"/>        
	                      <ul class="blog-info" style="text-align: center; padding-top: 10px;">
	                        <li><i>그라운드 : ${tmp.ground }</i></li>                      
	                      </ul>	                                   
	                    </div>	   	                    	                                        
	                  </div>
	                  	                  
            	      <hr class="blog-post-sep">
	              </c:forEach>              
                </div>
                <!-- END LEFT SIDEBAR -->
    
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
    <script type="text/javascript">
        jQuery(document).ready(function() {
            Layout.init();
            Layout.initTwitter();
            
            Layout.initFixHeaderWithPreHeader();
            Layout.initNavScrolling();                    
        });
    </script>
    <!-- END PAGE LEVEL JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>