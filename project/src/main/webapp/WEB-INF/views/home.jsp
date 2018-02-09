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
  <title>Metronic Shop UI</title>

  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

  <%@ include file="inc/header_script.jsp" %>
  <link href="${pageContext.request.contextPath}/assets/pages/css/slider.css" rel="stylesheet">  
</head>
<!-- Head END -->

<!-- Body BEGIN -->
<body class="ecommerce">
    <%@ include file="inc/header.jsp" %>
    <!-- BEGIN SLIDER -->
    <div class="page-slider margin-bottom-35">
        <div id="carousel-example-generic" class="carousel slide carousel-slider">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                <li data-target="#carousel-example-generic" data-slide-to="3"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <!-- First slide -->
                <div class="item carousel-item-four active">
                    <div class="container">
                        <div class="carousel-position-four text-center">
                            <h2 class="margin-bottom-20 animate-delay carousel-title-v3 border-bottom-title text-uppercase" data-animation="animated fadeInDown">
                                Tones of <br/><span class="color-red-v2">Shop UI Features</span><br/> designed
                            </h2>
                            <p class="carousel-subtitle-v2" data-animation="animated fadeInUp">Lorem ipsum dolor sit amet constectetuer diam <br/>
                            adipiscing elit euismod ut laoreet dolore.</p>
                        </div>
                    </div>
                </div>
                
                <!-- Second slide -->
                <div class="item carousel-item-five">
                    <div class="container">
                        <div class="carousel-position-four text-center">
                            <h2 class="animate-delay carousel-title-v4" data-animation="animated fadeInDown">
                                Unlimted
                            </h2>
                            <p class="carousel-subtitle-v2" data-animation="animated fadeInDown">
                                Layout Options
                            </p>
                            <p class="carousel-subtitle-v3 margin-bottom-30" data-animation="animated fadeInUp">
                                Fully Responsive
                            </p>
                            <a class="carousel-btn" href="#" data-animation="animated fadeInUp">See More Details</a>
                        </div>
                        <img class="carousel-position-five animate-delay hidden-sm hidden-xs" src="assets/pages/img/shop-slider/slide2/price.png" alt="Price" data-animation="animated zoomIn">
                    </div>
                </div>

                <!-- Third slide -->
                <div class="item carousel-item-six">
                    <div class="container">
                        <div class="carousel-position-four text-center">
                            <span class="carousel-subtitle-v3 margin-bottom-15" data-animation="animated fadeInDown">
                                Full Admin &amp; Frontend
                            </span>
                            <p class="carousel-subtitle-v4" data-animation="animated fadeInDown">
                                eCommerce UI
                            </p>
                            <p class="carousel-subtitle-v3" data-animation="animated fadeInDown">
                                Is Ready For Your Project
                            </p>
                        </div>
                    </div>
                </div>

                <!-- Fourth slide -->
                <div class="item carousel-item-seven">
                   <div class="center-block">
                        <div class="center-block-wrap">
                            <div class="center-block-body">
                                <h2 class="carousel-title-v1 margin-bottom-20" data-animation="animated fadeInDown">
                                    The most <br/>
                                    wanted bijouterie
                                </h2>
                                <a class="carousel-btn" href="#" data-animation="animated fadeInUp">But It Now!</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Controls -->
            <a class="left carousel-control carousel-control-shop" href="#carousel-example-generic" role="button" data-slide="prev">
                <i class="fa fa-angle-left" aria-hidden="true"></i>
            </a>
            <a class="right carousel-control carousel-control-shop" href="#carousel-example-generic" role="button" data-slide="next">
                <i class="fa fa-angle-right" aria-hidden="true"></i>
            </a>
        </div>
    </div>
    <!-- END SLIDER -->

    <div class="main">
      <div class="container">
        <!-- BEGIN SALE PRODUCT & NEW ARRIVALS -->
        <div class="row margin-bottom-40">
          <!-- BEGIN SALE PRODUCT -->
          <div class="col-md-12 sale-product">
            <h2>TEAM </h2>
            <div class="owl-carousel owl-carousel4 main-team-area">
              <div class="main-team-list">
                  <div class="product-item">
                    <div class="pi-img-wrapper">
                      <img src="assets/pages/img/products/model4.jpg" class="img-responsive" alt="Berry Lace Dress">
                      <div>
                        <a href="team/detail.do" class="btn btn-default fancybox-button">View</a>
                      </div>
                    </div>
                    <div class="main-team-text">
                       <h3 style="float: left; padding-top: 13px;"><a href="javascript:;"><strong>팀이름입니다.</strong></a></h3>
                       <ul class="blog-info" style="float: right;">
                         <li><i style="color:blue" class="glyphicon glyphicon-triangle-top"></i> 승 10</li>
                         <li><i style="color:red" class="glyphicon glyphicon-triangle-bottom"></i> 패  10</li>                     
                       </ul>     
                    </div>
                  </div>
              </div>   
              <div class="main-team-list">
                  <div class="product-item">
                    <div class="pi-img-wrapper">
                      <img src="assets/pages/img/products/model4.jpg" class="img-responsive" alt="Berry Lace Dress">
                      <div>
                        <a href="team/detail.do" class="btn btn-default fancybox-button">View</a>
                      </div>
                    </div>
                    <div class="main-team-text">
                       <h3 style="float: left; padding-top: 13px;"><a href="javascript:;"><strong>팀이름입니다.</strong></a></h3>
                       <ul class="blog-info" style="float: right;">
                         <li><i style="color:blue" class="glyphicon glyphicon-triangle-top"></i> 승 10</li>
                         <li><i style="color:red" class="glyphicon glyphicon-triangle-bottom"></i> 패  10</li>                     
                       </ul>     
                    </div>     
                  </div>
              </div>  
              <div class="main-team-list">
                  <div class="product-item">
                    <div class="pi-img-wrapper">
                      <img src="assets/pages/img/products/model4.jpg" class="img-responsive" alt="Berry Lace Dress">
                      <div>
                        <a href="team/detail.do" class="btn btn-default fancybox-button">View</a>
                      </div>
                    </div>
                    <div class="main-team-text">
                       <h3 style="float: left; padding-top: 13px;"><a href="javascript:;"><strong>팀이름입니다.</strong></a></h3>
                       <ul class="blog-info" style="float: right;">
                         <li><i style="color:blue" class="glyphicon glyphicon-triangle-top"></i> 승 10</li>
                         <li><i style="color:red" class="glyphicon glyphicon-triangle-bottom"></i> 패  10</li>                     
                       </ul>     
                    </div>     
                  </div>
              </div>  
              <div class="main-team-list">
                  <div class="product-item">
                    <div class="pi-img-wrapper">
                      <img src="assets/pages/img/products/model4.jpg" class="img-responsive" alt="Berry Lace Dress">
                      <div>
                        <a href="team/detail.do" class="btn btn-default fancybox-button">View</a>
                      </div>
                    </div>
                    <div class="main-team-text">
                       <h3 style="float: left; padding-top: 13px;"><a href="javascript:;"><strong>팀이름입니다.</strong></a></h3>
                       <ul class="blog-info" style="float: right;">
                         <li><i style="color:blue" class="glyphicon glyphicon-triangle-top"></i> 승 10</li>
                         <li><i style="color:red" class="glyphicon glyphicon-triangle-bottom"></i> 패  10</li>                     
                       </ul>     
                    </div>     
                  </div>
              </div>                                                      
            </div>
          </div>
          <!-- END SALE PRODUCT -->
        </div>
        <!-- END SALE PRODUCT & NEW ARRIVALS -->

        <!-- BEGIN SIDEBAR & CONTENT -->
        <div class="row margin-bottom-40 ">
          <!-- BEGIN CONTENT -->
          <div class="col-md-12 col-sm-12">
            <h2>PRODUCTS</h2>
            <div class="col-md-3 col-sm-4 main-shop-list sidebar-menu">
              <ul class="list-group margin-bottom-0 clearfix">
                <li class="list-group-item clearfix active"><a href="#a" data-toggle="tab"><i class="fa fa-angle-right"></i> 농구복</a></li>
                <li class="list-group-item clearfix"><a href="#b" data-toggle="tab"><i class="fa fa-angle-right"></i> 농구화</a></li>
                <li class="list-group-item clearfix"><a href="#c" data-toggle="tab"><i class="fa fa-angle-right"></i> 농구공</a></li>
              </ul>
            </div> 
            
            <div class="tab-content main_shop_item clearfix" style="clear: both;">                
            <div id="a" class="tab-pane owl-carousel owl-carousel4 main-prd-list fade in active">
              <c:forEach var="tmp" items="${list3 }">  
                <div>    
                	<div class="product-item">
	                  <div class="pi-img-wrapper">
	                    <img src="${pageContext.request.contextPath }/upload/${tmp.saveFileName}" class="img-responsive" alt="Berry Lace Dress">
	                    <div>
	                      <a href="assets/pages/img/products/k1.jpg" class="btn btn-default fancybox-button">Zoom</a>
	                      <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
	                    </div>
	                  </div>
	                  <h3><a href="shop-item.html">${tmp.title }</a></h3>
	                  <div class="pi-price">${tmp.price }</div>
	                </div>
	             </div>  
	           </c:forEach> 	
        	</div>
            <div id="b" class="tab-pane owl-carousel owl-carousel4 main-prd-list fade">
              <c:forEach var="tmp" items="${list4 }">                         	
               <div>                           
                	<div class="product-item">
	                  <div class="pi-img-wrapper">
	                    <img src="${pageContext.request.contextPath }/upload/${tmp.saveFileName}" class="img-responsive" alt="Berry Lace Dress">
	                    <div>
	                      <a href="assets/pages/img/products/k1.jpg" class="btn btn-default fancybox-button">Zoom</a>
	                      <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
	                    </div>
	                  </div>
	                  <h3><a href="shop-item.html">${tmp.title }</a></h3>
	                  <div class="pi-price">${tmp.price }</div>
	                </div>
	             </div>	  
	           </c:forEach>
	        </div>   
	            
            <div id="c" class="tab-pane owl-carousel owl-carousel4 main-prd-list fade">
              <c:forEach var="tmp" items="${list5 }">   	            
                <div>   	
                	<div class="product-item">
	                  <div class="pi-img-wrapper" >
	                    <img src="${pageContext.request.contextPath }/upload/${tmp.saveFileName}" class="img-responsive" alt="Berry Lace Dress">
	                    <div>
	                      <a href="assets/pages/img/products/k1.jpg" class="btn btn-default fancybox-button">Zoom</a>
	                      <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
	                    </div>
	                  </div>
	                  <h3><a href="shop-item.html">${tmp.title }</a></h3>
	                  <div class="pi-price">${tmp.price }</div>
	                </div>
	           </div> 
	         </c:forEach>  
	       </div>  	 
	      </div>                   	
        <!-- END SIDEBAR & CONTENT -->

        <!-- BEGIN TWO PRODUCTS & PROMO -->
        <div class="row margin-bottom-35 ">
          <!-- BEGIN TWO PRODUCTS -->
          <div class="col-md-12 two-items-bottom-items">
            <h2>MATCHING</h2>
            <div class="owl-carousel owl-carousel2">
               <div class="row" style="width: 95%; background: #ffffff; padding-top: 20px; padding-left: 2.5%;">                                      
               <div class="col-md-4 col-sm-4 match-left">
                 <h2 style="text-align: center; padding-bottom: 10px; font-size: 22px;"><a href="team_detail.do" style="color: #0033cc;">Home Team</a></h2>                          
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
                 <ul class="blog-info" style="text-align: center; padding-top: 10px;">
                   <li><i style="color:blue" class="glyphicon glyphicon-triangle-top"></i> 승 10</li>
                   <li><i style="color:red" class="glyphicon glyphicon-triangle-bottom"></i> 패  10</li>
                   <li><i class="fa fa-tags"></i> 총경기 : 20</li>                      
                 </ul>                                      
               </div>
               <div class="col-md-4 col-sm-4 match-vs" style="text-align: center;;">
   <img src="${pageContext.request.contextPath}/assets/pages/img/main_vs.png" alt="" style="max-width: 100px; display: inline; margin: 50px 0 30px 0;"/><br />
   <a href="match_detail.do" class="btn btn-primary" style="color: #ffffff;">경기 보기</a><br /><br />                              
               </div>   
               
               <div class="col-md-4 col-sm-4 match-right" >
                 <h2 style="text-align: center; padding-bottom: 10px; font-size: 22px;"><a href="team_detail.do" style="color: #f10025;">Away Team</a></h2>                          
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
                 <ul class="blog-info" style="text-align: center; padding-top: 10px;">
                   <li><i style="color:blue" class="glyphicon glyphicon-triangle-top"></i> 승 10</li>
                   <li><i style="color:red" class="glyphicon glyphicon-triangle-bottom"></i> 패  10</li>
                   <li><i class="fa fa-tags"></i> 총경기 : 20</li>                      
                 </ul>                                      
               </div>                                                                        
             </div>
               <div class="row" style="width: 95%; background: #ffffff; padding-top: 20px; padding-left: 2.5%;">                                      
               <div class="col-md-4 col-sm-4 match-left">
                 <h2 style="text-align: center; padding-bottom: 10px; font-size: 22px;"><a href="team_detail.do" style="color: #0033cc;">Home Team</a></h2>                          
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
                 <ul class="blog-info" style="text-align: center; padding-top: 10px;">
                   <li><i style="color:blue" class="glyphicon glyphicon-triangle-top"></i> 승 10</li>
                   <li><i style="color:red" class="glyphicon glyphicon-triangle-bottom"></i> 패  10</li>
                   <li><i class="fa fa-tags"></i> 총경기 : 20</li>                      
                 </ul>                                      
               </div>
               <div class="col-md-4 col-sm-4 match-vs" style="text-align: center;;">
   <img src="${pageContext.request.contextPath}/assets/pages/img/main_vs.png" alt="" style="max-width: 100px; display: inline; margin: 50px 0 30px 0;"/><br />
   <a href="match_detail.do" class="btn btn-primary" style="color: #ffffff;">경기 보기</a><br /><br />                              
               </div>   
               
               <div class="col-md-4 col-sm-4 match-right" >
                 <h2 style="text-align: center; padding-bottom: 10px; font-size: 22px;"><a href="team_detail.do" style="color: #f10025;">Away Team</a></h2>                          
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
                 <ul class="blog-info" style="text-align: center; padding-top: 10px;">
                   <li><i style="color:blue" class="glyphicon glyphicon-triangle-top"></i> 승 10</li>
                   <li><i style="color:red" class="glyphicon glyphicon-triangle-bottom"></i> 패  10</li>
                   <li><i class="fa fa-tags"></i> 총경기 : 20</li>                      
                 </ul>                                      
               </div>                                                                        
             </div>
               <div class="row" style="width: 95%; background: #ffffff; padding-top: 20px; padding-left: 2.5%;">                                      
               <div class="col-md-4 col-sm-4 match-left">
                 <h2 style="text-align: center; padding-bottom: 10px; font-size: 22px;"><a href="team_detail.do" style="color: #0033cc;">Home Team</a></h2>                          
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
                 <ul class="blog-info" style="text-align: center; padding-top: 10px;">
                   <li><i style="color:blue" class="glyphicon glyphicon-triangle-top"></i> 승 10</li>
                   <li><i style="color:red" class="glyphicon glyphicon-triangle-bottom"></i> 패  10</li>
                   <li><i class="fa fa-tags"></i> 총경기 : 20</li>                      
                 </ul>                                      
               </div>
               <div class="col-md-4 col-sm-4 match-vs" style="text-align: center;;">
   <img src="${pageContext.request.contextPath}/assets/pages/img/main_vs.png" alt="" style="max-width: 100px; display: inline; margin: 50px 0 30px 0;"/><br />
   <a href="match_detail.do" class="btn btn-primary" style="color: #ffffff;">경기 보기</a><br /><br />                              
               </div>   
               
               <div class="col-md-4 col-sm-4 match-right" >
                 <h2 style="text-align: center; padding-bottom: 10px; font-size: 22px;"><a href="team_detail.do" style="color: #f10025;">Away Team</a></h2>                          
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
                 <ul class="blog-info" style="text-align: center; padding-top: 10px;">
                   <li><i style="color:blue" class="glyphicon glyphicon-triangle-top"></i> 승 10</li>
                   <li><i style="color:red" class="glyphicon glyphicon-triangle-bottom"></i> 패  10</li>
                   <li><i class="fa fa-tags"></i> 총경기 : 20</li>                      
                 </ul>                                      
               </div>                                                                        
             </div>
               <div class="row" style="width: 95%; background: #ffffff; padding-top: 20px; padding-left: 2.5%;">                                      
               <div class="col-md-4 col-sm-4 match-left">
                 <h2 style="text-align: center; padding-bottom: 10px; font-size: 22px;"><a href="team_detail.do" style="color: #0033cc;">Home Team</a></h2>                          
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
                 <ul class="blog-info" style="text-align: center; padding-top: 10px;">
                   <li><i style="color:blue" class="glyphicon glyphicon-triangle-top"></i> 승 10</li>
                   <li><i style="color:red" class="glyphicon glyphicon-triangle-bottom"></i> 패  10</li>
                   <li><i class="fa fa-tags"></i> 총경기 : 20</li>                      
                 </ul>                                      
               </div>
               <div class="col-md-4 col-sm-4 match-vs" style="text-align: center;;">
   <img src="${pageContext.request.contextPath}/assets/pages/img/main_vs.png" alt="" style="max-width: 100px; display: inline; margin: 50px 0 30px 0;"/><br />
   <a href="match_detail.do" class="btn btn-primary" style="color: #ffffff;">경기 보기</a><br /><br />                              
               </div>   
               
               <div class="col-md-4 col-sm-4 match-right" >
               <h2 style="text-align: center; padding-bottom: 10px; font-size: 22px;"><a href="team_detail.do" style="color: #f10025;">Away Team</a></h2>                          
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
                 <ul class="blog-info" style="text-align: center; padding-top: 10px;">
                   <li><i style="color:blue" class="glyphicon glyphicon-triangle-top"></i> 승 10</li>
                   <li><i style="color:red" class="glyphicon glyphicon-triangle-bottom"></i> 패  10</li>
                   <li><i class="fa fa-tags"></i> 총경기 : 20</li>                      
                 </ul>                                      
               </div>                                                                        
             </div>                          
            </div>
          </div>
          <!-- END TWO PRODUCTS -->
        </div>        
        <!-- END TWO PRODUCTS & PROMO -->
      </div>
    </div>

    <%@ include file="inc/footer.jsp" %>

    <!-- BEGIN fast view of a product -->
    <div id="product-pop-up" style="display: none; width: 700px;">
            <div class="product-page product-pop-up">
              <div class="row">
                <div class="col-md-6 col-sm-6 col-xs-3">
                  <div class="product-main-image">
                    <img src="assets/pages/img/products/model7.jpg" alt="Cool green dress with red bell" class="img-responsive">
                  </div>
                  <div class="product-other-images">
                    <a href="javascript:;" class="active"><img alt="Berry Lace Dress" src="assets/pages/img/products/model3.jpg"></a>
                    <a href="javascript:;"><img alt="Berry Lace Dress" src="assets/pages/img/products/model4.jpg"></a>
                    <a href="javascript:;"><img alt="Berry Lace Dress" src="assets/pages/img/products/model5.jpg"></a>
                  </div>
                </div>
                <div class="col-md-6 col-sm-6 col-xs-9">
                  <h2>Cool green dress with red bell</h2>
                  <div class="price-availability-block clearfix">
                    <div class="price">
                      <strong><span>$</span>47.00</strong>
                      <em>$<span>62.00</span></em>
                    </div>
                    <div class="availability">
                      Availability: <strong>In Stock</strong>
                    </div>
                  </div>
                  <div class="description">
                    <p>Lorem ipsum dolor ut sit ame dolore  adipiscing elit, sed nonumy nibh sed euismod laoreet dolore magna aliquarm erat volutpat 
