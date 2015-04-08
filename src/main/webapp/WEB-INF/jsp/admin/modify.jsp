<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!--[if lt IE 7 ]><html lang="en" class="ie6 ielt7 ielt8 ielt9"><![endif]--><!--[if IE 7 ]><html lang="en" class="ie7 ielt8 ielt9"><![endif]--><!--[if IE 8 ]><html lang="en" class="ie8 ielt9"><![endif]--><!--[if IE 9 ]><html lang="en" class="ie9"> <![endif]--><!--[if (gt IE 9)|!(IE)]><!--> 
<html lang="en"><!--<![endif]--> 
	<head>
		<meta charset="utf-8">
		<title>修改页面</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<jsp:include page="common/headerSrc.jsp"></jsp:include>
	</head>
	<body>
		<div class="container">
			<jsp:include page="common/menubar.jsp"/>
			<div class="row">
				<jsp:include page="common/leftbar.jsp"></jsp:include>
				<div class="span9">
				<c:if test="${user!=null}">
					<form id="edit-profile" class="form-horizontal">
						<fieldset>
							<legend>修改信息</legend>
							<div class="control-group">
								<label class="control-label" for="input01">原始密码(<font color="red">必填</font>)</label>
								<div class="controls">
									<input type="text" class="input-xlarge" id="input01"/>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="input01">新密码(<font color="red">必填</font>)</label>
								<div class="controls">
									<input type="text" class="input-xlarge" id="input01" />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="input01">确认新密码(<font color="red">必填</font>)</label>
								<div class="controls">
									<input type="text" class="input-xlarge" id="input01"/>
								</div>
							</div>					
							<div class="form-actions">
								<button type="submit" class="btn btn-primary">修改</button> 
								<button type="reset" class="btn">清空</button>
							</div>
						</fieldset>
					</form>
					</c:if>
					<c:if test="${msg!=null}">
						<form id="edit-profile" class="form-horizontal">
						<fieldset>
							<legend>客户留言信息</legend>
							<div class="control-group">
								<label class="control-label" for="input01">称呼</label>
								<div class="controls">
									<input type="text" class="input-xlarge" id="input01" value="${msg.mUsername }" />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="input01">联系电话</label>
								<div class="controls">
									<input type="text" class="input-xlarge" id="input01" value="${msg.mTel}" />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="input01">E-mail</label>
								<div class="controls">
									<input type="text" class="input-xlarge" id="input01" value="${msg.mEmail}" />
								</div>
							</div>					
							<div class="control-group">
								<label class="control-label" for="textarea">留言信息</label>
								<div class="controls">
									<textarea class="input-xlarge" id="textarea" rows="4">${msg.mContent }</textarea>
								</div>
							</div>
						</fieldset>
					</form>
					</c:if>
					<c:if test="${submenu!=null }">
					<form id="edit-profile" class="form-horizontal" action="<%=request.getContextPath() %>/updateSubmenu?admin" method="post">
						<fieldset>
							<legend>产品类别</legend>
							<div class="control-group">
								<label class="control-label" for="input01">产品类别名称(<font color="red">必填</font>)</label>
								<div class="controls">
									<input type="text" class="input-xlarge" value="${submenu.sTitle }" id="sTitle" name="sTitle" />
								</div>
							</div>
							<input type="hidden" value="${submenu.sId }" id="sId" name="sId" />
							<div class="form-actions">
								<button type="submit" class="btn btn-primary">修改</button> 
								<button type="reset" class="btn">清空</button>
							</div>	
						</fieldset>
					</form>
					</c:if>
				</div>
			</div>
		</div>	
	</body>
</html>