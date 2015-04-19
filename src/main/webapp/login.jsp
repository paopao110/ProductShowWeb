<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!--[if lt IE 7 ]><html lang="en" class="ie6 ielt7 ielt8 ielt9"><![endif]--><!--[if IE 7 ]><html lang="en" class="ie7 ielt8 ielt9"><![endif]--><!--[if IE 8 ]><html lang="en" class="ie8 ielt9"><![endif]--><!--[if IE 9 ]><html lang="en" class="ie9"> <![endif]--><!--[if (gt IE 9)|!(IE)]><!--> 
<html lang="en"><!--<![endif]--> 
	<head>
		<meta charset="utf-8">
		<title>后台登陆页面</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link href="<%=request.getContextPath() %>/src/css/bootstrap.min.css" rel="stylesheet">
		<link href="<%=request.getContextPath() %>/src/css/bootstrap-responsive.min.css" rel="stylesheet">
		<link rel="stylesheet" href="<%=request.getContextPath() %>/src/js/validator/jquery.validator.css"> 
		<link href="<%=request.getContextPath() %>/src/css/site.css" rel="stylesheet">
		<!--[if lt IE 9]><script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
	</head>
	<body>
		<div id="login-page" class="container">
			<h3>后台登陆页面</h3>
			<form id="login-form" class="well" action="<%=request.getContextPath() %>/checklogin" autocomplete="off" method="post">
			<input type="text" name="aName" class="span2" placeholder="用户名" data-rule="required;"/><br />
			<input type="password" name="aPasswd" class="span2" placeholder="密码" data-rule="required;"/><br />
			<button type="submit" class="btn btn-primary">点击登录</button>
			<button type="reset" class="btn">重置</button>
		</form>	
		</div>
		<script src="<%=request.getContextPath() %>/src/js/jquery.min.js"></script>
		<script src="<%=request.getContextPath() %>/src/js/bootstrap.min.js"></script>
		<script src="<%=request.getContextPath() %>/src/js/site.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath() %>/src/js/validator/jquery.validator.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath() %>/src/js/validator/local/zh_CN.js" charset="utf-8"></script>
	</body>
</html>