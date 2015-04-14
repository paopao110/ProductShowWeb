<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!--[if lt IE 7 ]><html lang="en" class="ie6 ielt7 ielt8 ielt9"><![endif]--><!--[if IE 7 ]><html lang="en" class="ie7 ielt8 ielt9"><![endif]--><!--[if IE 8 ]><html lang="en" class="ie8 ielt9"><![endif]--><!--[if IE 9 ]><html lang="en" class="ie9"> <![endif]--><!--[if (gt IE 9)|!(IE)]><!--> 
<html lang="en"><!--<![endif]--> 
	<head>
		<meta charset="utf-8">
		<title>图片查看</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<jsp:include page="common/headerSrc.jsp"></jsp:include>
	</head>
	<body>
		<div class="container">
			<jsp:include page="common/menubar.jsp"/>
			<div class="row">
				<jsp:include page="common/leftbar.jsp"></jsp:include>
				<div class="span9">
					<h2>产品图片${message }</h2>
					<hr/>
					<div align="right">
						<a class="btn btn-primary" href="<%=request.getContextPath()%>/${product.pId}/addImagePage?admin">继续添加图片</a>
					</div>
					<ul class="thumbnails">
						<c:forEach items="${imagesList}" var="image">
						<li class="span3">
							<a class="thumbnail">
								<img src="<%=request.getContextPath() %>/upload/${image.iUrl}" alt="" />
								
							</a>
							<div class="caption" align="center">
									<h5>所属产品:${product.pTitle }</h5>
									<p>
										图片描述：
										<c:if test="${image.iDescription==''}">暂时没有描述</c:if>
										${image.iDescription}
									</p>
								</div>
						</li>
						</c:forEach>
					</ul>
					
				</div>
			</div>
		</div>
		<script src="<%=request.getContextPath() %>/src/js/jquery.min.js"></script>
		<script src="<%=request.getContextPath() %>/src/js/bootstrap.min.js"></script>
		<script src="<%=request.getContextPath() %>/src/js/site.js"></script>
	</body>
</html>
