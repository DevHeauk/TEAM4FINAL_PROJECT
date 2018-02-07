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
  <title>${Homedto.name }</title>

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
            <li><a href="javascript:;">Blog</a></li>
            <li class="active">Blog Item</li>
        </ul>
        <!-- BEGIN SIDEBAR & CONTENT -->
        <div class="row margin-bottom-40">
          <!-- BEGIN CONTENT -->
          <div class="col-md-12 col-sm-12">
            <h1>${Homedto.name }</h1>
            <div class="content-page">
              <div class="row">
                <!-- BEGIN LEFT SIDEBAR -->            
                <div class="col-md-9 col-sm-9 blog-item">
                  <div class="blog-item-img">
                    <!-- BEGIN CAROUSEL -->            
                    <div class="front-carousel">
                      <div id="myCarousel" class="carousel slide">
                        <!-- Carousel items -->
                        <div class="carousel-inner">
                          <div class="item">
                            <img src="${pageContext.request.contextPath}/assets/pages/img/basketball/basketball1.jpg" alt="">
                          </div>
                          <div class="item active">
                            <img src="${pageContext.request.contextPath}/assets/pages/img/basketball/basketball2.jpg" alt="">
                          </div>
                        </div>
                        <!-- Carousel nav -->
                        <a class="carousel-control left" href="#myCarousel" data-slide="prev">
                          <i class="fa fa-angle-left"></i>
                        </a>
                        <a class="carousel-control right" href="#myCarousel" data-slide="next">
                          <i class="fa fa-angle-right"></i>
                        </a>
                      </div>                
                    </div>
                    <!-- END CAROUSEL -->             
                  </div>
                  <h2><strong>${Homedto.name }</strong> 소개</h2>
                  <c:forEach var="tmp" items="${memberlist }">
	                  <dl class="team_member">
	                  	<dt><i class="fa fa-user"></i> ${tmp.id } (${tmp.responsibility }</dt>
	                  	<dd><span>포지션 : ${tmp.b_position}, 구력 : ${tmp.career }</dd>
	                  </dl>
	                  <dl class="team_member">
	                  	<dt><i class="fa fa-user"></i> ${tmp.id } (${tmp.responsibility }</dt>
	                  	<dd><span>포지션 : ${tmp.b_position}, 구력 : ${tmp.career }</dd>
	                  </dl>
	                  <dl class="team_member">
	                  	<dt><i class="fa fa-user"></i> ${tmp.id } (${tmp.responsibility }</dt>
	                  	<dd><span>포지션 : ${tmp.b_position}, 구력 : ${tmp.career }</dd>
	                  </dl>	                  	                  
                  </c:forEach>
                  <p>${Homedto.content }</p>                  
                  <ul class="blog-info">
                    <li><i class="fa fa-user"></i> 팀이름</li>
                    <li><i class="fa fa-home"></i> 에이콘</li>
                    <li><i class="fa fa-tags"></i> 승 / 무 / 패</li>
                    <li><i class="fa fa-tags"></i> 김응길, 유혁준, 이용규, 이준규</li>
                  </ul>

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