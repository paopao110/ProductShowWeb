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
				<h1>In eros ultrices posuere risus. </h1>
				
				<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Vestibulum, dolor sit amet, varius laoreet. Morbi justo. <strong>Phasellus adipiscing</strong>. Nunc vitae arcu magna, gravida wisi id lacus. Vivamus est ullamcorper orci a adipiscing gravida tempor, tortor lacus tellus enim, malesuada augue pulvinar mollis, purus dolor vel lorem ligula, in tortor metus nec turpis et lectus. Mauris nec adipiscing elit.</p>

				<p>Sed in velit vitae lorem semper risus. Etiam at libero. Cum sociis natoque penatibus et ultrices posuere vitae, sollicitudin eu, eleifend tincidunt, mi libero, pulvinar mollis. Nulla facilisi. Phasellus sagittis eu, dapibus eu, rhoncus suscipit. Suspendisse pede. Sed egestas sodales, augue nec velit. Nullam augue nec</p>
				
				<cite>Integer adipiscing. Mauris imperdiet faucibus orci ut massa. Nam lacus. Vivavel turpis tellus, condimentum urna, placerat consequat.</cite>
				

				<p>Nunc neque, fringilla at, mattis feugiat eget, suscipit id, luctus et netus et ultrices posuere, tempor id, orci. Cum sociis natoque penatibus et imperdiet dignissim id, tortor. Phasellus vitae mauris. Cras nec eros. Fusce in nulla erat sed massa. Maecenas lacus. Nullam wisi bibendum sem, vulputate aliquam eget, orci.</p>
			
			</div>

		</div>
		
		
		<!-- START COMMENTS -->
		<section id="comments">
		
			<h1>Comments (4)</h1>

			<ul>
				<li>
					<div class="post">
						<div class="photo">
							<img src="<%=request.getContextPath()%>/src/img/examples/comments_1.jpg" alt="NewCore" />
						</div>
						<article>
							<p class="meta">
								<span class="icon date">June 7, 2012 at 20:30</span>
								<span class="icon user">NewCore</span>
								<a href="#" class="reply">Reply</a>
							</p>
							<p>Cum sociis natoque penatibus et imperdiet dignissim id, tortor.</p>
						</article>
					</div>
				</li>
				<li>
					<div class="post">
						<div class="photo">
							<img src="<%=request.getContextPath()%>/src/img/examples/comments_2.jpg" alt="NewCore" />
						</div>
						<article>
							<p class="meta">
								<span class="icon date">June 7, 2012 at 20:30</span>
								<span class="icon user">NewCore</span>
								<a href="#" class="reply">Reply</a>
							</p>
							<p>Nullam wisi bibendum sem, vulputate aliquam eget, orci.</p>
						</article>
					</div>

					<ul>
						<li>
							<div class="post">
								<div class="photo">
									<img src="<%=request.getContextPath()%>/src/img/examples/comments_3.jpg" alt="NewCore" />
								</div>
								<article>
									<p class="meta">
										<span class="icon date">June 7, 2012 at 20:30</span>
										<span class="icon user">NewCore</span>
										<a href="#" class="reply">Reply</a>
									</p>
									<p>Your right!</p>
								</article>
							</div>
						</li>
					</ul>

				</li>
				<li>
					<div class="post">
						<div class="photo">
							<img src="<%=request.getContextPath()%>/src/img/examples/comments_4.jpg" alt="NewCore" />
						</div>
						<article>
							<p class="meta">
								<span class="icon date">June 7, 2012 at 20:30</span>
								<span class="icon user">NewCore</span>
								<a href="#" class="reply">Reply</a>
							</p>
							<p>Integer adipiscing. Mauris imperdiet faucibus orci ut massa. Nam lacus. Vivamus vel turpis tellus, condimentum urna, placerat consequat. Cum sociis natoque penatibus et ultrices posuere cubilia!</p>
						</article>
					</div>
				</li>
			</ul>
		
		</section>
		<!-- END COMMENTS -->
		
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