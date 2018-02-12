   <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
    <!-- BEGIN TOP BAR -->
    <div class="pre-header">
        <div class="container">
            <div class="row">
                <!-- BEGIN TOP BAR LEFT PART -->
                <div class="col-md-6 col-sm-6 additional-shop-info">
                    <ul class="list-unstyled list-inline pull-left">
                        <li><i class="fa fa-phone"></i><span>Project Team 4</span></li>
                    </ul>
                </div>
                <!-- END TOP BAR LEFT PART -->
                <!-- BEGIN TOP BAR MENU -->
                <div class="col-md-6 col-sm-6 additional-nav">
                    <ul class="list-unstyled list-inline pull-right">
                    <c:choose>
                    	<c:when test="${empty id }">
	                        <li><a href="${pageContext.request.contextPath}/users/login_form.do">LogIn</a></li>
	                        <li><a href="${pageContext.request.contextPath}/users/signup_form.do">SignUp</a></li>
                        </c:when>
						<c:otherwise>
	                        <li><a href="${pageContext.request.contextPath}/users/info.do">MyPage</a></li>
	                        <li><a href="${pageContext.request.contextPath}/users/logout.do">Logout</a></li>						
						</c:otherwise>							
                    </c:choose>
<<<<<<< HEAD
	                         <li><a href="${pageContext.request.contextPath}/shop/order.do?id=${id}">Order</a></li>	                    
=======
	                         <li><a href="${pageContext.request.contextPath}/shop/order.do?id=${id}">Order</a></li>
	                         <li><a href="${pageContext.request.contextPath}/shop/cartlist.do?id=${id }">Cart</a></li>	                    
>>>>>>> heaukjun
                    </ul>
                </div>
                
                <!-- END TOP BAR MENU -->
            </div>
        </div>        
    </div>
    <!-- END TOP BAR -->

    <!-- BEGIN HEADER -->
    <div class="header">
      <div class="container">
        <a class="site-logo" href="${pageContext.request.contextPath}/home.do"><img src="${pageContext.request.contextPath}/assets/corporate/img/logos/logo-game-red.png" alt="Metronic Shop UI"></a>

        <a href="javascript:void(0);" class="mobi-toggler"><i class="fa fa-bars"></i></a>

        <!-- BEGIN NAVIGATION -->
        <div class="header-navigation">
          <ul>
            <li><a href="${pageContext.request.contextPath}/team/team_list.do">Team</a></li>
            <li><a href="${pageContext.request.contextPath}/match/match_list.do">MATCH</a></li>
            <li><a href="${pageContext.request.contextPath}/shop/shop-product-list.do">SHOP</a></li>
            <li><a href="${pageContext.request.contextPath}/board/gallery.do">Gallery</a></li>           
          </ul>
        </div>
        <!-- END NAVIGATION -->
      </div>
    </div>
    <!-- Header END -->