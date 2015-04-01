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
	<jsp:include page="common/header/header_about.jsp"></jsp:include>
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
			
			<p>过去20多年，华为抓住中国改革开放和ICT行业高速发展带来的历史机遇，坚持以客户为中心，以奋斗者为本，基于客户需求持续创新，赢得了客户的尊重和信赖，从一家立足于中国深圳特区，初始资本只有21000人民币的民营企业，稳健成长为年销售规模近2400亿人民币的世界500强公司。如今，我们的电信网络设备、IT设备和解决方案以及智能终端已应用于全球170多个国家和地区。</p>
			<p>作为全球领先的信息与通信解决方案供应商，我们为电信运营商、企业和消费者等提供有竞争力的端到端ICT解决方案和服务，帮助客户在数字社会获得成功。我们坚持聚焦战略，对电信基础网络、云数据中心和智能终端等领域持续进行研发投入，以客户需求和前沿技术驱动的创新，使公司始终处于行业前沿，引领行业的发展。</P>
			<p>我们每年将销售收入的10%以上投入研发，在近15万华为人中，超过45%的员工从事创新、研究与开发。华为在170多个标准组织和开源组织中担任核心职位，已累计获得专利授权36,511件。

华为积极致力于社会经济的可持续发展，运用信息与通信领域专业经验，弥合数字鸿沟，让人人享有高品质的宽带联接；我们努力保障网络的安全稳定运作，助力客户和各行各业提升效率、降低能耗，推动低碳经济增长；我们开展本地化运作，构建全球价值链，帮助本地发挥出全球价值，实现整个产业链的共赢。

我们深信：未来将是一个全联接的世界。华为与合作伙伴一起，开放合作，努力构建一个更加高效整合的数字物流系统，促进人与人、人与物、物与物的全面互联和交融，激发每个人在任何时间、任何地点的无限机遇与潜能，推动世界进步。
			</p>
			<!-- 
			<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Vestibulum, dolor sit amet, varius laoreet. Morbi justo. <strong>Phasellus adipiscing</strong>. Nunc vitae arcu magna, gravida wisi id lacus. Vivamus est ullamcorper orci a adipiscing gravida tempor, tortor lacus tellus enim, malesuada augue pulvinar mollis, purus dolor vel lorem ligula, in tortor metus nec turpis et lectus. Mauris nec adipiscing elit.</p>

			<p>Egestas, nunc sem, rutrum ut, laoreet ut, nonummy gravida. Pellentesque habitant morbi tristique id, porttitor eros, id felis. <a href="#">Morbi id felis</a>. Mauris eget tempus enim ut orci vitae tellus. Morbi dui ornare lacus euismod purus est, dapibus tellus. Vestibulum ante at justo. Nam scelerisque a, pharetra porttitor sem luctus pellentesque.</p>

			<p>Auctor. Nam diam mauris, volutpat laoreet. Sed interdum euismod nec, dolor. Nulla malesuada. Ut nonummy. <strong>Sed ornare, erat sed elit metus, ullamcorper risus</strong>. Sed in faucibus eu, leo. Donec nulla orci luctus et risus in risus.</p>

			<p>Tristique velit, vitae leo. Mauris molestie justo arcu, pellentesque eget, ante. Vestibulum quam at sem. Pellentesque scelerisque a, elementum eu, tortor. Vivamus orci molestie lorem lectus, pellentesque a, fermentum erat. Integer lacinia dictum. Fusce mollis, metus.</p>
			 -->
		</div>
		
		<section class="gallery">
			<img src="<%=request.getContextPath()%>/src/img/examples/about_us_3.jpg" alt="" width="215" height="342" />
			<img src="<%=request.getContextPath()%>/src/img/examples/about_us_4.jpg" alt="" width="215" height="342" />
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