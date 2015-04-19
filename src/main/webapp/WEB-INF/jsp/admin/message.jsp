<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!--[if lt IE 7 ]><html lang="en" class="ie6 ielt7 ielt8 ielt9"><![endif]--><!--[if IE 7 ]><html lang="en" class="ie7 ielt8 ielt9"><![endif]--><!--[if IE 8 ]><html lang="en" class="ie8 ielt9"><![endif]--><!--[if IE 9 ]><html lang="en" class="ie9"> <![endif]--><!--[if (gt IE 9)|!(IE)]><!--> 
<html lang="en"><!--<![endif]--> 
	<head>
		<meta charset="utf-8">
		<title>留言信息</title>
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
					<h2>留言管理</h2>
					<br/>
					<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>留言编号</th>
								<th>客户名称</th>
								<th>联系电话</th>
								<th>状态</th>
								<th>相关操作</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${msgList}" var="msg">
							<tr>
								<td>${msg.mId }</td>
								<td>${msg.mUsername }</td>
								<td>${msg.mTel}</td>
								<td><c:if test="${msg.mFlag==0}"><font color="red">未查看</font></c:if><c:if test="${msg.mFlag==1}"><font color="green">已查看</font></c:if></td>
								<td><a href="<%=request.getContextPath()%>/${msg.mId }/viewMsg?admin">查看</a>
									&nbsp;&nbsp;|&nbsp;&nbsp;
									<a href="#" onclick="deleteMessage('<%=request.getContextPath()%>/${msg.mId}/deleteMsg?admin')">删除</a>
								</td>
							</tr>
							</c:forEach>
							<c:if test="${msgList.size()==0 }">
							<tr>
								<td colspan="3"><font color="red">没有数据</font></td>
							</tr>
							</c:if>
						</tbody>
					</table>
					<div align="center" class="pagination" id="kkpager"></div>
				</div>
			</div>
		</div>
		<script type="text/javascript" src="js/jquery.js"></script>
		<script type="text/javascript" src="js/kkpager.min.js"></script>
		<script type="text/javascript" src="js/kkpager-message.js"></script>
		<script type="text/javascript" src="js/del.js"></script>
	</body>
</html>
