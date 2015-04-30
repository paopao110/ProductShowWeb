<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
	
	<title>技术专利</title>
	<jsp:include page="common/headerSrc.jsp"></jsp:include>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<body>

<div id="page">

	<!-- BEGIN TITLEBAR -->
	<jsp:include page="common/header/header_patent.jsp"></jsp:include>
	<!-- END TITLEBAR -->


	<!-- BEGIN ARTICLE -->
	<article class="typography page_text" id="content">
	
		<header class="page_text title">
			<h1>技术 专利</h1>
		</header>

		<div class="clear"></div>
		
		<!-- START jQUERY TOGGLES -->

<!-- 		<div class="columns padding_bottom_90"> -->

<!-- 			<div class="column column_50"> -->
			<%int i = 1; %>
			<c:forEach items="${patents }" var="patent">
				<section class="accordion">
                    <p class="title ">
                        <span class="icon"></span>
                        <span class="text">专利<%=i++ %></span>
                    </p>
                    
                    <div class="content column column_50">
						<ul class="minus">
							<li>申请号:${patent.paNumber }</li>
							<li>申请日:${patent.paDate }</li>
							<li>主分类号:${patent.paCategory }</li>
							<li>案件状态:${patent.paState }</li>
							<li>申请人:${patent.paPerson }</li>
							<li>代理信息:${patent.paAgent }</li>
							<li>发明人名称${patent.paInventor }</li>
							<li><a href="http://publicquery.sipo.gov.cn/txn801507.do?select-key:startPage=0&select-key:endPage=5&select-key:currentPageNo=1&select-key:famingmc=&select-key:shenqingh=${patent.paNumber } " target="_blank">点击进入知识产权局</a></li>
						</ul>
					</div>
                </section>
			</c:forEach>
		
                
                <!-- <section class="accordion">
                    <p class="title active">
                        <span class="icon"></span>
                        <span class="text">专利二</span>
                    </p>
                    
                    <div class="content column column_50">
						<ul class="minus">
							<li>Pretium eget, nulla. Etiam accum! Tristique!</li>
							<li>Phasellus consequat.</li>
							<li>Etiam at adipiscing wisi. Donec tortor. </li>
						</ul>
					</div>
                </section>
                
                <section class="accordion">
                    <p class="title">
                        <span class="icon"></span>
                        <span class="text">专利三</span>
                    </p>
                    
                    <div class="content column column_50">
						<ul class="minus">
							<li>Pretium eget, nulla. Etiam accum! Tristique!</li>
							<li>Phasellus consequat.</li>
							<li>Etiam at adipiscing wisi. Donec tortor. </li>
						</ul>
					</div>
                </section> -->

<!-- 			</div> -->
			
<!-- 			<div class="column column_50"> -->

<!-- 				<section class="accordion"> -->
<!--                     <p class="title"> -->
<!--                         <span class="icon"></span> -->
<!--                         <span class="text">专利四</span> -->
<!--                     </p> -->
                    
<!--                     <div class="content column column_50"> -->
<!-- 						<ul class="minus"> -->
<!-- 							<li>Pretium eget, nulla. Etiam accum! Tristique!</li> -->
<!-- 							<li>Phasellus consequat.</li> -->
<!-- 							<li>Etiam at adipiscing wisi. Donec tortor. </li> -->
<!-- 						</ul> -->
<!-- 					</div> -->
<!--                 </section> -->
                
<!--                 <section class="accordion"> -->
<!--                     <p class="title"> -->
<!--                         <span class="icon"></span> -->
<!--                         <span class="text">专利五</span> -->
<!--                     </p> -->
                    
<!--                     <div class="content column column_50"> -->
<!-- 						<ul class="minus"> -->
<!-- 							<li>Pretium eget, nulla. Etiam accum! Tristique!</li> -->
<!-- 							<li>Phasellus consequat.</li> -->
<!-- 							<li>Etiam at adipiscing wisi. Donec tortor. </li> -->
<!-- 						</ul> -->
<!-- 					</div> -->
<!--                 </section> -->
                
<!--                 <section class="accordion"> -->
<!--                     <p class="title"> -->
<!--                         <span class="icon"></span> -->
<!--                         <span class="text">专利六</span> -->
<!--                     </p> -->
                    
<!--                     <div class="content column column_50"> -->
<!-- 						<ul class="minus"> -->
<!-- 							<li>Pretium eget, nulla. Etiam accum! Tristique!</li> -->
<!-- 							<li>Phasellus consequat.</li> -->
<!-- 							<li>Etiam at adipiscing wisi. Donec tortor. </li> -->
<!-- 						</ul> -->
<!-- 					</div> -->
<!--                 </section> -->

<!-- 			</div> -->
			
<!-- 		</div> -->
		<!-- END jQUERY TOGGLES -->


	</article>
	<!-- END ARTICLE -->
	
</div>
<!--  END PAGE -->

<!--  START FOOTER -->
  <jsp:include page="common/footer.jsp"></jsp:include>
<!--  END FOOTER -->

</body>
</html>