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
			<div class="row">
				<div class="span9">
					<c:if test="${imagePage==true }">
					<form id="edit-profile" class="form-horizontal" action="<%=request.getContextPath() %>/addImage?admin" 
							enctype="multipart/form-data" method="post">
						<fieldset>
							<legend>添加产品图片</legend>
							<div class="control-group">
								<label class="control-label" for="fileInput">图片</label>
								<div class="controls">
									<input class="input-file" id="doc" type="file" name="doc"/>
								</div>
							</div>						
							<div class="control-group">
								<label class="control-label" for="textarea">图片说明</label>
								<div class="controls">
									<textarea class="input-xlarge" id="iDescription" rows="2" name="iDescription"></textarea>
								</div>
							</div>
							<input id="pId" name="pId" type="hidden" value="${pid}"/>					
							<div class="form-actions">
								<button type="submit" class="btn btn-primary">上传</button> <button class="btn">重置</button>
							</div>
						</fieldset>
					</form>
					</c:if>
					<c:if test="${message!=null||view=='ok'}">
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
								<p>图片描述：<c:if test="${image.iDescription==''}">暂时没有描述</c:if>
								   ${image.iDescription}
								</p>
								<p><a href="<%=request.getContextPath()%>/${product.pId}/${image.iId}/deleteImage?admin">删除</a></p>
							</div>
						</li>
						</c:forEach>
					</ul>
					</c:if>
				</div>
			</div>
		</div>
		<script src="<%=request.getContextPath() %>/src/js/jquery.min.js"></script>
		<script src="<%=request.getContextPath() %>/src/js/bootstrap.min.js"></script>
		<script src="<%=request.getContextPath() %>/src/js/site.js"></script>
	</body>
</html>
