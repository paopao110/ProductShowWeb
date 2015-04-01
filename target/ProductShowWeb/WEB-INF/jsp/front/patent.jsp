<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
	<title>技术专利</title>
	<jsp:include page="common/headerSrc.jsp"></jsp:include>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>

<div id="page">

	<!-- BEGIN TITLEBAR -->
	<jsp:include page="common/header/header_patent.jsp"></jsp:include>
	<!-- END TITLEBAR -->


	<!-- BEGIN ARTICLE -->
	<article class="portfolio page_text" id="content">

		<header class="page_text title">
			<h1><strong>Portfolio Image</strong></h1>
		</header>

		<!-- BEGIN POST 1 -->
		<div class="post columns">
		
			<div class="column photo">
				<a href="./portfolio-projekt.htm.html">
					<span></span>
					<img src="<%=request.getContextPath() %>/src/img/examples/portfolio_medium_1.jpg" alt="In eros ultrices posuere risus." />
				</a>
			</div>
			
			<div class="column description">
			
				<h2>In eros ultrices posuere risus.</h2>
				<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Vestibulum, dolor sit amet, varius laoreet. Morbi justo. Phasellus adipiscing. Nunc vitae arcu magna, gravida wisi id lacus.<br />
Vivamus est ullamcorper orci a adipiscing gravida tempor, tortor lacus tellus enim, malesuada augue.</p>

				<p class="more"><a href="./portfolio-projekt.htm.html">Read moreâ¦</a></p>
			
			</div>
		
		</div>
		<!-- END POST 1 -->
		
		
		<!-- BEGIN POST 2 -->
		<div class="post columns">
		
			<div class="column photo">
				<a href="./portfolio-projekt.htm.html">
					<span></span>
					<img src="<%=request.getContextPath() %>/src/img/examples/portfolio_medium_2.jpg" alt="Duis hendrerit wisi." />
				</a>
			</div>
			
			<div class="column description">
			
				<h2>Duis hendrerit wisi.</h2>
				<p>Nunc varius eu, dapibus non, placerat tempor magna quis leo. Pellentesque facilisis vel, adipiscing risus commodo est lacus vitae imperdiet consequat. </p>

				<p class="more"><a href="./portfolio-projekt.htm.html">Read moreâ¦</a></p>

			</div>
		
		</div>
		<!-- END POST 2 -->
		
		
		<!-- BEGIN POST 3 -->
		<div class="post columns">
		
			<div class="column photo">
				<a href="./portfolio-projekt.htm.html">
					<span></span>
					<img src="<%=request.getContextPath() %>/src/img/examples/portfolio_medium_3.jpg" alt="Cras tempus nunc vitae nunc eget dolor." />
				</a>
			</div>
			
			<div class="column description">
			
				<h2>Cras tempus nunc vitae nunc eget dolor.</h2>
				<p>Donec lectus blandit risus auctor quis, luctus arcu vitae est sem, rutrum ac, blandit venenatis, pulvinar vulputate augue, id nonummy consequat mollis ut, fermentum malesuada.</p>

				<p class="more"><a href="./portfolio-projekt.htm.html">Read moreâ¦</a></p>
			
			</div>
		
		</div>
		<!-- END POST 3 -->
		

		<section class="pagination">
			<a class="prev">&nbsp;</a>
			<a href="#" class="current">1</a>
			<a href="#">2</a>
			<a href="#">3</a>
			<span>â¦</span>
			<a href="#">7</a>
			<a class="next">&nbsp;</a>
		</section>

	</article>
	<!-- END ARTICLE -->



</div>
<!--  END PAGE -->


<!--  START FOOTER -->
  <jsp:include page="common/footer.jsp"></jsp:include>
<!--  END FOOTER -->

</body>
</html>