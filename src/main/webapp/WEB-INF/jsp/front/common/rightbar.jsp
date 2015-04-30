<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<aside id="sidebar" class="page_text">
	
		<!-- START TEXT WIDGET -->
		<!-- 
		<section class="text_widget">
			<h3>Text widget</h3>
			
			<p>Morbi mattis vel, consectetuer adipiscing dolor sit amet, ante. Integer mi metus, ullamcorper augue, ullamcorper id, imperdiet sed, sodales nibh volutpat eu, pretium magna.</p>
		</section>
		 -->
		<!-- END TEXT WIDGET -->


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


		<!-- START POPULAR NEWS -->
		<!-- 
		<section id="popular">
			<h3>Popular news</h3>

			<dl>
				<dt>
					<img src="<%=request.getContextPath()%>/src/img/examples/popular_1.jpg" alt="" width="58" height="58" />
				</dt>
				<dd>
					<p class="title"><a href="#">Aliquam erat libero, pulvinar porta sed, dapibus tellus.</a></p>
					<p class="icon date">01.07.2012</p>
				</dd>
			</dl>
			<dl>
				<dt>
					<img src="<%=request.getContextPath()%>/src/img/examples/popular_2.jpg" alt="" width="58" height="58" />
				</dt>
				<dd>
					<p class="title"><a href="#">Cras id mollis nunc neque, mattis magna.</a></p>
					<p class="icon date">21.06.2012</p>
				</dd>
			</dl>
			<dl>
				<dt>
					<img src="<%=request.getContextPath()%>/src/img/examples/popular_3.jpg" alt="" width="58" height="58" />
				</dt>
				<dd>
					<p class="title"><a href="#">Donec odio leo, in faucibus orci luctus aliquam, risus..</a></p>
					<p class="icon date">01.07.2012</p>
				</dd>
			</dl>
		</section>
		 -->
		<!-- END POPULAR NEWS -->
	
	</aside>