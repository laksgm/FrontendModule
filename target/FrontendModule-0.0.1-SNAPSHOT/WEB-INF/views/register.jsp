<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<s:url value="/resources/css" var="mainCss" />
<c:url value="/resources/css/" var="css" />
<c:url value="/resources/js/" var="js" />
<title>Shopin A Ecommerce Category Flat Bootstrap Responsive
	Website Template | Register :: w3layouts</title>
<link href="${mainCss}/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<!-- Custom Theme files -->
<!--theme-style-->
<link href="${mainCss}/style.css" rel="stylesheet" type="text/css"
	media="all" />
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Shopin Responsive web template, Bootstrap Web Templates, Flat Web Templates, AndroId Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript">
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 


</script>
<!--theme-style-->
<link href="${mainCss}/style4.css" rel="stylesheet" type="text/css"
	media="all" />
<!--//theme-style-->
<script src="${js}/jquery.min.js"></script>
<!--- start-rate---->
<script src="${js}/jstarbox.js"></script>
<link rel="stylesheet" href="${mainCss}/jstarbox.css" type="text/css"
	media="screen" charset="utf-8" />
<script type="text/javascript">
	jQuery(function() {
		jQuery('.starbox')
				.each(
						function() {
							var starbox = jQuery(this);
							starbox
									.starbox(
											{
												average : starbox
														.attr('data-start-value'),
												changeable : starbox
														.hasClass('unchangeable') ? false
														: starbox
																.hasClass('clickonce') ? 'once'
																: true,
												ghosting : starbox
														.hasClass('ghosting'),
												autoUpdateAverage : starbox
														.hasClass('autoupdate'),
												buttons : starbox
														.hasClass('smooth') ? false
														: starbox
																.attr('data-button-count') || 5,
												stars : starbox
														.attr('data-star-count') || 5
											})
									.bind(
											'starbox-value-changed',
											function(event, value) {
												if (starbox.hasClass('random')) {
													var val = Math.random();
													starbox.next().text(
															' ' + val);
													return val;
												}
											})
						});
	});
</script>
<!---//End-rate---->
</head>
<body>
<%@include file="navbar.jsp" %>
	<!--banner-->
	<div class="banner-top">
		<div class="container">
			<h1>Register</h1>
			<em></em>
			<h2>
				<a href="${pageContext.request.contextPath}/">Home</a><label>/</label>Register
			</h2>
		</div>
	</div>
	<!--login-->
	<div class="container">
		<div class="login">
		<h3>${error}</h3>
			<form:form method="POST" action="${pageContext.request.contextPath}/register" modelAttribute="userForm">
				<div class="col-md-6 login-do">
					<br>
					<s:bind path="firstName">
						<form:errors path="firstName" cssClass="err" />
						<div class="login-mail">
							<form:input path="firstName" type="text" placeholder="Firstname"
								required="" />
							<i class="glyphicon glyphicon-user"></i>
						</div>
					</s:bind>

					<s:bind path="lastName">
					<form:errors path="lastName" cssClass="err" />
						<div class="login-mail">
							<form:input path="lastName" type="text" placeholder="Lastname"
								required="" />
							<i class="glyphicon glyphicon-phone"></i>
						</div>
					</s:bind>

					<s:bind path="email">
					
						<div class="login-mail">
						<form:errors path="email" cssClass="err" />
							<form:input path="email" type="text" placeholder="Email"
								required="" />
							<i class="glyphicon glyphicon-envelope"></i>
						</div>
					</s:bind>

					<s:bind path="username">
						<div class="login-mail">
						<form:errors path="username" cssClass="err" />
							<form:input path="username" type="text" placeholder="Username"
								required="" />
							<i class="glyphicon glyphicon-envelope"></i>
						</div>
					</s:bind>

					<s:bind path="password">
						<div class="login-mail">
						<form:errors path="password" cssClass="err" />
							<form:input path="password" type="password"
								placeholder="Password" required="" />
							<i class="glyphicon glyphicon-lock"></i>
						</div>
					</s:bind>

					<a class="news-letter " href="#"> <label class="checkbox1"><input
							type="checkbox" name="checkbox"><i> </i>Forget Password</label>
					</a> <label class="hvr-skew-backward"> <input type="submit"
						value="Submit">
					</label>

				</div>
				<div class="col-md-6 login-right">
					<h3>Completely Free Account</h3>

					<p>Pellentesque neque leo, dictum sit amet accumsan non,
						dignissim ac mauris. Mauris rhoncus, lectus tincidunt tempus
						aliquam, odio libero tincidunt metus, sed euismod elit enim ut mi.
						Nulla porttitor et dolor sed condimentum. Praesent porttitor lorem
						dui, in pulvinar enim rhoncus vitae. Curabitur tincidunt, turpis
						ac lobortis hendrerit, ex elit vestibulum est, at faucibus erat
						ligula non neque.</p>
					<a href="login.html" class="hvr-skew-backward">Login</a>

				</div>

				<div class="clearfix"></div>
			</form:form>
		</div>

	</div>

	<!--//login-->

	<!--brand-->
	<div class="container">
		<div class="brand">
			<div class="col-md-3 brand-grid">
				<img src="images/ic.png" class="img-responsive" alt="">
			</div>
			<div class="col-md-3 brand-grid">
				<img src="images/ic1.png" class="img-responsive" alt="">
			</div>
			<div class="col-md-3 brand-grid">
				<img src="images/ic2.png" class="img-responsive" alt="">
			</div>
			<div class="col-md-3 brand-grid">
				<img src="images/ic3.png" class="img-responsive" alt="">
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
					<p>Suspendisse sed accumsan risus. Curabitur rhoncus, elit vel
						tincidunt elementum, nunc urna tristique nisi, in interdum libero
						magna tristique ante. adipiscing varius. Vestibulum dolor lorem.</p>
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
						<input type="text" value="Enter your E-mail"
							onfocus="this.value='';"
							onblur="if (this.value == '') {this.value ='Enter your E-mail';}">
						<input type="submit" value="Subscribe">
					</form>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="footer-bottom">
			<div class="container">
				<ul class="footer-bottom-top">
					<li><a href="#"><img
							src="${pageContext.request.contextPath}/resources/images/f1.png"
							class="img-responsive" alt=""></a></li>
					<li><a href="#"><img
							src="${pageContext.request.contextPath}/resources/images/f2.png"
							class="img-responsive" alt=""></a></li>
					<li><a href="#"><img
							src="${pageContext.request.contextPath}/resources/images/f3.png"
							class="img-responsive" alt=""></a></li>
				</ul>
				<p class="footer-class">
					&copy; 2016 Shopin. All Rights Reserved | Design by <a
						href="http://w3layouts.com/" target="_blank">W3layouts</a>
				</p>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--//footer-->
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->

	<script src="${js}/simpleCart.min.js">
		
	</script>
	<!-- slide -->
	<script src="${js}/bootstrap.min.js"></script>

</body>
</html>