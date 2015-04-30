<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
	
	<title>产品详情</title>
	<jsp:include page="common/headerSrc.jsp"></jsp:include>  
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<body>

<div id="page">

	<!-- BEGIN TITLEBAR -->
	<jsp:include page="common/header/header_product.jsp"></jsp:include>
	<!-- END TITLEBAR -->


	<!-- BEGIN ARTICLE -->
	<article class="blog full page_text" id="content">

		<header>
			<img src="<%=request.getContextPath()%>/src/img/examples/blog_big.jpg" alt="" />
		</header>

		<div class="columns">
		
			<div class="column column_25">
				<p class="icon date">21.11.2011</p>

				<p class="icon user">NewCore</p>

				<p class="icon comments">
					<a href="#"><strong>4</strong> comments</a>
				</p>
			</div>


			<div class="column article">
				<h1>${product.pTitle}</h1>
				<p>${product.pContent}</p>
				<c:forEach items="${listImages}" var="img">
					<p><img alt="" src="${img.iUrl}"> </p>
					<p>${img.iDescription}</p>
				</c:forEach>
			<!-- 	<cite>Integer adipiscing. Mauris imperdiet faucibus orci ut massa. Nam lacus. Vivavel turpis tellus, condimentum urna, placerat consequat.</cite> -->
			
			</div>

		</div>
		
		
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