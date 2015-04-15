<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!--[if lt IE 7 ]><html lang="en" class="ie6 ielt7 ielt8 ielt9"><![endif]--><!--[if IE 7 ]><html lang="en" class="ie7 ielt8 ielt9"><![endif]--><!--[if IE 8 ]><html lang="en" class="ie8 ielt9"><![endif]--><!--[if IE 9 ]><html lang="en" class="ie9"> <![endif]--><!--[if (gt IE 9)|!(IE)]><!--> 
<html lang="en"><!--<![endif]--> 
	<head>
		<meta charset="utf-8">
		<title>产品信息</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<jsp:include page="common/headerSrc.jsp"></jsp:include>
		<link href="css/kkpager.css" rel="stylesheet">
	</head>
	<body>
		<div class="container">
			<jsp:include page="common/menubar.jsp"/>
			<div class="row">
				<jsp:include page="common/leftbar.jsp"></jsp:include>
				<div class="span9">
					<h2>产品管理</h2>
					<div align="right">
						<a class="btn btn-primary" href="<%=request.getContextPath() %>/addProductPage?admin">添加产品信息</a>
					</div>
					<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>产品编号</th>
								<th>产品名称</th>
								<th>所属类型</th>
								<th>
									相关操作
								</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${products}" var="product">
							<tr>
								<td>${product.pId}</td>
								<td>${product.pTitle}</td>
								<td>${product.submenu.sTitle}</td>
								<td>
									<a href="#">查看</a>&nbsp;&nbsp;|&nbsp;&nbsp;
									<a href="<%=request.getContextPath()%>/${product.pId}/viewProduct?admin">编辑</a>&nbsp;&nbsp;|&nbsp;&nbsp;
									<a href="#" onclick="deleteProduct('<%=request.getContextPath()%>/${product.pId}/deleteProduct?admin')">删除</a>&nbsp;&nbsp;|&nbsp;&nbsp;
									<a href="<%=request.getContextPath()%>/${product.pId}/addImagePage?admin">添加图片</a>
								</td>
							</tr>
							</c:forEach>
						</tbody>
					</table>
					<div align="center" class="pagination" id="kkpager"></div>
				</div>
			</div>
		</div>
		<script type="text/javascript" src="js/jquery.js"></script>
		<script type="text/javascript" src="js/kkpager.min.js"></script>
		<script type="text/javascript" src="js/kkpager-product.js"></script>
		<script type="text/javascript" src="js/del.js"></script>
	</body>
</html>
