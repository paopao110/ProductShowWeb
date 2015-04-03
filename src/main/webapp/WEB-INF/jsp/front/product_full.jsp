<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
	
	<title>产品详情</title>
	<jsp:include page="common/headerSrc.jsp"></jsp:include>  
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<body>

<div id="page">

	<!-- BEGIN TITLEBAR -->
	<jsp:include page="common/header/header_product.jsp"></jsp:include>
	<!-- END TITLEBAR -->


	<!-- BEGIN ARTICLE -->
	<article class="blog full page_text" id="content">

		<header>
			<img src="<%=request.getContextPath()%>/src/img/examples/blog_big.jpg" alt="" />
		</header>

		<div class="columns">
		
			<div class="column column_25">
				<p class="icon date">21.11.2011</p>

				<p class="icon user">NewCore</p>

				<p class="icon comments">
					<a href="#"><strong>4</strong> comments</a>
				</p>
			</div>


			<div class="column article">
				<h1>产品名称 XXXXX </h1>
				
				<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Vestibulum, dolor sit amet, varius laoreet. Morbi justo. <strong>Phasellus adipiscing</strong>. Nunc vitae arcu magna, gravida wisi id lacus. Vivamus est ullamcorper orci a adipiscing gravida tempor, tortor lacus tellus enim, malesuada augue pulvinar mollis, purus dolor vel lorem ligula, in tortor metus nec turpis et lectus. Mauris nec adipiscing elit.</p>

				<p>Sed in velit vitae lorem semper risus. Etiam at libero. Cum sociis natoque penatibus et ultrices posuere vitae, sollicitudin eu, eleifend tincidunt, mi libero, pulvinar mollis. Nulla facilisi. Phasellus sagittis eu, dapibus eu, rhoncus suscipit. Suspendisse pede. Sed egestas sodales, augue nec velit. Nullam augue nec</p>
				
				<cite>Integer adipiscing. Mauris imperdiet faucibus orci ut massa. Nam lacus. Vivavel turpis tellus, condimentum urna, placerat consequat.</cite>
				

				<p>Nunc neque, fringilla at, mattis feugiat eget, suscipit id, luctus et netus et ultrices posuere, tempor id, orci. Cum sociis natoque penatibus et imperdiet dignissim id, tortor. Phasellus vitae mauris. Cras nec eros. Fusce in nulla erat sed massa. Maecenas lacus. Nullam wisi bibendum sem, vulputate aliquam eget, orci.</p>
			
			</div>

		</div>
		
		
	</article>
	<!-- END ARTICLE -->
	
	<!-- START SIDEBAR -->
	<jsp:include page="common/rightbar.jsp"></jsp:include>	
	<!-- END SIDEBAR -->
	
</div>
<!--  END PAGE -->

<!--  START FOOTER -->
  <jsp:include page="common/footer.jsp"></jsp:include>
<!--  END FOOTER -->



</body>
</html>