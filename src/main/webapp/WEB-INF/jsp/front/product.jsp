<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
	<title>产品展示</title>	
	<jsp:include page="common/headerSrc.jsp"></jsp:include>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>

<div id="page">

	<!-- BEGIN TITLEBAR -->
	<jsp:include page="common/header/header_product.jsp"></jsp:include>
	<!-- END TITLEBAR -->

	<!-- BEGIN ARTICLE -->
	<article class="blog page_text" id="content">
		<%for(int i=0;i<3;i++){ %>
		<!-- START POST 1 -->
		<div class="post columns">

			<div class="column column_25">
				<img src="<%=request.getContextPath()%>/src/img/examples/blog_small_4.jpg" alt="In eros ultrices posuere risus." width="180" height="124" />
				<p class="icon comments">
					<a href="#"><strong> 说明<%=i %></strong></a>
				</p>
			</div>

			<div class="column description">

				<!-- <p class="icon date">21.11.2011</p> -->
				
				<h2>产品<%switch(i){case 0:%>一<%break;case 1:%>二<%break;case 2: %>三<%break;}%></h2>
				
				<p>产品相关简介 <strong>产品相关简介</strong>. 产品相关简介.</p>
			
				<p class="more"><a href="<%=request.getContextPath() %>/product_full">查看更多</a></p>
			
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

	
	<!-- START SIDEBAR -->
	<jsp:include page="common/rightbar.jsp"></jsp:include>
	<!-- END SIDEBAR -->
</div>
<!--  END PAGE -->

<!--  START FOOTER -->
  <jsp:include page="common/footer.jsp"></jsp:include>
<!--  END FOOTER -->
</body>
</html>