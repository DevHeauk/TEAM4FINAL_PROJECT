    <!-- BEGIN TOP BAR -->
    <div class="pre-header">
        <div class="container">
            <div class="row">
                <!-- BEGIN TOP BAR LEFT PART -->
                <div class="col-md-6 col-sm-6 additional-shop-info">
                    <ul class="list-unstyled list-inline">
                        <li><i class="fa fa-phone"></i><span>+1 456 6717</span></li>
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
	                        <li><a href="${pageContext.request.contextPath}/shop/order.do">Order</a></li>	                    
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

        <!-- BEGIN CART -->
        <div class="top-cart-block">
          <div class="top-cart-info">
            <a href="javascript:void(0);" class="top-cart-info-count">3 items</a>
            <a href="javascript:void(0);" class="top-cart-info-value">$1260</a>
          </div>
          <a href="${pageContext.request.contextPath}/shop/cart.do"><i class="fa fa-shopping-cart"></i></a>
                               
        </div>
        <!--END CART -->

        <!-- BEGIN NAVIGATION -->
        <div class="header-navigation">
          <ul>
            <li><a href="${pageContext.request.contextPath}/team/team_list.do">Team</a></li>
            <li><a href="javascript:;">MATCH</a></li>
            <li><a href="javascript:;">Ranking</a></li>
            <li><a href="${pageContext.request.contextPath}/shop/product.do">SHOP</a></li>
            <li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href="javascript:;">Board</a>
              <ul class="dropdown-menu">
                <li><a href="${pageContext.request.contextPath}/board/faq.do">FAQ</a></li>
                <li><a href="${pageContext.request.contextPath}/board/gallery.do">Gallery</a></li>
                <li><a href="javascript:;">Free</a></li>
              </ul>
            </li>
            <!-- BEGIN TOP SEARCH -->
            <li class="menu-search">
              <span class="sep"></span>
              <i class="fa fa-search search-btn"></i>
              <div class="search-box">
                <form action="#">
                  <div class="input-group">
                    <input type="text" placeholder="Search" class="form-control">
                    <span class="input-group-btn">
                      <button class="btn btn-primary" type="submit">Search</button>
                    </span>
                  </div>
                </form>
              </div> 
            </li>
            <!-- END TOP SEARCH -->
          </ul>
        </div>
        <!-- END NAVIGATION -->
      </div>
    </div>
    <!-- Header END -->