<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
	<title>联系我们</title>
	<jsp:include page="common/headerSrc.jsp"></jsp:include>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>

<div id="page">

	<!-- BEGIN TITLEBAR -->
	<jsp:include page="common/header/header_contact.jsp"></jsp:include>
	<!-- END TITLEBAR -->



	<!-- BEGIN ARTICLE -->
	<article class="columns page_text contact" id="content">
	
		<header class="title">
			<h1><strong>联系我们</strong></h1>
		</header>


		<!-- BEGIN INFORMATIONS -->
		<div class="column column_25">
		
			<h3>说点啥</h3>
			
			<p>瞎说点啥吧，啊啊啊<br /> <strong>有没有戏呢，看看再说吧</strong>.</p>
			
			<jsp:include page="common/contactbar.jsp"></jsp:include>
			
			

		</div>
		<!-- END INFORMATIONS -->


		<!-- BEGIN FORM -->
		<div class="column column_75">
		
			<h3><strong>有什么问题，发给我们吧</strong></h3>
			
			<form action="#" id="contact" method="post">
				<fieldset class="form">
					<ul>
						<li>
							<label>* 称呼(必填):</label>
							<input type="text" id="name" class="req" />
						</li>
						
						<li>
							<label>* 联系电话(必填):</label>
							<input type="text" id="telphone" class="req"/>
						</li>

						<li>
							<label>* E-mail(必填):</label>
							<input type="text" id="email" class="req" />
						</li>
					</ul>
					<p>
						<label>* 咨询内容(必填):</label>
						<textarea id="message" class="req"></textarea>
					</p>
					
					<p>
						<button type="submit" class="button blue arrow">提交信息</button>
					</p>
				</fieldset>
				<fieldset class="thanks">
					<h3><strong><font color="green">提交成功</font></strong></h3>
					<p>我们会很快给您一个答复.</p>
				</fieldset>
			</form>
		
		</div>
		<!-- END FORM -->
	</article>
	<!-- END ARTICLE -->

</div>
<!--  END PAGE -->

<!--  START FOOTER -->
  <jsp:include page="common/footer.jsp"></jsp:include>
<!--  END FOOTER -->
</body>
</html>