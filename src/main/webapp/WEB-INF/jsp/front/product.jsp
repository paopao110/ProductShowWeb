<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*" %>
<%@ page import="com.product.model.*" %>
<%
%>
<!DOCTYPE HTML>
<html>
<head>
	<title>产品展示</title>	
	<jsp:include page="common/headerSrc.jsp"></jsp:include>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<script type="text/javascript">
		
		function getProducts(els){
			var url = els.href;
			$.post(url,"",function(data){
				
			});
		};
</script>
<body>

<div id="page">

	<!-- BEGIN TITLEBAR -->
	<jsp:include page="common/header/header_product.jsp"></jsp:include>
	<!-- END TITLEBAR -->

	<!-- BEGIN ARTICLE -->
	<div id="proBysub">
	<article class="blog page_text" id="content">
		<!-- START POST 1 -->
		<div class="post columns">

			<div class="column column_25">
				<img src="<%=request.getContextPath()%>/src/img/examples/portfolio_big_3.jpg" alt="In eros ultrices posuere risus." width="180" height="124" />
				<p class="icon comments">
					<a href="#"><strong> 说明</strong></a>
				</p>
			</div>

			<div class="column description">

				<!-- <p class="icon date">21.11.2011</p> -->
				<c:forEach items="${listProduct}" var="product">
					<p>&nbsp;</p>
					<h2>${product.pTitle }</h2>
					<p>${product.pSummary}</p>
					<p class="more"><a href="<%=request.getContextPath() %>/product_full?productId=${product.pId }">查看更多</a></p>
				</c:forEach>
				
			
			</div>
			

		</div>
		<!-- END POST 1 -->
		
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
	</div>
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