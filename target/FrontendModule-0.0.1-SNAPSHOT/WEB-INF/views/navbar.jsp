<div class="header">
<div class="container">
		<div class="head">
			<div class=" logo">
				<a href="index.html"><img src="${pageContext.request.contextPath}/resources/images/logo.png" alt=""></a>	
			</div>
		</div>
	</div>
	<div class="header-top">
		<div class="container">
		<div class="col-sm-5 col-md-offset-2  header-login">
					<ul >
					<li>Welcome: ${pageContext.request.userPrincipal.name}</li>
						<li><a href="${pageContext.request.contextPath}/login">Login</a></li>
						<li><a href="<c:url value='/logout'></c:url>">Logout</a></li>
						<li><a href="${pageContext.request.contextPath}/register">Register</a></li>
						<li><a href="checkout.html">Checkout</a></li>
					</ul>
				</div>
				
			<div class="col-sm-5 header-social">		
					<ul >
						<li><a href="#"><i></i></a></li>
						<li><a href="#"><i class="ic1"></i></a></li>
						<li><a href="#"><i class="ic2"></i></a></li>
						<li><a href="#"><i class="ic3"></i></a></li>
						<li><a href="#"><i class="ic4"></i></a></li>
					</ul>
					
			</div>
				<div class="clearfix"> </div>
		</div>
		</div>
		
		<div class="container">
		
			<div class="head-top">
			
		 <div class="col-sm-8 col-md-offset-2 h_menu4">
				<nav class="navbar nav_bottom" role="navigation">
 
 <!-- Brand and toggle get grouped for better mobile display -->
  <div class="navbar-header nav_2">
      <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
     
   </div> 
   <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
        <ul class="nav navbar-nav nav_1">
            <li><a class="color" href="${pageContext.request.contextPath}/">Home</a></li>
            <li class="dropdown mega-dropdown active">
			    <a class="color1" href="#" class="dropdown-toggle" data-toggle="dropdown">Admin Actions<span class="caret"></span></a>				
				<div class="dropdown-menu ">
                    <div class="menu-top">
						<div class="col1">
							<div class="h_nav">
								<h4>Submenu1</h4>
									<ul>
										<li><a href="${pageContext.request.contextPath}/admin/addProduct">Add Product</a></li>
										<li><a href="${pageContext.request.contextPath}/admin/category">Add Category</a></li>
										<li><a href="${pageContext.request.contextPath}/admin/supplier">Add Supplier</a></li>
										<li><a href="${pageContext.request.contextPath}/admin/productlist">View Product List</a></li>
										<li><a href="${pageContext.request.contextPath}/admin/catlist">View Category List</a></li>
										<li><a href="${pageContext.request.contextPath}/admin/suplist">View Supplier List</a></li>
										
									</ul>	
							</div>							
						</div>
						</div>
						</div>
						</li>
    		<li class="dropdown mega-dropdown active">
			    <a class="color1" href="#" class="dropdown-toggle" data-toggle="dropdown">Women<span class="caret"></span></a>				
				<div class="dropdown-menu ">
                    <div class="menu-top">
						<div class="col1">
							<div class="h_nav">
								<h4>Submenu1</h4>
									<ul>
										<li><a href="product.html"></a></li>
										<li><a href="product.html">Bags</a></li>
										<li><a href="product.html">Caps & Hats</a></li>
										<li><a href="product.html">Hoodies & Sweatshirts</a></li>
										
									</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>Submenu2</h4>
								<ul>
										<li><a href="product.html">Jackets & Coats</a></li>
										<li><a href="product.html">Jeans</a></li>
										<li><a href="product.html">Jewellery</a></li>
										<li><a href="product.html">Jumpers & Cardigans</a></li>
										<li><a href="product.html">Leather Jackets</a></li>
										<li><a href="product.html">Long Sleeve T-Shirts</a></li>
									</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>Submenu3</h4>
									<ul>
										<li><a href="product.html">Shirts</a></li>
										<li><a href="product.html">Shoes, Boots & Trainers</a></li>
										<li><a href="product.html">Sunglasses</a></li>
										<li><a href="product.html">Sweatpants</a></li>
										<li><a href="product.html">Swimwear</a></li>
										<li><a href="product.html">Trousers & Chinos</a></li>
										
									</ul>	
								
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>Submenu4</h4>
								<ul>
									<li><a href="product.html">T-Shirts</a></li>
									<li><a href="product.html">Underwear & Socks</a></li>
									<li><a href="product.html">Vests</a></li>
									<li><a href="product.html">Jackets & Coats</a></li>
									<li><a href="product.html">Jeans</a></li>
									<li><a href="product.html">Jewellery</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1 col5">
						<img src="${pageContext.request.contextPath}/resources/images/me.png" class="img-responsive" alt="">
						</div>
						<div class="clearfix"></div>
					</div>                  
				</div>				
			</li>
			<li class="dropdown mega-dropdown active">
			    <a class="color2" href="#" class="dropdown-toggle" data-toggle="dropdown">Men<span class="caret"></span></a>				
				<div class="dropdown-menu mega-dropdown-menu">
                    <div class="menu-top">
						<div class="col1">
							<div class="h_nav">
								<h4>Submenu1</h4>
									<ul>
										<li><a href="product.html">Accessories</a></li>
										<li><a href="product.html">Bags</a></li>
										<li><a href="product.html">Caps & Hats</a></li>
										<li><a href="product.html">Hoodies & Sweatshirts</a></li>
										
									</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>Submenu2</h4>
								<ul>
										<li><a href="product.html">Jackets & Coats</a></li>
										<li><a href="product.html">Jeans</a></li>
										<li><a href="product.html">Jewellery</a></li>
										<li><a href="product.html">Jumpers & Cardigans</a></li>
										<li><a href="product.html">Leather Jackets</a></li>
										<li><a href="product.html">Long Sleeve T-Shirts</a></li>
									</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>Submenu3</h4>
								
