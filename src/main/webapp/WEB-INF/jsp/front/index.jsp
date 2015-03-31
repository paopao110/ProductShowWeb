<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
	<title>首页</title>	
	<jsp:include page="common/headerSrc.jsp"></jsp:include>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<body class="home">

<div id="page">

	<!-- BEGIN TITLEBAR -->
	<jsp:include page="common/header/header_home.jsp"></jsp:include>
	<!-- END TITLEBAR -->
	<div class="copyrights">Collect from #</div>

	<!-- BEGIN SLIDER -->
	<div id="slider">
		<ul class="slider_photos">
			<li>
				<div class="inside">
					<div class="description page_text">
						<p>说两句，关于这些图片的. <a href="#">说多了</a>图片滚动还是可以的</p>
					</div>
					<img src="<%=request.getContextPath() %>/src/img/examples/top_1.jpg" alt="" />
				</div>
			</li>
			<li>
				<div class="inside">
					<div class="description page_text">
						<p>说两句，关于这些图片的. <a href="#">说多了</a>图片滚动还是可以的</p>
					</div>
					<img src="<%=request.getContextPath() %>/src/img/examples/top_2.jpg" alt="" />
				</div>
			</li>
		</ul>
		<nav class="arrows">
			<a class="next"></a>
			<a class="prev"></a>
		</nav>
		<div class="progressbar">
			<div class="bar"></div>
		</div>
	</div>
	<!-- END SLIDER -->


	<div class="cite_box">
		<p>计划是时间的最好保障，时间是效率的坚实基础，效率是行动的优化大师，行动是成功的唯一途径。<strong>效率成就品牌，诚信铸就未来。</strong></p>
		<p>实施三大战略创信誉，培育企业文化树形象。</p>
	</div>


	<!-- BEGIN LATEST POSTS -->
	<section class="home_latest_posts page_text columns">

		<h1><strong>Lastest</strong> posts from our blog</h1>

		<!-- BEGIN 1 COLUMN -->
		<div class="column column_25">

			<p class="date">Add: Jan 03 2012</p>

			<header>
				<span class="cloud text">
					<span class="arrow"></span>
				</span>
				<strong>Etiam at consectetuer ut, laoreet purus est…</strong>
			</header>

			<a href="#" class="photo">
				<span class="more">more</span>
				<img src="<%=request.getContextPath() %>/src/img/examples/blog_latest_small_1.jpg" alt="" />
			</a>

			<p>In accumsan et, bibendum varius ac, vulputate fringilla. In hac habitasse platea dictumst.</p>

			<p class="more"><a href="#">Read more…</a></p>

		</div>
		<!-- END 1 COLUMN -->
		
		
		<!-- BEGIN 2 COLUMN -->
		<div class="column column_25">

			<p class="date">Add: Jan 03 2012</p>

			<header>
				<span class="cloud text">
					<span class="arrow"></span>
				</span>
				<strong>Gravida. In quam at ipsum dolor cursus ante.</strong>
			</header>

			<p>Donec eros. Curabitur quis leo. Suspendisse sapien. Maecenas eu mauris. Pellentesque mattis magna. Cum sociis natoque penatibus et malesuada fames ac pede. Vestibulum egestas risus at est pretium convallis. Fusce nisl risus, euismod pede, molestie lorem hendrerit eget, aliquet eget, facilisis metus...</p>

			<p class="more"><a href="#">Read more…</a></p>

		</div>
		<!-- END 2 COLUMN -->


		<!-- BEGIN 3 COLUMN -->
		<div class="column column_25">

			<p class="date">Add: Jan 03 2012</p>

			<header>
				<span class="cloud video">
					<span class="arrow"></span>
				</span>
				<strong>Pellentesque sagittis!</strong>
			</header>

			<a href="./portfolio-projekt.htm.html" class="video">
				<span class="d"></span>
				<img src="<%=request.getContextPath() %>/src/img/examples/blog_latest_small_2.jpg" alt="" />
			</a>

			<p>Nunc accumsan adipiscing, risus pede, posuere consectetuer. Etiam accumsan odio et magnis dis parturient montes, nascetur ridiculus mus. Mauris mattis eget, tortor</p>

			<p class="more"><a href="#">Read more…</a></p>

		</div>
		<!-- END 3 COLUMN -->


		<!-- BEGIN 4 COLUMN -->
		<div class="column column_25">

			<p class="date">Add: Jan 03 2012</p>

			<header>
				<span class="cloud text">
					<span></span>
				</span>
				<strong>Sed adipiscing non, ligula. Nam eget tortor. Nam nec libero a mauris. </strong>
			</header>
			
			<a href="#" class="photo">
				<span>more</span>
				<img src="<%=request.getContextPath() %>/src/img/examples/blog_latest_small_3.jpg" alt="" />
			</a>

			<p>Maecenas quis faucibus a, sodales nibh ac purus.</p>

			<p class="more"><a href="#">Read more…</a></p>

		</div>
		<!-- END 4 COLUMN -->
	
	</section>
	<!-- END LATEST POSTS -->


	<!-- START INFORMATIONS -->
	<section class="home_info page_text columns">
	
		<a href="#" class="column column_33">
			<h1>Who <strong>We</strong> are?</h1>
			<span class="arrow"></span>
			<header></header>
			<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Odio, a quam at justo. Aenean commodo wisi. Sed diam felis, feugiat tempus.</p>
		</a>
		
		<a href="#" class="column column_33">
			<h1><strong>Our skills</strong> and <strong>abilities</strong></h1>
			<span class="arrow"></span>
			<header></header>
			<p>Nunc sit amet, consectetuer adipiscing elit. Curabitur gravida massa quis leo. <em class="blue"><u>Suspendisse at metus,</u></em>. Nameu. Metus, ullamcorper ut...</p>
		</a>
		
		<a href="#" class="column column_333">
			<h1>What about <strong>photo</strong> and <strong>video</strong>?</h1>
			<span class="arrow"></span>
			<header></header>
			<p>Etiam dictum arcu. Etiam blandit eros, sit amet, neque. Praesent eu condimentum quam. Donec ornare velit sed turpis.</p>
		</a>

	</section>
	<!-- END INFORMATIONS -->


	<!-- START HOME PORTFOLIO -->
	<section class="home_portfolio page_text columns">

		<nav class="arrows">
			<a class="next"></a>
			<a class="prev"></a>
		</nav>

		<h1><strong>产品展示</strong></h1>

		<div id="slider_portfolio">
			<ul>
				<li class="column">
					<a href="./portfolio-projekt.htm.html">
						<span></span>
						<img src="<%=request.getContextPath() %>/src/img/examples/portfolio_small_1.jpg" alt="" />
					</a>
				</li>
				<li class="column">
					<a href="./portfolio-projekt.htm.html">
						<span></span>
						<img src="<%=request.getContextPath() %>/src/img/examples/portfolio_small_2.jpg" alt="" />
					</a>
				</li>
				
				<li class="column">
					<a href="./portfolio-projekt.htm.html">
						<span></span>
						<img src="<%=request.getContextPath() %>/src/img/examples/portfolio_small_3.jpg" alt="" />
					</a>
				</li>
				<li class="column">
					<a href="./portfolio-projekt.htm.html">
						<span></span>
						<img src="<%=request.getContextPath() %>/src/img/examples/portfolio_small_4.jpg" alt="" />
					</a>
				</li>
				<li class="column">
					<a href="./portfolio-projekt.htm.html">
						<span></span>
						<img src="<%=request.getContextPath() %>/src/img/examples/portfolio_small_5.jpg" alt="" />
					</a>
				</li>
			</ul>
		</div>

	</section>
	<!-- END HOME PORTFOLIO -->

</div>
<!--  END PAGE -->


<!--  START FOOTER -->
 <jsp:include page="common/footer.jsp"></jsp:include>
<!--  END FOOTER -->
</body>
</html>