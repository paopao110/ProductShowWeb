<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<footer id="footer">
	<section class="contact">
		<span class="mobile"> <strong>电话:</strong> 555 152 535
		</span> <span class="mail"> <strong>E-mail:</strong> <a
			href="mailto:contact@experience.com">contact@experience.com</a>
		</span> <a class="top">top</a>

	</section>
	<nav>
		<ul id="footer_menu">
			<li><a href="<%=request.getContextPath()%>/index">首页</a></li>
			<li><a href="<%=request.getContextPath()%>/about">公司简介</a></li>
			<li><a href="<%=request.getContextPath()%>/product">产品展示</a></li>
			<li><a href="#">技术专利</a></li>
			<!-- <li><a href="./portfolio.htm.html">Portfolio</a></li> -->
			<li><a href="<%=request.getContextPath()%>/contact">联系我们</a></li>
		</ul>
	</nav>
	<p class="copyright">
		&copy; Copyright &copy; 2013.Company name All rights reserved.
	</p>
</footer>