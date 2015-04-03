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
					<c:if test="${submenuPage==true }">
					<form id="edit-profile" class="form-horizontal" action="<%=request.getContextPath() %>/addSubmenu?admin" method="post">
						<fieldset>
							<legend>产品类别</legend>
							<div class="control-group">
								<label class="control-label" for="input01">产品类别名称(<font color="red">必填</font>)</label>
								<div class="controls">
									<input type="text" class="input-xlarge" id="sTitle" name="sTitle" />
								</div>
							</div>				
							<div class="form-actions">
								<button type="submit" class="btn btn-primary">添加</button> 
								<button type="reset" class="btn">清空</button>
							</div>	
						</fieldset>
					</form>
					</c:if>
					<c:if test="${productPage==true }">
					<form id="edit-profile" class="form-horizontal">
						<fieldset>
							<legend>产品信息</legend>
							<div class="control-group">
								<label class="control-label" for="input01">产品信息名称(<font color="red">必填</font>)</label>
								<div class="controls">
									<input type="text" class="input-xlarge" id="input01" />
								</div>
							</div>
							 <div class="control-group">
								<label class="control-label" for="input01">产品类别(<font color="red">必选</font>)</label>
								<div class="controls">
									<select class="input-xlarge">
										<option value="-1">请选择类别</option>
										<option value="1">sss想念你呢</option>
										<option value="1">ssssss</option>
									</select>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="textarea">产品信息简介(<font color="red">必填</font>)</label>
								<div class="controls">
									<textarea class="input-xlarge" id="textarea" rows="2"></textarea>
								</div>
							</div>			
							<div class="control-group">
								<label class="control-label" for="textarea">产品信息描述(<font color="red">必填</font>)</label>
								<div class="controls">
									<textarea class="input-xlarge" id="textarea" rows="4"></textarea>
								</div>
							</div>						
							<div class="form-actions">
								<button type="submit" class="btn btn-primary">添加</button> 
								<button type="reset" class="btn">清空</button>
							</div>
							
						</fieldset>
					</form>
					</c:if>
					<c:if test="${patentPage==true }">
					<form id="edit-profile" class="form-horizontal">
						<fieldset>
							<legend>添加专利信息</legend>
							<div class="control-group">
								<label class="control-label" for="input01">产品信息名称</label>
								<div class="controls">
									<input type="text" class="input-xlarge" id="input01" value="John Smith" />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="input01">新密码</label>
								<div class="controls">
									<input type="text" class="input-xlarge" id="input01" value="555 555 555" />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="input01">确认新密码</label>
								<div class="controls">
									<input type="text" class="input-xlarge" id="input01" value="john.smith@example.org" />
								</div>
							</div> 
							<div class="control-group">
								<label class="control-label" for="fileInput">Photo</label>
								<div class="controls">
									<input class="input-file" id="fileInput" type="file" />
								</div>
							</div>						
							<div class="control-group">
								<label class="control-label" for="textarea">Biography</label>
								<div class="controls">
									<textarea class="input-xlarge" id="textarea" rows="4">Web technology junkie who writes innovative and bestselling technical books. Also enjoys Sunday bicycle rides and all "good" comedy.</textarea>
								</div>
							</div>						
							<div class="form-actions">
								<button type="submit" class="btn btn-primary">修改</button> <button class="btn">Cancel</button>
							</div>
							
						</fieldset>
					</form>
					</c:if>
					
				</div>
			</div>
		</div>	
	</body>
</html>
