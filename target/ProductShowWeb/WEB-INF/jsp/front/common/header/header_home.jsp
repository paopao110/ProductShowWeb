<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<header id="titlebar">
		<a href="#" id="logo"></a>
		<ul id="top_menu">
			<li class="current-menu-item">
				<a href="<%=request.getContextPath()%>/index">首页</a>
			</li>
			<li>
				<a href="<%=request.getContextPath()%>/about">公司简介</a>
			</li>
			<li>
				<a href="<%=request.getContextPath()%>/product">产品展示</a>
			</li>
			<li>
				<a href="<%=request.getContextPath()%>/patent">技术专利</a>
				<!-- 
				<ul>
					<li>
						<a href="./columns.htm.html">Columns</a>
					</li>
					<li>
						<a href="./elements.htm.html">Elements</a>
					</li>
					<li>
						<a href="./typography.htm.html">Typography</a>
					</li>
				</ul>
				 -->
			</li>
			<!-- 
			<li>
				<a href="./portfolio.htm.html">Portfolio</a>
                <ul>
					<li>
						<a href="./portfolio.htm.html">Portfolio Image</a>
					</li>
					<li>
						<a href="./portfolio-video.htm.html">Portfolio Video</a>
					</li>
					<li>
						<a href="./portfolio-other.htm.html">Portfolio Other</a>
					</li>
				</ul>
			</li>
			 -->
			<li>
				<a href="<%=request.getContextPath()%>/contact">联系我们</a>
			</li>
		</ul>
		<ul id="top">
			<li>Want more?</li>
			<li>
				<a href="#" class="cloud facebook">
					<span class="arrow"></span>
				</a>
			</li>
			<li>
				<a href="#" class="cloud rss">
					<span class="arrow"></span>
				</a>
			</li>
		</ul>
	</header>