<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!--[if lt IE 7 ]><html lang="en" class="ie6 ielt7 ielt8 ielt9"><![endif]--><!--[if IE 7 ]><html lang="en" class="ie7 ielt8 ielt9"><![endif]--><!--[if IE 8 ]><html lang="en" class="ie8 ielt9"><![endif]--><!--[if IE 9 ]><html lang="en" class="ie9"> <![endif]--><!--[if (gt IE 9)|!(IE)]><!--> 
<html lang="en"><!--<![endif]--> 
	<head>
		<meta charset="utf-8">
		<title>专利信息</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<jsp:include page="common/headerSrc.jsp"></jsp:include>
	</head>
	<body>
		<div class="container">
			<jsp:include page="common/menubar.jsp"/>
			<div class="row">
				<jsp:include page="common/leftbar.jsp"></jsp:include>
				<div class="span9">
					<h2>类别管理</h2>
					<div align="right">
						<a class="btn btn-primary" href="<%=request.getContextPath() %>/addSubmenuPage?admin">添加类别</a>
					</div>
					<table class="table table-bordered table-striped">
						
						<thead>
							<tr>
								<th>类别编号</th>
								<th>类别名称</th>
								<th>
									相关操作
								</th>
							</tr>
						</thead>
						<tbody>
						<c:if test="${submenu.size()>0 }">
							<c:forEach items="${submenu }" var="submenu">
							<tr>
								<td>${submenu.sId }</td>
								<td>${submenu.sTitle }</td>
								<td><a href="<%=request.getContextPath()%>/${submenu.sId}/viewSubmenu?admin">编辑</a>
									&nbsp;&nbsp;|&nbsp;&nbsp;
									<a href="#" onclick="deleteSubmenu('<%=request.getContextPath()%>/${submenu.sId}/deleteSubmenu?admin')">删除</a>
								</td>
							</tr>
							</c:forEach>
							</c:if>
							<c:if test="${submenu.size()==0 }">
							<tr>
								<td colspan="3"><font color="red">没有数据</font></td>
							</tr>
							</c:if>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<script type="text/javascript" src="js/jquery.js"></script>
		<script type="text/javascript" src="js/del.js"></script>
	</body>
</html>
