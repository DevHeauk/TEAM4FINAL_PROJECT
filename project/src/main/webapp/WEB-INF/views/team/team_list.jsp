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
<!-- Head END -->
<script src="../resource/css/bootstrap.css"></script>
<!-- Body BEGIN -->
<body class="ecommerce">

    <%@ include file="../inc/header.jsp" %>

    <div class="main">
      <div class="container">
        <ul class="breadcrumb">
            <li><a href="index.html">Home</a></li>
            <li><a href="javascript:;">Blog</a></li>
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
	            <c:if test="${sessionScope.team eq null }">
           	  		<a href="insertform.do" class="btn btn-primary pull-right margin-bottom-20" style="color: #ffffff; margin-right: 20px;">팀만들기</a>
				</c:if>                            
                <div class="col-md-12 col-sm-12 blog-posts">            
                <c:forEach var="tmp" items="${list }">
                	  <div class="row">                                   	
	                    <div class="col-md-4 col-sm-4">                    
	                      <!-- BEGIN CAROUSEL -->            
	                      <div class="front-carousel">
	                        <div class="carousel slide" id="myCarousel${tmp.name }">
	                          <!-- Carousel items -->
	                          <div class="carousel-inner">
	                            <div class="item">
	                              <img alt="" src="${pageContext.request.contextPath}/assets/pages/img/basketball/basketball1.jpg">
	                            </div>
	                            <div class="item">
	                              <img alt="" src="${pageContext.request.contextPath}/assets/pages/img/basketball/basketball2.jpg">
	                            </div>
	                            <div class="item active">
	                              <img alt="" src="${pageContext.request.contextPath}/assets/pages/img/basketball/basketball3.jpg">
	                            </div>
	                          </div>
	                          <!-- Carousel nav -->
	                          <a data-slide="prev" href="#myCarousel${tmp.name }" class="carousel-control left">
	                            <i class="fa fa-angle-left"></i>
	                          </a>
	                          <a data-slide="next" href="#myCarousel${tmp.name }" class="carousel-control right">
	                            <i class="fa fa-angle-right"></i>
	                          </a>
	                        </div>                
	                      </div>
	                      <!-- END CAROUSEL -->             
	                    </div>
	                    
	                    <div class="col-md-8 col-sm-8">
	                      <h2><a href="team_detail2.do?name=${tmp.name }">${tmp.name }</a></h2>
	                      <ul class="blog-info">
	                        <li><i style="color:blue" class="glyphicon glyphicon-triangle-top"></i> 승 ${tmp.win }</li>
	                        <li><i style="color:red" class="glyphicon glyphicon-triangle-bottom"></i> 패 ${tmp.lose }</li>
	                        <li><i class="fa fa-tags"></i> 총경기 : ${tmp.total }</li>
	                        <li><i class="fa fa-tags"></i> 홈그라운드 : ${tmp.ground }</li>                        
	                      </ul>
	                      <p>${tmp.content }</p>
	                      <a href="detail2.do?name=${tmp.name }" class="more">팀정보보기 <i class="icon-angle-right"></i></a>
	                    </div>
	                  </div>
            	      <hr class="blog-post-sep">
	                  
	              </c:forEach>
	              <ul class="pagination">
					<c:choose>
						<c:when test="${startPageNum ne 1 }">
							<li>
								<a href="team_list.do?pageNum=${startPageNum-1 }&condition=${condition}&keyword=${keyword}">&laquo;</a>
							</li>
						</c:when>
						<c:otherwise>
							<li class="disabled">
								<a href="javascript:">&laquo;</a>
							</li>
						</c:otherwise>
					</c:choose>
					<c:forEach var="i" begin="${startPageNum }" 
							end="${endPageNum }">	
						<c:choose>
							<c:when test="${i eq pageNum }">
								<li class="active"><a href="team_list.do?pageNum=${i }&condition=${condition}&keyword=${keyword}">${i }</a></li>
							</c:when>
							<c:otherwise>
								<li><a href="team_list.do?pageNum=${i }&condition=${condition}&keyword=${keyword}">${i }</a></li>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<c:choose>
						<c:when test="${endPageNum lt totalPageCount }">
							<li>
								<a href="team_list.do?pageNum=${endPageNum+1 }&condition=${condition}&keyword=${keyword}">&raquo;</a>
							</li>
						</c:when>
						<c:otherwise>
							<li class="disabled">
								<a href="javascript:">&raquo;</a>
							</li>
						</c:otherwise>
					</c:choose>
				</ul>
				<!-- Search -->
				<div class="row">
					<div class="col-xs-6">
						<!-- 검색어 관련 form -->
						<form action="team_list.do" method="post">
							<input type="hidden" id="condition" value="${condition }" name="condition" />
					        <div class="input-group">
					          <div class="input-group-btn">
					            <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown">
					              <span id="conditionBtn">제목+파일명</span>
					              <span class="caret"></span>
					            </button>
					            <ul class="dropdown-menu">
					              <li><a href="javascript:set('titlecontent')">제목+파일명</a>
					              </li>
					              <li><a href="javascript:set('title')">제목</a>
					              </li>
					              <li><a href="javascript:set('writer')">작성자</a>
					              </li>
					            </ul>
					          </div>
					          <!-- /btn-group -->
					          <input type="text" id="keyword" name="keyword" value="${keyword }" class="form-control"/>
					          	<span class="input-group-btn">
						            <button class="btn btn-default" type="submit">
						              <span class="sr-only">검색</span>
						              <span class="glyphicon glyphicon-search"></span>
						            </button>
			          			</span>
					        </div>			
						</form>
					</div>
				</div><!-- /.row -->               
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