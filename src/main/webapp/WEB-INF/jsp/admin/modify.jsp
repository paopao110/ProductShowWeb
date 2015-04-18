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
		<link rel="stylesheet" href="<%=request.getContextPath()%>/src/js/validator/jquery.validator.css"> 
	</head>
	<body>
		<div class="container">
			<jsp:include page="common/menubar.jsp"/>
			<div class="row">
				<jsp:include page="common/leftbar.jsp"></jsp:include>
				<div class="span9">
				<c:if test="${user!=null}">
					<form id="edit-profile" class="form-horizontal" action="<%=request.getContextPath() %>/modifypass?admin"  autocomplete="off" method="post">
						<fieldset>
							<legend><a href="#" onclick="history.go(-1)">返回</a>&nbsp;>&nbsp;修改信息</legend>
							<div class="control-group">
								<label class="control-label" for="input01">原始密码(<font color="red">必填</font>)</label>
								<div class="controls">
									<input type="text" class="input-xlarge" id="aPasswd" name="aPasswd" data-rule="required;"/>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="input01">新密码(<font color="red">必填</font>)</label>
								<div class="controls">
									<input type="text" class="input-xlarge" id="nPasswd" name="nPasswd" data-rule="required;"/>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="input01">确认新密码(<font color="red">必填</font>)</label>
								<div class="controls">
									<input type="text" class="input-xlarge" id="rnPasswd" name="rnPasswd" data-rule="required;"/>
								</div>
							</div>		
							<input type="hidden" class="input-xlarge" id="aName" name="aName" value="<%=session.getAttribute("ADMINUSERSESSION")%>"/>			
							<div class="form-actions">
								<button type="submit" class="btn btn-primary">修改</button> 
								<button type="reset" class="btn">清空</button>
							</div>
						</fieldset>
					</form>
					</c:if>
					<c:if test="${modifyPassInfo!=null}">
						<fieldset>
							<legend><a href="#" onclick="history.go(-1)">返回</a>&nbsp;>&nbsp;密码修改结果</legend>
						<div align="center">${modifyPassInfo }</div>
						</fieldset>
					</c:if>
					<c:if test="${msg!=null}">
						<form id="edit-profile" class="form-horizontal">
						<fieldset>
							<legend><a href="#" onclick="history.go(-1)">返回</a>&nbsp;>&nbsp;客户留言信息</legend>
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
					<form id="edit-profile" class="form-horizontal" action="<%=request.getContextPath() %>/updateSubmenu?admin" autocomplete="off" method="post">
						<fieldset>
							<legend><a href="#" onclick="history.go(-1)">返回</a>&nbsp;>&nbsp;产品类别</legend>
							<div class="control-group">
								<label class="control-label" for="input01">产品类别名称(<font color="red">必填</font>)</label>
								<div class="controls">
									<input type="text" class="input-xlarge" value="${submenu.sTitle }" id="sTitle" name="sTitle" data-rule="required;"/>
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
					<c:if test="${product!=null}">
						<form id="edit-profile" class="form-horizontal" action="<%=request.getContextPath() %>/updateProduct?admin" autocomplete="off" method="post">
						<fieldset>
							<legend><a href="#" onclick="history.go(-1)">返回</a>&nbsp;>&nbsp;产品信息</legend>
							<div class="control-group">
								<label class="control-label" for="input01">产品信息名称(<font color="red">必填</font>)</label>
								<div class="controls">
									<input type="text" class="input-xlarge" id="pTitle" name="pTitle" value="${product.pTitle }" data-rule="required;"/>
								</div>
							</div>
							 <div class="control-group">
								<label class="control-label" for="input01">产品类别(<font color="red">必选</font>)</label>
								<div class="controls">
									<select class="input-xlarge" id="sId" name="sId" data-rule="required;select">
										<option value="-1">选择类别</option>
										<c:forEach items="${submenus}" var="sub">
											<c:if test="${product.sId==sub.sId }">
											<option value="${sub.sId }" selected="selected">${sub.sTitle }</option>
											</c:if>
											<c:if test="${product.sId!=sub.sId }">
												<option value="${sub.sId }">${sub.sTitle }</option>
											</c:if>
										</c:forEach>
									</select>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="textarea">产品信息简介(<font color="red">选填</font>)</label>
								<div class="controls">
									<textarea class="input-xlarge" id="textarea" rows="2" id="pSummary" name="pSummary">${product.pSummary }</textarea>
								</div>
							</div>			
							<div class="control-group">
								<label class="control-label" for="textarea">产品信息描述(<font color="red">必填</font>)</label>
								<div class="controls">
									<textarea class="input-xlarge" id="textarea" rows="4" id="pContent" name="pContent" data-rule="required;">${product.pContent }</textarea>
								</div>
							</div>
							<input type="hidden" value="${product.pId }" id="pId" name="pId" />		
							<div class="form-actions">
								<button type="submit" class="btn btn-primary">修改</button> 
								<button type="reset" onclick="viewimage('${product.pId }')" class="btn">查看产品图片</button>
								<button type="reset" onclick="addimage('${product.pId }')" class="btn">添加产品图片</button>
							</div>
							
						</fieldset>
					</form>
					</c:if>
					<c:if test="${patent!=null}">
					<form id="edit-profile" class="form-horizontal" action="<%=request.getContextPath() %>/updatePatent?admin" autocomplete="off" method="post">
						<fieldset>
							<legend>修改专利信息</legend>
							<div class="control-group">
								<label class="control-label" for="input01">专利名称</label>
								<div class="controls">
									<input type="text" class="input-xlarge" id="paName" name="paName" value="${patent.paName }" data-rule="required;"/>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="input01">申请号</label>
								<div class="controls">
									<input type="text" class="input-xlarge" id="paNumber" name="paNumber" value="${patent.paNumber }" data-rule="required;"/>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="input01">申请日</label>
								<div class="controls">
									<input type="text" class="input-xlarge" id="paDate" name="paDate" value="${patent.paDate }" data-rule="required;"/>
								</div>
							</div> 					
							<div class="control-group">
								<label class="control-label" for="input01">主分类号</label>
								<div class="controls">
									<input type="text" class="input-xlarge" id="paCategory" name="paCategory" value="${patent.paCategory }" data-rule="required;"/>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="input01">案件状态</label>
								<div class="controls">
									<input type="text" class="input-xlarge" id="paState" name="paState" value="${patent.paState }" data-rule="required;"/>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="input01">申请人</label>
								<div class="controls">
									<input type="text" class="input-xlarge" id="paPerson" name="paPerson" value="${patent.paPerson }" data-rule="required;"/>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="input01">代理信息</label>
								<div class="controls">
									<input type="text" class="input-xlarge" id="paAgent" name="paAgent" value="${patent.paAgent }" data-rule="required;"/>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="input01">发明人名称</label>
								<div class="controls">
									<input type="text" class="input-xlarge" id="paInventor" name="paInventor" value="${patent.paInventor }" data-rule="required;"/>
								</div>
							</div>	
							<input type="hidden"  id="paId" name="paId" value="${patent.paId }"/>
							<div class="form-actions">
								<button type="submit" class="btn btn-primary">修改</button> 
								<button class="btn">清空</button>
							</div>
							
						</fieldset>
					</form>
					</c:if>
				</div>
			</div>
		</div>	
	</body>
	<script type="text/javascript">
		function viewimage(pid){
			window.open("/ProductShowWeb/"+pid+"/viewImage?admin",'newwindow','height=650,width=800,top=0,left=0,toolbar=no,menubar=no,scrollbars=no,resizable=no,status=no');
		}
		function addimage(pid){
			window.open("/ProductShowWeb/"+pid+"/addImagePage?admin",'newwindow','height=530,width=800,top=0,left=0,toolbar=no,menubar=no,scrollbars=no,resizable=no,location=no,status=no');
		}
	</script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/src/js/jquery.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/src/js/validator/jquery.validator.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/src/js/validator/local/zh_CN.js"></script>
	
</html>
