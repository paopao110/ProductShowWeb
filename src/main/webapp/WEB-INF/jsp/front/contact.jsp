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
	<jsp:include page="common/header.jsp"></jsp:include>
	<!-- END TITLEBAR -->



	<!-- BEGIN ARTICLE -->
	<article class="columns page_text contact" id="content">
	
		<header class="title">
			<h1><strong>联系我们</strong></h1>
		</header>


		<!-- BEGIN INFORMATIONS -->
		<div class="column column_25">
		
			<h3>Info</h3>
			
			<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Vestibulum, dolor sit amet, varius laoreet. Morbi justo.<br /> <strong>Phasellus adipiscing</strong>.</p>
			
			<div class="contact-data">
				<p><strong>联系方式:</strong></p>
				
				<dl>
					<dt>E-mail:</dt>
					<dd><a href="mailto:contact@newcore.com">contact@newcore.com</a></dd>
				</dl>
				
				<dl>
					<dt>联系电话:</dt>
					<dd>555 124 555</dd>
				</dl>
				<dl>
					<dt>&nbsp;</dt>
					<dd>555 124 554</dd>
				</dl>
				
			</div>
			
			<div class="contact-data">
				<p><strong>联系地址:</strong></p>
				<p>Seint - Merri 50/01</p>
				<p>Pairs, France</p>
			</div>

		</div>
		<!-- END INFORMATIONS -->


		<!-- BEGIN FORM -->
		<div class="column column_75">
		
			<h3><strong>有什么问题，发给我们吧</strong></h3>
			
			<form action="#" id="contact" />
				<fieldset class="form">
					<ul>
						<li>
							<label>* 称呼:</label>
							<input type="text" id="name" class="req" />
						</li>
						
						<li>
							<label>* 联系电话:</label>
							<input type="text" id="telphone" class="req"/>
						</li>

						<li>
							<label>* E-mail:</label>
							<input type="text" id="email" class="req" />
						</li>
					</ul>
					<p>
						<label>* 咨询内容:</label>
						<textarea id="message" class="req"></textarea>
					</p>
					
					<p>
						<button type="submit" class="button blue arrow">提交信息</button>
					</p>
				</fieldset>
				<fieldset class="thanks">
					<h3>Mail Sent</h3>
					<p>We will reply as soon as possible.</p>
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