<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<aside id="sidebar" class="page_text">
	<!-- START CATEGORIES -->
	<section id="categories">
		<h3><strong>产品分类</strong></h3>
		<ul>
		<c:forEach items="${submenus}" var="submenu">
			<li style="background: url('<%=request.getContextPath() %>/src/img/own/cell-blue.jpg');text-align:center;"><a href="<%=request.getContextPath() %>/product?submenuId=${submenu.sId}"  onclick="getProducts(this);">${submenu.sTitle}</a></li>
		</c:forEach>
		</ul>
	</section>
	<!-- END CATEGORIES -->
</aside>