Nostrud duis molestie at dolore.</p>
                  </div>
                  <div class="product-page-options">
                    <div class="pull-left">
                      <label class="control-label">Size:</label>
                      <select class="form-control input-sm">
                        <option>L</option>
                        <option>M</option>
                        <option>XL</option>
                      </select>
                    </div>
                    <div class="pull-left">
                      <label class="control-label">Color:</label>
                      <select class="form-control input-sm">
                        <option>Red</option>
                        <option>Blue</option>
                        <option>Black</option>
                      </select>
                    </div>
                  </div>
                  <div class="product-page-cart">
                    <div class="product-quantity">
                        <input id="product-quantity" type="text" value="1" readonly name="product-quantity" class="form-control input-sm">
                    </div>
                    <button class="btn btn-primary" type="submit">Add to cart</button>
                    <a href="shop-item.html" class="btn btn-default">More details</a>
                  </div>
                </div>

                <div class="sticker sticker-sale"></div>
              </div>
            </div>
    </div>
    <!-- END fast view of a product -->

    <%@ include file="inc/footer_script.jsp" %>
    <script type="text/javascript">
        jQuery(document).ready(function() {
            Layout.init();    
            Layout.initOWL();
            Layout.initImageZoom();
            Layout.initTouchspin();
            Layout.initTwitter();
            
            Layout.initFixHeaderWithPreHeader();
            Layout.initNavScrolling();
        });
        
        
        
		       
    </script>
    <!-- END PAGE LEVEL JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>