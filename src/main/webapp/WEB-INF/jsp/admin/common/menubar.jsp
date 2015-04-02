<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="navbar">
	<div class="navbar-inner">
		<div class="container">
			<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> 
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span>
			</a> 
			<a class="brand" href="index.html">XXX有限公司</a>
			<div class="nav-collapse">
				<ul class="nav">
					<li><a href="index.html">去往首页</a></li>
					<li><a href="<%=request.getContextPath()%>/modify?admin">用户设置</a></li>
				</ul>
				<ul class="nav pull-right">
					<li><a href="profile.htm"></a></li>
					<li><a href="login.htm">Logout</a></li>
				</ul>
			</div>
		</div>
	</div>
</div>
