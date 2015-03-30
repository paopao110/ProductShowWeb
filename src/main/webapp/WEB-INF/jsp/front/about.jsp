<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
	<title>关于我们</title>
	<jsp:include page="common/headerSrc.jsp"></jsp:include>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<body>

<div id="page">

	<!-- BEGIN TITLEBAR -->
	<jsp:include page="common/header.jsp"></jsp:include>
	<!-- END TITLEBAR -->


	<!-- BEGIN ARTICLE -->
	<article class="columns page_text about" id="content">
	
		<header class="page_text title">
			<h1><strong>公司</strong> 文化</h1>
		</header>

		<div class="cite_box">
			<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. <strong>Facilisis, ante ipsum ultricies a, blandit lobortis.</strong></p>
			<p>In lobortis magna sapien, lacinia id, ultrices bibendum, sem vitae metus.</p>
		</div>
	
		<h2>公司 <strong>简介</strong></h2>

		<div class="column">
			
			<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Vestibulum, dolor sit amet, varius laoreet. Morbi justo. <strong>Phasellus adipiscing</strong>. Nunc vitae arcu magna, gravida wisi id lacus. Vivamus est ullamcorper orci a adipiscing gravida tempor, tortor lacus tellus enim, malesuada augue pulvinar mollis, purus dolor vel lorem ligula, in tortor metus nec turpis et lectus. Mauris nec adipiscing elit.</p>

			<p>Egestas, nunc sem, rutrum ut, laoreet ut, nonummy gravida. Pellentesque habitant morbi tristique id, porttitor eros, id felis. <a href="#">Morbi id felis</a>. Mauris eget tempus enim ut orci vitae tellus. Morbi dui ornare lacus euismod purus est, dapibus tellus. Vestibulum ante at justo. Nam scelerisque a, pharetra porttitor sem luctus pellentesque.</p>

			<p>Auctor. Nam diam mauris, volutpat laoreet. Sed interdum euismod nec, dolor. Nulla malesuada. Ut nonummy. <strong>Sed ornare, erat sed elit metus, ullamcorper risus</strong>. Sed in faucibus eu, leo. Donec nulla orci luctus et risus in risus.</p>

			<p>Tristique velit, vitae leo. Mauris molestie justo arcu, pellentesque eget, ante. Vestibulum quam at sem. Pellentesque scelerisque a, elementum eu, tortor. Vivamus orci molestie lorem lectus, pellentesque a, fermentum erat. Integer lacinia dictum. Fusce mollis, metus.</p>
		
		</div>
		
		<section class="gallery">
			<img src="<%=request.getContextPath()%>/src/img/examples/about_us_1.jpg" alt="" width="215" height="342" />
			<img src="<%=request.getContextPath()%>/src/img/examples/about_us_2.jpg" alt="" width="215" height="342" />
		</section>

	</article>
	<!-- END ARTICLE -->


	<!-- BEGIN ABOUT US SUMMARY -->
	<section class="columns page_text about_summary clear">

		<!-- BEGIN 1 COLUMN -->
		<div class="column column_33">
			<section class="tabs">
				<nav>
					<ul>
						<li class="current">Skills</li>
						<li>Abilities</li>
					</ul>
				</nav>
				<article class="clear">
					<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. <strong>Facilisis, ante ipsum ultricies a, blandit lobortis</strong>. In lobortis magna sapien, lacinia id, ultrices bibendum!</p>

<p>Sem vitae metus. Sed tempus enim sapien enim eget lacus sed condimentum velit.</p>
				</article>

				<article class="clear">
					<p><strong>Facilisis, ante ipsum ultricies a, blandit lobortis</strong>. In lobortis magna sapien, lacinia id, ultrices bibendum!</p>

<p>Sem vitae metus. Sed tempus enim sapien enim eget lacus sed condimentum velit.</p>
				</article>
			</section>
		</div>
		<!-- END 1 COLUMN -->


		<!-- BEGIN 2 COLUMN -->
		<div class="column column_33 experience">
			<h1>Experience</h1>

			<p>Nibh, dictum velit, vitae massa nisl, sollicitudin id, congue quis, porttitor risus. Vivamus nonummy porttitor varius. Etiam hendrerit ultricies. Curabitur tempor. Suspendisse eu mollis tempus. Morbi tellus ante nec risus. Fusce commodo wisi.</p>
		
			<ul class="plus">
				<li>Pretium eget, nulla. Etiam accumsan at, venenatis tristique!</li>
				<li>Phasellus consequat.</li>
				<li>Etiam at adipiscing wisi. Donec tortor. Sed sagittis lectus vel hendrerit libero. Nulla mi vel risus</li>
			</ul>
		</div>
		<!-- END 2 COLUMN -->
		
		
		<!-- BEGIN 3 COLUMN -->
		<div class="column column_33 reviews">
			<h1>Reviews</h1>

			<figure class="photo">
				<img src="<%=request.getContextPath()%>/src/img/examples/about_us_reviews.jpg" alt="Adam K." />
				<figcaption class="author">
					<span>Adam K.</span>
					<a href="http://activden.net/">Activden.net</a>
				</figcaption>
			</figure>
			
			<article>
				<p>Suspendisse placerat sagittis ultricies. Nullam fermentum diam in augue. Sed sagittis ac, laoreet sit amet, diam. Praesent eu lorem. Nam sed urna. Duis vulputate mi, eu nibh.</p>

				<p><strong>Donec sit amet dolor! Fusce porttitor, arcu vitae massa.</strong></p>
			</article>
		</div>
		<!-- END 3 COLUMN -->

	</section>
	<!-- END ABOUT US SUMMARY -->


</div>
<!--  END PAGE -->


<!--  START FOOTER -->
  <jsp:include page="common/footer.jsp"></jsp:include>
<!--  END FOOTER -->



</body>
</html>