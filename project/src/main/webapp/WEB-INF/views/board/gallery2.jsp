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
  <title>Portfolio 4 Column | Metronic Frontend</title>

  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    
  <%@ include file="../inc/header_script.jsp" %>
  <link href="${pageContext.request.contextPath}/assets/pages/css/portfolio.css" rel="stylesheet">  
</head>
<!-- Head END -->

<!-- Body BEGIN -->
<body class="ecommerce">
    <%@ include file="../inc/header.jsp" %>

    <div class="main">
      <div class="container">
        <ul class="breadcrumb">
            <li><a href="index.html">Home</a></li>
            <li><a href="javascript:;">Portfolio</a></li>
            <li class="active">Portfolio 4 Column</li>
        </ul>
        <!-- BEGIN SIDEBAR & CONTENT -->
        <div class="row margin-bottom-40">
          <!-- BEGIN CONTENT -->
          <div class="col-md-12 col-sm-12">
            <h1>Portfolio 4 Column</h1>
            <div class="content-page">
                <div class="filter-v1">
                  <ul class="mix-filter">
                    <li data-filter="all" class="filter active">All</li>
                    <li data-filter="category_1" class="filter">UI Design</li>
                    <li data-filter="category_2" class="filter">Web Development</li>
                    <li data-filter="category_3" class="filter">Photography</li>
                    <li data-filter="category_3 category_1" class="filter">Wordpress and Logo</li>
                  </ul>
	              <div class="row mix-grid thumbnails">
	                  <div class="col-md-3 col-sm-4 mix category_1 mix_all" style="display: block; opacity: 1; ">
	                    <div class="mix-inner">
	                       <img alt="" src="${pageContext.request.contextPath}/assets/pages/img/works/img1.jpg" class="img-responsive">
	                       <div class="mix-details">
	                          <h4>Cascusamus et iusto odio</h4>
	                          <a class="mix-link"><i class="fa fa-link"></i></a>
	                          <a data-rel="fancybox-button" title="Project Name" href="${pageContext.request.contextPath}/assets/pages/img/works/img1.jpg" class="mix-preview fancybox-button"><i class="fa fa-search"></i></a>
	                       </div>           
	                    </div>                       
	                  </div>
	                  <div class="col-md-3 col-sm-4 mix category_2 mix_all" style="display: block; opacity: 1; ">
	                       <div class="mix-inner">
	                          <img alt="" src="${pageContext.request.contextPath}/assets/pages/img/works/img2.jpg" class="img-responsive">
	                          <div class="mix-details">
	                             <h4>Cascusamus et iusto accusamus</h4>
	                             <a class="mix-link"><i class="fa fa-link"></i></a>
	                             <a data-rel="fancybox-button" title="Project Name" href="${pageContext.request.contextPath}/assets/pages/img/works/img2.jpg" class="mix-preview fancybox-button"><i class="fa fa-search"></i></a>
	                          </div>               
	                       </div>                    
	                  </div>
	                  <div class="col-md-3 col-sm-4 mix category_3 mix_all" style="display: block; opacity: 1; ">
	                       <div class="mix-inner">
	                          <img alt="" src="${pageContext.request.contextPath}/assets/pages/img/works/img3.jpg" class="img-responsive">
	                          <div class="mix-details">
	                             <h4>Cascusamus et iusto accusamus</h4>
	                             <a class="mix-link"><i class="fa fa-link"></i></a>
	                             <a data-rel="fancybox-button" title="Project Name" href="${pageContext.request.contextPath}/assets/pages/img/works/img3.jpg" class="mix-preview fancybox-button"><i class="fa fa-search"></i></a>
	                          </div>              
	                      </div>      
	                  </div>
	                  <div class="col-md-3 col-sm-4 mix category_1 category_2 mix_all" style="display: block; opacity: 1; ">
	                       <div class="mix-inner">
	                         <img alt="" src="${pageContext.request.contextPath}/assets/pages/img/works/img4.jpg" class="img-responsive">
	                         <div class="mix-details">
	                             <h4>Cascusamus et iusto accusamus</h4>
	                             <a class="mix-link"><i class="fa fa-link"></i></a>
	                             <a data-rel="fancybox-button" title="Project Name" href="${pageContext.request.contextPath}/assets/pages/img/works/img4.jpg" class="mix-preview fancybox-button"><i class="fa fa-search"></i></a>                            
	                         </div>                  
	                      </div>                      
	                  </div>
	                  <div class="col-md-3 col-sm-4 mix category_2 category_1 mix_all" style="display: block; opacity: 1; ">
	                    <div class="mix-inner">
	                      <img alt="" src="${pageContext.request.contextPath}/assets/pages/img/works/img5.jpg" class="img-responsive">
	                      <div class="mix-details">
	                          <h4>Cascusamus et iusto accusamus</h4>
	                          <a class="mix-link"><i class="fa fa-link"></i></a>
	                          <a data-rel="fancybox-button" title="Project Name" href="${pageContext.request.contextPath}/assets/pages/img/works/img5.jpg" class="mix-preview fancybox-button"><i class="fa fa-search"></i></a>                            
	                      </div>     
	                      </div>                                   
	                  </div>
	                  <div class="col-md-3 col-sm-4 mix category_1 category_2 mix_all" style="display: block; opacity: 1; ">
	                    <div class="mix-inner">
	                      <img alt="" src="${pageContext.request.contextPath}/assets/pages/img/works/img6.jpg" class="img-responsive">
	                      <div class="mix-details">
	                          <h4>Cascusamus et iusto accusamus</h4>
	                          <a class="mix-link"><i class="fa fa-link"></i></a>
	                          <a data-rel="fancybox-button" title="Project Name" href="${pageContext.request.contextPath}/assets/pages/img/works/img6.jpg" class="mix-preview fancybox-button"><i class="fa fa-search"></i></a>                            
	                      </div>     
	                      </div>                                   
	                  </div>
	                  <div class="col-md-3 col-sm-4 mix category_2 category_3 mix_all" style="display: block; opacity: 1; ">
	                    <div class="mix-inner">
	                      <img alt="" src="${pageContext.request.contextPath}/assets/pages/img/works/img1.jpg" class="img-responsive">
	                      <div class="mix-details">
	                          <h4>Cascusamus et iusto accusamus</h4>
	                          <a class="mix-link"><i class="fa fa-link"></i></a>
	                          <a data-rel="fancybox-button" title="Project Name" href="${pageContext.request.contextPath}/assets/pages/img/works/img1.jpg" class="mix-preview fancybox-button"><i class="fa fa-search"></i></a>                            
	                      </div>    
	                      </div>                                    
	                  </div>
	                  <div class="col-md-3 col-sm-4 mix category_1 category_2 mix_all" style="display: block; opacity: 1; ">
	                    <div class="mix-inner">
	                      <img alt="" src="${pageContext.request.contextPath}/assets/pages/img/works/img2.jpg" class="img-responsive">
	                      <div class="mix-details">
	                          <h4>Cascusamus et iusto accusamus</h4>
	                          <a class="mix-link"><i class="fa fa-link"></i></a>
	                          <a data-rel="fancybox-button" title="Project Name" href="${pageContext.request.contextPath}/assets/pages/img/works/img2.jpg" class="mix-preview fancybox-button"><i class="fa fa-search"></i></a>                            
	                      </div>   
	                      </div>                                     
	                  </div>
	                  <div class="col-md-3 col-sm-4 mix category_3 mix_all" style="display: block; opacity: 1; ">
	                    <div class="mix-inner">
	                      <img alt="" src="${pageContext.request.contextPath}/assets/pages/img/works/img4.jpg" class="img-responsive">
	                      <div class="mix-details">
	                          <h4>Cascusamus et iusto accusamus</h4>
	                          <a class="mix-link"><i class="fa fa-link"></i></a>
	                          <a data-rel="fancybox-button" title="Project Name" href="${pageContext.request.contextPath}/assets/pages/img/works/img4.jpg" class="mix-preview fancybox-button"><i class="fa fa-search"></i></a>                            
	                      </div>    
	                      </div>                                    
	                  </div>
	                  <div class="col-md-3 col-sm-4 mix category_1 mix_all" style="display: block; opacity: 1; ">
	                    <div class="mix-inner">
	                      <img alt="" src="${pageContext.request.contextPath}/assets/pages/img/works/img3.jpg" class="img-responsive">
	                      <div class="mix-details">
	                          <h4>Cascusamus et iusto accusamus</h4>
	                          <a class="mix-link"><i class="fa fa-link"></i></a>
	                          <a data-rel="fancybox-button" title="Project Name" href="${pageContext.request.contextPath}/assets/pages/img/works/img3.jpg" class="mix-preview fancybox-button"><i class="fa fa-search"></i></a>
	                      </div> 
	                      </div>                                       
	                  </div>
	              </div>
              </div>
            </div>
          </div>
          <!-- END CONTENT -->
        </div>
        <!-- BEGIN SIDEBAR & CONTENT -->
      </div>
    </div>
    <%@ include file="../inc/footer.jsp" %>
    
    <%@ include file="../inc/footer_script.jsp" %>
    <script src="${pageContext.request.contextPath}/assets/pages/scripts/portfolio.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/assets/plugins/jquery-mixitup/jquery.mixitup.min.js" type="text/javascript"></script>        
    <script type="text/javascript">
        jQuery(document).ready(function() {
            Layout.init();
            Layout.initTwitter();
            Portfolio.init();
            
            Layout.initFixHeaderWithPreHeader();
            Layout.initNavScrolling();              
        });
    </script>
    <!-- END PAGE LEVEL JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>