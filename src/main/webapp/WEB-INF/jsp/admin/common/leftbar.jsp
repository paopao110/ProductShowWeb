<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="span3">
	<div class="well" style="padding: 8px 0;">
		<ul class="nav nav-list">
			<li class="nav-header">后台菜单</li>
			<li><!-- class="active" -->
				<a href="<%=request.getContextPath()%>/home?admin"><i class="icon-home"></i>控制面板</a>
			</li>
			<li>
				<a href="<%=request.getContextPath()%>/submenu?admin"><i class="icon-folder-open"></i>类别管理</a>
			</li>
			<li class="nav-header">信息管理</li>
			<li>
				<a href="<%=request.getContextPath()%>/product?admin"><i class="icon-folder-open"></i>产品信息</a>
			</li>
			<li>
				<a href="<%=request.getContextPath()%>/patent?admin"><i class="icon-folder-open"></i>专利信息</a>
			</li>
			<li>
				<a href="<%=request.getContextPath()%>/message?admin"><i class="icon-folder-open"></i>留言信息</a>
			</li>
			<li class="nav-header">用户设置</li>
			<li>
				<a href="<%=request.getContextPath()%>/modifyPass?admin"><i class="icon-folder-open"></i>修改密码</a>
			</li>
		</ul>
	</div>
</div>