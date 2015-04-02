<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
					<h2>专利管理</h2>
					<div align="right">
						<button type="submit" class="btn btn-primary">添加 专利</button>
					</div>
					<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>专利编号</th>
								<th>专利名称</th>
								<th>专利申请人</th>
								<th>
									相关操作
								</th>
							</tr>
						</thead>
						<tbody>
							<%for(int i=0;i<5;i++){ %>
							<tr>
								<td>Nike</td>
								<td>Monsters Inc</td>
								<td>Monsters Inc</td>
								<td><a href="#">编辑</a>&nbsp;&nbsp;|&nbsp;&nbsp;
									<a href="#">删除</a>&nbsp;&nbsp;|&nbsp;&nbsp;
									<a href="#">添加图片</a>
								</td>
							</tr>
							<%} %>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</body>
</html>
