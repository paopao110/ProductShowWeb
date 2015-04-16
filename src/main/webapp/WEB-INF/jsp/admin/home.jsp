<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!--[if lt IE 7 ]><html lang="en" class="ie6 ielt7 ielt8 ielt9"><![endif]--><!--[if IE 7 ]><html lang="en" class="ie7 ielt8 ielt9"><![endif]--><!--[if IE 8 ]><html lang="en" class="ie8 ielt9"><![endif]--><!--[if IE 9 ]><html lang="en" class="ie9"> <![endif]--><!--[if (gt IE 9)|!(IE)]><!--> 
<html lang="en"><!--<![endif]--> 
	<head>
		<meta charset="utf-8">
		<title>管理界面</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<jsp:include page="common/headerSrc.jsp"></jsp:include>
	</head>
	<body>
		<div class="container">
			<jsp:include page="common/menubar.jsp"/>
			<div class="row">
				<jsp:include page="common/leftbar.jsp"></jsp:include>
				<div class="span9">
					<div class="well summary">
						<font color="green"><marquee>欢迎来到后台管理！</marquee></font>
					</div>
					<h2>最近客户留言</h2>
					<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>留言编号</th>
								<th>客户名称</th>
								<th>联系电话</th>
								<th>
									相关操作
								</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${msgList}" var="msg">
							<tr >
								<td>${msg.mId }</td>
								<td>${msg.mUsername }</td>
								<td>${msg.mTel}</td>
								<td><a href="<%=request.getContextPath()%>/${msg.mId }/viewMsg?admin">查看</a></td>
							</tr>
							</c:forEach>
						</tbody>
					</table>
					<ul class="pager">
						<li class="next">
							<a href="<%=request.getContextPath()%>/message?admin">查看更多 &rarr;</a>
						</li>
					</ul>
                    
				</div>
			</div>
		</div>
		<script type="text/javascript" src="js/kkpager-message.js"></script>
	</body>
</html>