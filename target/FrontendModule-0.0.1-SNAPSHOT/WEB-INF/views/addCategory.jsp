<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<s:url value="/resources/css" var="mainCss" />
<c:url value="/resources/css/" var="css" />
<c:url value="/resources/js/" var="js" />
<title>Shopin A Ecommerce Category Flat Bootstrap Responsive Website Template | Login :: w3layouts</title>
<link href="${mainCss}/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- Custom Theme files -->
<!--theme-style-->
<link href="${mainCss}/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Shopin Responsive web template, Bootstrap Web Templates, Flat Web Templates, AndroId Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--theme-style-->
<link href="${mainCss}/style4.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<script src="${js}/jquery.min.js"></script>
<!--- start-rate---->
<script src="${js}/jstarbox.js"></script>
	<link rel="stylesheet" href="${mainCss}/jstarbox.css" type="text/css" media="screen" charset="utf-8" />
		<script type="text/javascript">
			jQuery(function() {
			jQuery('.starbox').each(function() {
				var starbox = jQuery(this);
					starbox.starbox({
					average: starbox.attr('data-start-value'),
					changeable: starbox.hasClass('unchangeable') ? false : starbox.hasClass('clickonce') ? 'once' : true,
					ghosting: starbox.hasClass('ghosting'),
					autoUpdateAverage: starbox.hasClass('autoupdate'),
					buttons: starbox.hasClass('smooth') ? false : starbox.attr('data-button-count') || 5,
					stars: starbox.attr('data-star-count') || 5
					}).bind('starbox-value-changed', function(event, value) {
					if(starbox.hasClass('random')) {
					var val = Math.random();
					starbox.next().text(' '+val);
					return val;
					} 
				})
			});
		});
		</script>
<!---//End-rate---->
<style type="text/css">

.header-top {
    background-color: #a40000;
	padding: 0.3em 0;
}
</style>

</head>
<body>
<%@include file="navbar.jsp" %>
<!--banner-->
<div class="banner-top">
	<div class="container">
		<h1>Add Category</h1>
		<em></em>
		<h2><a href="${pageContext.request.contextPath}/">Home</a><label>/</label>Add Category</h2>
	</div>
</div>
<!--login-->
<div class="container">
		<!-- <div class="login"> -->
		
		
	<div class="page-header">
        <h3>Add Category</h3>
      </div>	
		
		
	<div class="bs-example" data-example-id="simple-horizontal-form">
    <form:form action="${pageContext.request.contextPath}/category" method="post" modelAttribute="categoryForm"  class="form-horizontal">
    
    
      <div class="form-group">
        <label for="inputEmail3" class="col-sm-2 control-label">Name of Category</label>
        <div class="col-sm-4">
        <form:hidden path="catId"/>
          <form:input  path="categoryName" class="form-control" placeholder="Category name"/>
        </div>
      </div>
      
      <div class="form-group">
        <label for="inputPassword3" class="col-sm-2 control-label">Enter date of addition</label>
        <div class="col-sm-4">
		<form:input type="date" path="categoryDate" class="form-control"  placeholder="Enter date" required=""/>
        </div>
        </div>
        
        <div class="form-group">
        <label for="inputEmail3" class="col-sm-2 control-label">Name of Admin</label>
        <div class="col-sm-4">
          <form:input path="categoryAddedBy" class="form-control"  placeholder="Name" required=""/>
        </div>
      </div>
       
      
      <div class="form-group">
        <label for="inputEmail3" class="col-sm-2 control-label">Description</label>
        <div class="col-sm-4">
          <form:textarea path="categoryDescription" class="form-control"  rows="3"
									placeholder="Enter description" style="width:200px;" />
        </div>
      </div>
      
   <form:button type="submit" class="btn btn-lg btn-info" style="margin-left:200px;">Done!</form:button>
       
      </form:form>
      </div>
		</div>	
		

			<!--brand-->
		<div class="container">
			<div class="brand">
				<div class="col-md-3 brand-grid">
					<img src="${pageContext.request.contextPath}/resources/images/ic.png" class="img-responsive" alt="">
				</div>
				<div class="col-md-3 brand-grid">
					<img src="${pageContext.request.contextPath}/resources/images/ic1.png" class="img-responsive" alt="">
				</div>
				<div class="col-md-3 brand-grid">
					<img src="${pageContext.request.contextPath}/resources/images/ic2.png" class="img-responsive" alt="">
				</div>
				<div class="col-md-3 brand-grid">
					<img src="${pageContext.request.contextPath}/resources/images/ic3.png" class="img-responsive" alt="">
				</div>
				<div class="clearfix"></div>
			</div>
			</div>
			<!--//brand-->
		
	<!--//content-->
		<!--//footer-->
	<div class="footer">
	<div class="footer-middle">
				<div class="container">
					<div class="col-md-3 footer-middle-in">
						<a href="index.html"><img src="images/log.png" alt=""></a>
						<p>Suspendisse sed accumsan risus. Curabitur rhoncus, elit vel tincidunt elementum, nunc urna tristique nisi, in interdum libero magna tristique ante. adipiscing varius. Vestibulum dolor lorem.</p>
					</div>
					
					<div class="col-md-3 footer-middle-in">
						<h6>Information</h6>
						<ul class=" in">
							<li><a href="404.html">About</a></li>
							<li><a href="contact.html">Contact Us</a></li>
							<li><a href="#">Returns</a></li>
							<li><a href="contact.html">Site Map</a></li>
						</ul>
						<ul class="in in1">
							<li><a href="#">Order History</a></li>
							<li><a href="wishlist.html">Wish List</a></li>
							<li><a href="login.html">Login</a></li>
						</ul>
						<div class="clearfix"></div>
					</div>
					<div class="col-md-3 footer-middle-in">
						<h6>Tags</h6>
						<ul class="tag-in">
							<li><a href="#">Lorem</a></li>
							<li><a href="#">Sed</a></li>
							<li><a href="#">Ipsum</a></li>
							<li><a href="#">Contrary</a></li>
							<li><a href="#">Chunk</a></li>
							<li><a href="#">Amet</a></li>
							<li><a href="#">Omnis</a></li>
						</ul>
					</div>
					<div class="col-md-3 footer-middle-in">
						<h6>Newsletter</h6>
						<span>Sign up for News Letter</span>
							<form>
								<input type="text" value="Enter your E-mail" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='Enter your E-mail';}">
								<input type="submit" value="Subscribe">	
							</form>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
			<div class="footer-bottom">
				<div class="container">
					<ul class="footer-bottom-top">
						<li><a href="#"><img src="${pageContext.request.contextPath}/resources/images/f1.png" class="img-responsive" alt=""></a></li>
						<li><a href="#"><img src="${pageContext.request.contextPath}/resources/images/f2.png" class="img-responsive" alt=""></a></li>
						<li><a href="#"><img src="${pageContext.request.contextPath}/resources/images/f3.png" class="img-responsive" alt=""></a></li>
					</ul>
					<p class="footer-class">&copy; 2016 Shopin. All Rights Reserved | Design by  <a href="http://w3layouts.com/" target="_blank">W3layouts</a> </p>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
		<!--//footer-->

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->

	<script src="${js}/simpleCart.min.js"> </script>
<!-- slide -->
<script src="${js}/bootstrap.min.js"></script>
 
</body>
</html>