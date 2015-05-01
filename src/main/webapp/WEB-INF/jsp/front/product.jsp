<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
	<title>产品展示</title>	
	<jsp:include page="common/headerSrc.jsp"></jsp:include>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link href="css/kkpager.css" rel="stylesheet">
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
	<header><h2><strong>产品展示</strong></h2></header>
	<hr/>
	<!-- BEGIN ARTICLE -->
	<div id="proBysub">
	<article class="blog page_text" id="content">
		<!-- START POST 1 -->
		<c:forEach items="${listProduct}" var="product">
		<div class="post columns">

			<div class="column column_40">
				<a href="<%=request.getContextPath() %>/${product.pId }/product_full" target="_blank">
					<img src="<%=request.getContextPath()%>/src/img/examples/portfolio_big_3.jpg" alt="" width="360" height="248" />
				</a>
				<p class="icon comments">
					<a href="#"><strong> 所属分类:${product.submenu.sTitle}</strong></a>
				</p>
			</div>

			<div class="column productdescription">
				<h2>${product.pTitle }</h2>
				<p>产品简介:<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${product.pSummary}</p>
				<p class="more"><a href="<%=request.getContextPath() %>/${product.pId }/product_full" target="_blank">查看更多</a></p>		
			</div>
			

		</div>
		</c:forEach>
		<!-- END POST 1 -->
		
		<section class="pagination">
			<div align="center" class="pagination" id="kkpager"></div>
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
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/kkpager.min.js"></script>
<script type="text/javascript" src="js/kkpager-front-product.js"></script>
</html>