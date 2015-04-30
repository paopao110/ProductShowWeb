<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="navbar">
	<div class="navbar-inner">
		<div class="container">
			<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> 
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span>
			</a> 
			<a class="brand" href="<%=request.getContextPath()%>/index.html">PDK有限公司</a>
			<div class="nav-collapse">
				<ul class="nav pull-right">
					<li><a href="<%=request.getContextPath()%>/modifyPass?admin"><%=session.getAttribute("SESSIONUSERNAME")%></a></li>
					<li><a href="<%=request.getContextPath()%>/index.html" target="_blank">去往首页</a></li></li>
					<li><a href="<%=request.getContextPath()%>/logout">退出</a></li>
				</ul>
			</div>
		</div>
	</div>
</div>