<ul>
										<li><a href="product.html">Shirts</a></li>
										<li><a href="product.html">Shoes, Boots & Trainers</a></li>
										<li><a href="product.html">Sunglasses</a></li>
										<li><a href="product.html">Sweatpants</a></li>
										<li><a href="product.html">Swimwear</a></li>
										<li><a href="product.html">Trousers & Chinos</a></li>
										
									</ul>	
								
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>Submenu4</h4>
								<ul>
									<li><a href="product.html">T-Shirts</a></li>
									<li><a href="product.html">Underwear & Socks</a></li>
									<li><a href="product.html">Vests</a></li>
									<li><a href="product.html">Jackets & Coats</a></li>
									<li><a href="product.html">Jeans</a></li>
									<li><a href="product.html">Jewellery</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1 col5">
						<img src="${pageContext.request.contextPath}/resources/images/me1.png" class="img-responsive" alt="">
						</div>
						<div class="clearfix"></div>
					</div>                  
				</div>				
			</li>
			<li><a class="color3" href="product.html">Sale</a></li>
			<li><a class="color4" href="404.html">About</a></li>
            <li><a class="color5" href="typo.html">Short Codes</a></li>
            <li ><a class="color6" href="contact.html">Contact</a></li>
        </ul>
     </div><!-- /.navbar-collapse -->

</nav>
			</div>
			<div class="col-sm-2 search-right">
				<ul class="heart">
				<li>
				<a href="wishlist.html" >
				<span class="glyphicon glyphicon-heart" aria-hidden="true"></span>
				</a></li>
				<li><a class="play-icon popup-with-zoom-anim" href="#small-dialog"><i class="glyphicon glyphicon-search"> </i></a></li>
					</ul>
					<div class="cart box_1">
						<a href="checkout.html">
						<h3> <div class="total">
							<span class="simpleCart_total"></span></div>
							<img src="${pageContext.request.contextPath}/resources/images/cart.png" alt=""/></h3>
						</a>
						<p><a href="javascript:;" class="simpleCart_empty">Empty Cart</a></p>

					</div>
					<div class="clearfix"> </div>
					
						<!----->

						<!---pop-up-box---->					  
			<link href="${mainCss}/popuo-box.css" rel="stylesheet" type="text/css" media="all"/>
			<script src="${js}/jquery.magnific-popup.js" type="text/javascript"></script>
			<!---//pop-up-box---->
			<div id="small-dialog" class="mfp-hide">
				<div class="search-top">
					<div class="login-search">
						<input type="submit" value="">
						<input type="text" value="Search.." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search..';}">		
					</div>
					<p>Shopin</p>
				</div>				
			</div>
			
		 <script>
			$(document).ready(function() {
			$('.popup-with-zoom-anim').magnificPopup({
			type: 'inline',
			fixedContentPos: false,
			fixedBgPos: true,
			overflowY: 'auto',
			closeBtnInside: true,
			preloader: false,
			midClick: true,
			removalDelay: 300,
			mainClass: 'my-mfp-zoom-in'
			});
																						
			});
		</script>		
						<!----->
			</div>
			
			
			<div class="clearfix"></div>
		</div>	
	</div>	
</div>