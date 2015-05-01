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
	<article class="productblog full page_text" id="content">
		<div class="columns">
			<div class="productcolumn article">
				<p class="icon date">产品名称 :${product.pTitle}</p>
				<p class="icon date">产品简介 :${product.pSummary}</p>

				<p class="icon date">产品描述 :</p>
				<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${product.pContent}</p>
				<c:forEach items="${listImages}" var="img">
					<p><img alt="" src="<%=request.getContextPath()%>/upload/${img.iUrl}" width="100%"> </p>
					<p>${img.iDescription}</p>
				</c:forEach>
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