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
		<p>公司宣言<strong>公司宣言。</strong></p>
		<p>公司宣言。</p>
	</div>


	<!-- BEGIN LATEST POSTS -->
	<section class="home_latest_posts page_text columns">

		<h1><strong>公司简介</strong></h1>
		<!-- BEGIN 1 COLUMN -->
		<div class="column column_25">
			<p></p>
			<a href="<%=request.getContextPath() %>/about" class="photo">
				<span class="more">点击查看详细信息</span>
				<img src="<%=request.getContextPath() %>/src/img/examples/blog_latest_small_1.jpg" alt="" />
			</a>
			<!-- 
			<header>
				<span class="cloud text">
					<span class="arrow"></span>
				</span>
				<h1><strong>XXX方涵有限公司</strong></h1>
			</header>
			
			<p>魅族公司成立于2003年。创始人从小沉迷电子热爱科技，魅族就是电子梦想和共赢理念的结晶。从创立以来的一次次飞跃不仅是魅族人热爱追求的结果，更是梦想力量的体现。</p>
			<p class="more"><a href="<%=request.getContextPath() %>/about">更多>></a></p>
			 -->
		</div>
		<!-- END 1 COLUMN -->
		
		
		<!-- BEGIN 2 COLUMN -->
		<div class="column column_75">

			<p class="date"></p>
			<!-- 
			<header>
				<span class="cloud text">
					<span class="arrow"></span>
				</span>
				<strong>Gravida. In quam at ipsum dolor cursus ante.</strong>
			</header>
			 -->
			<p>过去20多年，华为抓住中国改革开放和ICT行业高速发展带来的历史机遇，坚持以客户为中心，以奋斗者为本，基于客户需求持续创新，赢得了客户的尊重和信赖，从一家立足于中国深圳特区，初始资本只有21000人民币的民营企业，稳健成长为年销售规模近2400亿人民币的世界500强公司。如今，我们的电信网络设备、IT设备和解决方案以及智能终端已应用于全球170多个国家和地区。...</p>

			<p class="more"><a href="<%=request.getContextPath() %>/about">查看更多</a></p>

		</div>
		<!-- END 2 COLUMN -->

		
		<!-- BEGIN 3 COLUMN -->
		<!-- 
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
		 -->
		<!-- END 3 COLUMN -->


		<!-- BEGIN 4 COLUMN -->
		<!-- 
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
		 -->
		<!-- END 4 COLUMN -->
	
	</section>
	<!-- END LATEST POSTS -->


	<!-- START INFORMATIONS -->
	<section class="home_info page_text columns">
		<p></p>
		<h1><strong>技术专利</strong></h1>
		<%for(int i=0;i<3;i++){ %>
		<a href="<%=request.getContextPath() %>/patent_full" class="column column_33">
			<h1><strong>专利一</strong></h1>
			<span class="arrow"></span>
			<img src="<%=request.getContextPath() %>/src/img/examples/blog_latest_small_3.jpg" alt="" />
			<!-- <header></header> -->
			<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Odio, a quam at justo. Aenean commodo wisi. Sed diam felis, feugiat tempus.</p>
			
		</a>
		<%} %>
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
				<%for(int i=0;i<3;i++) {%>
				<li class="column">
					<a href="<%=request.getContextPath() %>/product_full">
						<span></span>
						<img src="<%=request.getContextPath() %>/src/img/examples/portfolio_small_1.jpg" alt="" />
					</a>
				</li>
				<%} %>
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