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
			<h1><strong>技术专利展示</strong></h1>
		</header>

		<%for(int i=0;i<3;i++){ %>
		<!-- BEGIN POST 1 -->
		<div class="post columns">
		
			<div class="column photo">
				<a href="<%=request.getContextPath() %>/patent_full">
					<span></span>
					<img src="<%=request.getContextPath() %>/src/img/examples/portfolio_medium_4.jpg" alt="xxxx." />
				</a>
			</div>
			
			<div class="column description">
			
				<h2>专利标题</h2>
				<p>专利描述.<br />
					专利详细描述
				</p>

				<p class="more"><a href="<%=request.getContextPath()%>/patent_full">查看更多</a></p>
			
			</div>
		
		</div>
		<!-- END POST 1 -->
		<%} %>

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