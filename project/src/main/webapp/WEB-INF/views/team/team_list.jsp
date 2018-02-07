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
            <c:if test="${sessionScope.team eq null }">
           	  	<a href="insertform.do"><button style="width:80px" class="btn btn-primary col-xs-offset-10 col-sm-offset-7">팀만들기</button></a>
			</c:if>
            <div class="content-page">
              <div class="row">
                <!-- BEGIN LEFT SIDEBAR -->            
                <div class="col-md-9 col-sm-9 blog-posts">
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
	                      <h2><a href="team_detail.do">${tmp.name }</a></h2>
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
                    <li><a href="javascript:;">Prev</a></li>
                    <li><a href="javascript:;">1</a></li>
                    <li><a href="javascript:;">2</a></li>
                    <li class="active"><a href="javascript:;">3</a></li>
                    <li><a href="javascript:;">4</a></li>
                    <li><a href="javascript:;">5</a></li>
                    <li><a href="javascript:;">Next</a></li>
                  </ul>               
                </div>
                <!-- END LEFT SIDEBAR -->

                <!-- BEGIN RIGHT SIDEBAR -->            
                <div class="col-md-3 col-sm-3 blog-sidebar">
                  <!-- CATEGORIES START -->
                  <h2 class="no-top-space">Categories</h2>
                  <ul class="nav sidebar-categories margin-bottom-40">
                    <li><a href="javascript:;">London (18)</a></li>
                    <li><a href="javascript:;">Moscow (5)</a></li>
                    <li class="active"><a href="javascript:;">Paris (12)</a></li>
                    <li><a href="javascript:;">Berlin (7)</a></li>
                    <li><a href="javascript:;">Istanbul (3)</a></li>
                  </ul>
                  <!-- CATEGORIES END -->

                  <!-- BEGIN RECENT NEWS -->                            
                  <h2>Recent News</h2>
                  <div class="recent-news margin-bottom-10">
                    <div class="row margin-bottom-10">
                      <div class="col-md-3">
                        <img class="img-responsive" alt="" src="${pageContext.request.contextPath}/assets/pages/img/people/img2-large.jpg">                        
                      </div>
                      <div class="col-md-9 recent-news-inner">
                        <h3><a href="javascript:;">Letiusto gnissimos</a></h3>
                        <p>Decusamus tiusto odiodig nis simos ducimus qui sint</p>
                      </div>                        
                    </div>
                    <div class="row margin-bottom-10">
                      <div class="col-md-3">
                        <img class="img-responsive" alt="" src="${pageContext.request.contextPath}/assets/pages/img/people/img1-large.jpg">                        
                      </div>
                      <div class="col-md-9 recent-news-inner">
                        <h3><a href="javascript:;">Deiusto anissimos</a></h3>
                        <p>Decusamus tiusto odiodig nis simos ducimus qui sint</p>
                      </div>                        
                    </div>
                    <div class="row margin-bottom-10">
                      <div class="col-md-3">
                        <img class="img-responsive" alt="" src="${pageContext.request.contextPath}/assets/pages/img/people/img3-large.jpg">                        
                      </div>
                      <div class="col-md-9 recent-news-inner">
                        <h3><a href="javascript:;">Tesiusto baissimos</a></h3>
                        <p>Decusamus tiusto odiodig nis simos ducimus qui sint</p>
                      </div>                        
                    </div>
                  </div>
                  <!-- END RECENT NEWS -->                            

                  <!-- BEGIN BLOG TALKS -->
                  <div class="blog-talks margin-bottom-30">
                    <h2>Popular Talks</h2>
                    <div class="tab-style-1">
                      <ul class="nav nav-tabs">
                        <li class="active"><a data-toggle="tab" href="#tab-1">Multipurpose</a></li>
                        <li><a data-toggle="tab" href="#tab-2">Documented</a></li>
                      </ul>
                      <div class="tab-content">
                        <div id="tab-1" class="tab-pane row-fluid fade in active">
                          <p class="margin-bottom-10">Raw denim you probably haven't heard of them jean shorts Austin. eu banh mi, qui irure terry richardson ex squid Aliquip placeat salvia cillum iphone.</p>
                          <p><a class="more" href="javascript:;">Read more</a></p>
                        </div>
                        <div id="tab-2" class="tab-pane fade">
                          <p>Food truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee squid. aliquip jean shorts ullamco ad vinyl aesthetic magna delectus mollit. Keytar helvetica VHS salvia..</p>
                        </div>
                      </div>
                    </div>
                  </div>                            
                  <!-- END BLOG TALKS -->

                  <!-- BEGIN BLOG PHOTOS STREAM -->
                  <div class="blog-photo-stream margin-bottom-20">
                    <h2>Photos Stream</h2>
                    <ul class="list-unstyled">
                      <li><a href="javascript:;"><img alt="" src="${pageContext.request.contextPath}/assets/pages/img/people/img5-small.jpg"></a></li>
                      <li><a href="javascript:;"><img alt="" src="${pageContext.request.contextPath}/assets/pages/img/works/img1.jpg"></a></li>
                      <li><a href="javascript:;"><img alt="" src="${pageContext.request.contextPath}/assets/pages/img/people/img4-large.jpg"></a></li>
                      <li><a href="javascript:;"><img alt="" src="${pageContext.request.contextPath}/assets/pages/img/works/img6.jpg"></a></li>
                      <li><a href="javascript:;"><img alt="" src="${pageContext.request.contextPath}/assets/pages/img/pics/img1-large.jpg"></a></li>
                      <li><a href="javascript:;"><img alt="" src="${pageContext.request.contextPath}/assets/pages/img/pics/img2-large.jpg"></a></li>
                      <li><a href="javascript:;"><img alt="" src="${pageContext.request.contextPath}/assets/pages/img/works/img3.jpg"></a></li>
                      <li><a href="javascript:;"><img alt="" src="${pageContext.request.contextPath}/assets/pages/img/people/img2-large.jpg"></a></li>
                    </ul>                    
                  </div>
                  <!-- END BLOG PHOTOS STREAM -->

                  <!-- BEGIN BLOG TAGS -->
                  <div class="blog-tags margin-bottom-20">
                    <h2>Tags</h2>
                    <ul>
                      <li><a href="javascript:;"><i class="fa fa-tags"></i>OS</a></li>
                      <li><a href="javascript:;"><i class="fa fa-tags"></i>Metronic</a></li>
                      <li><a href="javascript:;"><i class="fa fa-tags"></i>Dell</a></li>
                      <li><a href="javascript:;"><i class="fa fa-tags"></i>Conquer</a></li>
                      <li><a href="javascript:;"><i class="fa fa-tags"></i>MS</a></li>
                      <li><a href="javascript:;"><i class="fa fa-tags"></i>Google</a></li>
                      <li><a href="javascript:;"><i class="fa fa-tags"></i>Keenthemes</a></li>
                      <li><a href="javascript:;"><i class="fa fa-tags"></i>Twitter</a></li>
                    </ul>
                  </div>
                  <!-- END BLOG TAGS -->
                </div>
                <!-- END RIGHT SIDEBAR -->            
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