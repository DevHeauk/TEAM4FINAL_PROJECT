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
                                Team
                            </h2>
                            <p class="carousel-subtitle-v2" data-animation="animated fadeInDown">
                                Team Options
                            </p>
                            <p class="carousel-subtitle-v3 margin-bottom-30" data-animation="animated fadeInUp">
                                Team Responsive
                            </p>
                            <a class="carousel-btn" href="${pageContext.request.contextPath }/team/team_list.do" data-animation="animated fadeInUp">See More Team</a>
                        </div>
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
            <!-- team -->
            <c:forEach var="tmp" items="${teamlist }" begin="0" end="7">
            	<div class="main-team-list">
                  <div class="product-item">
                    <div class="pi-img-wrapper">
                      <img src="${pageContext.request.contextPath }/upload/${tmp.saveFileName}" class="img-responsive" alt="Berry Lace Dress">
                      <div>
                        <a href="team/detail2.do?name=${tmp.name }" class="btn btn-default fancybox-button">View</a>
                      </div>
                    </div>
                    <div class="main-team-text">
	                    <h3 style="float: left; padding-top: 13px;"><a href="javascript:;"><strong>${tmp.name }</strong></a></h3>
	                    <ul class="blog-info" style="float: right;">
	                      <li><i style="color:blue" class="glyphicon glyphicon-triangle-top"></i> 승 ${tmp.win }</li>
	                      <li><i style="color:red" class="glyphicon glyphicon-triangle-bottom"></i> 패  ${tmp.lose}</li>                     
	                    </ul>	  
                    </div>
                  </div>
              	</div>   
            </c:forEach>                                                     
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
            <div class="owl-carousel owl-carousel4 main-prd-list" style="clear: both;">
              <c:forEach var="tmp" items="${list3 }">
                <div>
                	<div class="product-item">
	                  <div class="pi-img-wrapper">
	                    <img src="${pageContext.request.contextPath }/upload/${tmp.saveFileName}" class="img-responsive" alt="Berry Lace Dress">
	                    <div>
	                      <a href="${pageContext.request.contextPath }/upload/${tmp.saveFileName}" class="btn btn-default fancybox-button">Zoom</a>
	                      <a href="#product-pop-up${tmp.num }" class="btn btn-default fancybox-fast-view">View</a>
	                    </div>
	                  </div>
	                  <h3><a href="shop-item.html">${tmp.title }</a></h3>
	                  <div class="pi-price">${tmp.price }</div>
	                </div>
	            </div>
               </c:forEach>
               <c:forEach var="tmp" items="${list4 }">
                <div>
                	<div class="product-item">
	                  <div class="pi-img-wrapper">
	                    <img src="${pageContext.request.contextPath }/upload/${tmp.saveFileName}" class="img-responsive" alt="Berry Lace Dress">
	                    <div>
	                      <a href="${pageContext.request.contextPath }/upload/${tmp.saveFileName}" class="btn btn-default fancybox-button">Zoom</a>
	                      <a href="#product-pop-up${tmp.num }" class="btn btn-default fancybox-fast-view">View</a>
	                    </div>
	                  </div>
	                  <h3><a href="shop-item.html">${tmp.title }</a></h3>
	                  <div class="pi-price">${tmp.price }</div>
	                </div>
	            </div>
               </c:forEach>
               <c:forEach var="tmp" items="${list5 }">
                <div>
                	<div class="product-item">
	                  <div class="pi-img-wrapper">
	                    <img src="${pageContext.request.contextPath }/upload/${tmp.saveFileName}" class="img-responsive" alt="Berry Lace Dress">
	                    <div>
	                      <a href="${pageContext.request.contextPath }/upload/${tmp.saveFileName}" class="btn btn-default fancybox-button">Zoom</a>
	                      <a href="#product-pop-up${tmp.num }" class="btn btn-default fancybox-fast-view">View</a>
	                    </div>
	                  </div>
	                  <h3><a href="shop-item.html">${tmp.title }</a></h3>
	                  <div class="pi-price">${tmp.price }</div>
	                </div>
	            </div>
               </c:forEach>
            </div>
          </div>
              
                
            
          <!-- END CONTENT -->
        </div>
        <!-- END SIDEBAR & CONTENT -->

        <!-- BEGIN TWO PRODUCTS & PROMO -->
        <div class="row margin-bottom-35 ">
          <!-- BEGIN TWO PRODUCTS -->
          <div class="col-md-12 two-items-bottom-items">
            <h2>MATCHING</h2>
            <div class="owl-carousel owl-carousel2">             
             <c:forEach var="tmp" items="${matchlist }">            
		       	  <div class="row" style="width: 100%; text-align: center; background: #ffffff; padding-top: 20px; padding-left: 2.5%;">                                   	
		            <div class="col-md-4 col-sm-4 match-left">
		              <h2 style="text-align: center; padding-bottom: 10px; font-size: 22px;"><a href="team_detail.do" style="color: #0033cc;">${tmp.homeTeam }</a></h2>	                       
		              	<img src="${pageContext.request.contextPath }/upload/${tmp.saveFileName_H}" style="max-width: 115px; max-height: 64px; display: inline;"/>
		              <ul class="blog-info" style="text-align: center; padding-top: 10px;">
		                <li><i class="fa fa-calendar"></i> : ${tmp.matchDate }</li>
		             </ul>	                                   
		            </div>
		            <div class="col-md-4 col-sm-4 match-vs" style="text-align: center;;">
						<img src="${pageContext.request.contextPath}/assets/pages/img/main_vs.png" alt="" style="max-width: 100px; display: inline; margin: 50px 0 30px 0;"/><br />
						<a href="match/detail.do?awayTeam=${tmp.awayTeam}&homeTeam=${tmp.homeTeam}&num=${tmp.num}" class="btn btn-primary" style="color: #ffffff;">경기 보기</a><br /><br />                              
		            </div>	
		            
		            <div class="col-md-4 col-sm-4 match-right" >
		              <h2 style="text-align: center; padding-bottom: 10px; font-size: 22px;"><a href="team_detail.do" style="color: #f10025;">${tmp.awayTeam }</a></h2>	                       
		               	<img src="${pageContext.request.contextPath }/upload/${tmp.saveFileName_A}" style="max-width: 115px; max-height: 64px; display: inline;"/>
		              <ul class="blog-info" style="text-align: center; padding-top: 10px;">
		                <li style="#E84D1C"><i class="fa fa-calendar"></i> : ${tmp.ground }</li>                     
		              </ul>	                                   
		            </div>	   	                    	                                        
		          </div>
	          </c:forEach>  
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
    <c:forEach var="tmp" items="${list3 }">
       <div id="product-pop-up${tmp.num }" style="display: none; width: 700px;">
            <div class="product-page product-pop-up">
              <div class="row">
                <div class="col-md-6 col-sm-6 col-xs-3">
                  <div class="product-main-image">
                    <img src="${pageContext.request.contextPath }/upload/${tmp.saveFileName}" alt="Cool green dress with red bell" class="img-responsive">
                  </div>
                  <div class="product-other-images">
                    <a href="javascript:;"><img src="${pageContext.request.contextPath }/upload/${tmp.saveFileName}"></a>
                    
                  </div>
                </div>
                <div class="col-md-6 col-sm-6 col-xs-9">
                  <h1>${tmp.content }</h1>
                  <div class="price-availability-block clearfix">
                    <div class="price">
                      <strong><span>$</span>${tmp.price*0.9 }</strong>
                      <em>$<span>${tmp.price }</span></em>
                    </div>
                    <div class="availability">
                      Availability: <strong>In Stock</strong>
                    </div>
                  </div>
                  <div class="description">
                    <p>${tmp.content }</p>
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
                  </div>
                  <div class="product-page-cart">
                  <form action="cart.do">
                    <div class="product-quantity">
                    	<input type="hidden" name="num" value="${tmp.num }" />
                    	<input type="hidden" name="id" value="${id}" />
                        <input id="product-quantity" type="text" value="1" name="count" class="form-control input-sm">
                    </div>
                  	<button class="btn btn-primary" type="submit">구매하기</button>
                    <!--  <a href="cart.do?num=${tmp.num }&id=${id }"><button class="btn btn-primary" type="submit">구매 하기</button></a>-->
                    <a href="javascript:deleteCheck(${tmp.num })" class="btn btn-default">delete</a>
                    </form>
                  </div>
                </div>

                <div class="sticker sticker-sale"></div>
              </div>
            </div>
    	</div>
    </c:forEach>
    <c:forEach var="tmp" items="${list4 }" >
       <div id="product-pop-up${tmp.num }" style="display: none; width: 700px;">
            <div class="product-page product-pop-up">
              <div class="row">
                <div class="col-md-6 col-sm-6 col-xs-3">
                  <div class="product-main-image">
                    <img src="${pageContext.request.contextPath }/upload/${tmp.saveFileName}" alt="Cool green dress with red bell" class="img-responsive">
                  </div>
                  <div class="product-other-images">
                    <a href="javascript:;"><img src="${pageContext.request.contextPath }/upload/${tmp.saveFileName}"></a>
                    
                  </div>
                </div>
                <div class="col-md-6 col-sm-6 col-xs-9">
                  <h1>${tmp.content }</h1>
                  <div class="price-availability-block clearfix">
                    <div class="price">
                      <strong><span>$</span>${tmp.price*0.9 }</strong>
                      <em>$<span>${tmp.price }</span></em>
                    </div>
                    <div class="availability">
                      Availability: <strong>In Stock</strong>
                    </div>
                  </div>
                  <div class="description">
                    <p>${tmp.content }</p>
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
                  </div>
                  <div class="product-page-cart">
                  <form action="cart.do">
                    <div class="product-quantity">
                    	<input type="hidden" name="num" value="${tmp.num }" />
                    	<input type="hidden" name="id" value="${id}" />
                        <input id="product-quantity" type="text" value="1" name="count" class="form-control input-sm">
                    </div>
                  	<button class="btn btn-primary" type="submit">구매하기</button>
                    <!--  <a href="cart.do?num=${tmp.num }&id=${id }"><button class="btn btn-primary" type="submit">구매 하기</button></a>-->
                    <a href="javascript:deleteCheck(${tmp.num })" class="btn btn-default">delete</a>
                    </form>
                  </div>
                </div>

                <div class="sticker sticker-sale"></div>
              </div>
            </div>
    	</div>
    </c:forEach>

    <c:forEach var="tmp" items="${list5 }">
       <div id="product-pop-up${tmp.num }" style="display: none; width: 700px;">
            <div class="product-page product-pop-up">
              <div class="row">
                <div class="col-md-6 col-sm-6 col-xs-3">
                  <div class="product-main-image">
                    <img src="${pageContext.request.contextPath }/upload/${tmp.saveFileName}" alt="Cool green dress with red bell" class="img-responsive">
                  </div>
                  <div class="product-other-images">
                    <a href="javascript:;"><img src="${pageContext.request.contextPath }/upload/${tmp.saveFileName}"></a>
                  </div>
                </div>
                <div class="col-md-6 col-sm-6 col-xs-9">
                  <h1>${tmp.content }</h1>
                  <div class="price-availability-block clearfix">
                    <div class="price">
                      <strong><span>$</span>${tmp.price*0.9 }</strong>
                      <em>$<span>${tmp.price }</span></em>
                    </div>
                    <div class="availability">
                      Availability: <strong>In Stock</strong>
                    </div>
                  </div>
                  <div class="description">
                    <p>${tmp.content }</p>
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
                  </div>
                  <div class="product-page-cart">
                  <form action="cart.do">
                    <div class="product-quantity">
                    	<input type="hidden" name="num" value="${tmp.num }" />
                    	<input type="hidden" name="id" value="${id}" />
                        <input id="product-quantity" type="text" value="1" name="count" class="form-control input-sm">
                    </div>
                  	<button class="btn btn-primary" type="submit">구매하기</button>
                    <!--  <a href="cart.do?num=${tmp.num }&id=${id }"><button class="btn btn-primary" type="submit">구매 하기</button></a>-->
                    <a href="javascript:deleteCheck(${tmp.num })" class="btn btn-default">delete</a>
                    </form>
                  </div>
                </div>

                <div class="sticker sticker-sale"></div>
              </div>
            </div>
    	</div>
    </c:forEach>

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