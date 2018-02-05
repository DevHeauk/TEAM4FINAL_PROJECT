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
  <title>Men category | Metronic Shop UI</title>

  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

  <%@ include file="../inc/header_script.jsp" %>
</head>
<!-- Head END -->

<!-- Body BEGIN -->
<body class="ecommerce">
    <%@ include file="../inc/header.jsp" %>

    <div class="title-wrapper">
      <div class="container"><div class="container-inner">
        <h1><span>MEN</span> CATEGORY</h1>
        <em>Over 4000 Items are available here</em>
      </div></div>
    </div>

    <div class="main">
      <div class="container">
        <ul class="breadcrumb">
            <li><a href="index.do">Home</a></li>
            <li><a href="">Store</a></li>
            <li class="active">Men category</li>
        </ul>
        <!-- BEGIN SIDEBAR & CONTENT -->
        <div class="row margin-bottom-40">
          <!-- BEGIN SIDEBAR -->
          <div class="sidebar col-md-3 col-sm-5">
            <ul class="list-group margin-bottom-25 sidebar-menu">
              <li class="list-group-item clearfix"><a href="#;"><i class="fa fa-angle-right"></i>Shoes</a></li>
              <li class="list-group-item clearfix"><a href="#;"><i class="fa fa-angle-right"></i>Uniforms</a></li>
              <li class="list-group-item clearfix"><a href="#;"><i class="fa fa-angle-right"></i>Balls</a></li>
            </ul>

            <div class="sidebar-filter margin-bottom-25">
              <h2>Filter</h2>
              <h3>Availability</h3>
              <div class="checkbox-list">
                <label><input type="checkbox"> Not Available (3)</label>
                <label><input type="checkbox"> In Stock (26)</label>
              </div>

              <h3>Price</h3>
              <p>
                <label for="amount">Range:</label>
                <input type="text" id="amount" style="border:0; color:#f6931f; font-weight:bold;">
              </p>
              <div id="slider-range"></div>
            </div>

            <div class="sidebar-products clearfix">
              <h2>Bestsellers</h2>
              <div class="item">
                <a href="cart.do"><img src="${pageContext.request.contextPath}/assets/pages/img/products/k1.jpg" alt="Some Shoes in Animal with Cut Out"></a>
                <h3><a href="cart.do">Some Shoes in Animal with Cut Out</a></h3>
                <div class="price">$31.00</div>
              </div>
              <div class="item">
                <a href="cart.do"><img src="${pageContext.request.contextPath}/assets/pages/img/products/k4.jpg" alt="Some Shoes in Animal with Cut Out"></a>
                <h3><a href="cart.do">Some Shoes in Animal with Cut Out</a></h3>
                <div class="price">$23.00</div>
              </div>
              <div class="item">
                <a href="cart.do"><img src="${pageContext.request.contextPath}/assets/pages/img/products/k3.jpg" alt="Some Shoes in Animal with Cut Out"></a>
                <h3><a href="cart.do">Some Shoes in Animal with Cut Out</a></h3>
                <div class="price">$86.00</div>
              </div>
            </div>
          </div>
          <!-- END SIDEBAR -->
          <!-- BEGIN CONTENT -->
          <div class="col-md-9 col-sm-7">
            <div class="row list-view-sorting clearfix">
              <div class="col-md-2 col-sm-2 list-view">
                <a href="javascript:;"><i class="fa fa-th-large"></i></a>
                <a href="javascript:;"><i class="fa fa-th-list"></i></a>
              </div>
              <div class="pull-right">
           	  	<a href="upload_form.do"><button class="btn btn-primary">상품올리기</button></a>
           	  </div>
              <div class="col-md-10 col-sm-10">
                <div class="pull-right">
                  <label class="control-label">Show:</label>
                  <select class="form-control input-sm">
                    <option value="#?limit=24" selected="selected">24</option>
                    <option value="#?limit=25">25</option>
                    <option value="#?limit=50">50</option>
                    <option value="#?limit=75">75</option>
                    <option value="#?limit=100">100</option>
                  </select>
                </div>
                <div class="pull-right">
                  <label class="control-label">Sort&nbsp;By:</label>
                  <select class="form-control input-sm">
                    <option value="#?sort=p.sort_order&amp;order=ASC" selected="selected">Default</option>
                    <option value="#?sort=pd.name&amp;order=ASC">Name (A - Z)</option>
                    <option value="#?sort=pd.name&amp;order=DESC">Name (Z - A)</option>
                    <option value="#?sort=p.price&amp;order=ASC">Price (Low &gt; High)</option>
                    <option value="#?sort=p.price&amp;order=DESC">Price (High &gt; Low)</option>
                    <option value="#?sort=rating&amp;order=DESC">Rating (Highest)</option>
                    <option value="#?sort=rating&amp;order=ASC">Rating (Lowest)</option>
                    <option value="#?sort=p.model&amp;order=ASC">Model (A - Z)</option>
                    <option value="#?sort=p.model&amp;order=DESC">Model (Z - A)</option>
                  </select>
                </div>
              </div>
            </div>
            <!-- BEGIN PRODUCT LIST -->
            <div class="row product-list">            
               <c:forEach var="tmp" items="${list }" begin="0" end="8">
                    <!-- PRODUCT ITEM START -->
                    <div class="col-md-4 col-sm-6 col-xs-12">
                      <div class="product-item">
                        <div class="pi-img-wrapper">
                          <img src="${pageContext.request.contextPath }/upload/${tmp.saveFileName}" class="img-responsive" alt="Berry Lace Dress">
                          <div>
                            <a href="${pageContext.request.contextPath }/upload/${tmp.saveFileName}" class="btn btn-default fancybox-button">Zoom</a>
                            <a href="#product-pop-up${tmp.num }" class="btn btn-default fancybox-fast-view">View</a>
                          </div>
                        </div>
                        <h3><a href="shop-item.do?num=${tmp.num }">${tmp.title }</a></h3>
                        <div class="pi-price">${tmp.price }</div>
                        <a href="cart.do?num=${tmp.num }&&id=${id}&&count=1" class="btn btn-default add2cart">Add to cart</a>
                      </div>
                    </div>
                    <!-- PRODUCT ITEM END -->
               </c:forEach>
           </div>
            <!-- END PRODUCT LIST -->
            <!-- BEGIN PAGINATOR -->
            <div class="row">
              <div class="col-md-4 col-sm-4 items-info">Items 1 to 9 of 10 total</div>
              <div class="col-md-8 col-sm-8">
                <ul class="pagination pull-right">
                  <li><a href="javascript:;">&laquo;</a></li>
                  <li><a href="javascript:;">1</a></li>
                  <li><span>2</span></li>
                  <li><a href="javascript:;">3</a></li>
                  <li><a href="javascript:;">4</a></li>
                  <li><a href="javascript:;">5</a></li>
                  <li><a href="javascript:;">&raquo;</a></li>
                </ul>
              </div>
            </div>
            <!-- END PAGINATOR -->
          </div>
          <!-- END CONTENT -->
        </div>
        <!-- END SIDEBAR & CONTENT -->
      </div>
    </div>

    <%@ include file="../inc/footer.jsp" %>

    <!-- BEGIN fast view of a product -->
    <c:forEach var="tmp" items="${list }" begin="0" end="8">
       <div id="product-pop-up${tmp.num }" style="display: none; width: 700px;">
            <div class="product-page product-pop-up">
              <div class="row">
                <div class="col-md-6 col-sm-6 col-xs-3">
                  <div class="product-main-image">
                    <img src="${pageContext.request.contextPath }/upload/${tmp.saveFileName}" alt="Cool green dress with red bell" class="img-responsive">
                  </div>
                  <div class="product-other-images">
                    <a href="javascript:;" class="active"><img alt="Berry Lace Dress" src="${pageContext.request.contextPath }/upload/${tmp.saveFileName}"></a>
                    <a href="javascript:;"><img alt="Berry Lace Dress" src="../assets/pages/img/products/model4.jpg"></a>
                    <a href="javascript:;"><img alt="Berry Lace Dress" src="../assets/pages/img/products/model5.jpg"></a>
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
    <%@ include file="../inc/footer_script.jsp" %>
    <script type="text/javascript">
        jQuery(document).ready(function() {
            Layout.init();    
            Layout.initOWL();
            Layout.initTwitter();
            Layout.initImageZoom();
            Layout.initTouchspin();
            Layout.initUniform();
            Layout.initSliderRange();
            
            Layout.initFixHeaderWithPreHeader();
            Layout.initNavScrolling();            
        });
        
        function deleteCheck(num){
    		var isDelete=confirm("삭제 하시겠습니까?");
    		if(isDelete){
    			location.href="delete.do?num="+num;
    		}
    	}
    </script>
    <!-- END PAGE LEVEL JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>