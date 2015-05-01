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

		<div class="columns_patent padding_bottom_90">
			<div class="column column_50">
			<c:forEach items="${patents }" var="patent" varStatus="status" step="2">
				<section class="accordion">
                    <p class="title <c:if test="${status.index==0}">active</c:if>" >
                        <span class="icon"></span>
                        <span class="text">${patent.paName }</span>
                    </p>
                    <div class="content column column_50">
						<ul class="dot">
							<li>申请号:&nbsp;&nbsp;${patent.paNumber}</li>
							<li>申请日:&nbsp;&nbsp;${patent.paDate }</li>
							<li>主分类号:&nbsp;&nbsp;${patent.paCategory }</li>
							<li>案件状态:&nbsp;&nbsp;${patent.paState }</li>
							<li>申请人:&nbsp;&nbsp;${patent.paPerson }</li>
							<li>代理信息:&nbsp;&nbsp;${patent.paAgent }</li>
							<li>发明人名称:&nbsp;&nbsp;${patent.paInventor }</li>
							<li><a href="http://publicquery.sipo.gov.cn/txn801507.do?select-key:startPage=0&select-key:endPage=5&select-key:currentPageNo=1&select-key:famingmc=&select-key:shenqingh=${patent.paNumber } " target="_blank">点击进入知识产权局</a></li>
						</ul>
					</div>
                </section>
            </c:forEach>
			</div>
			<div class="column column_50">
			<c:forEach items="${patents }" var="patent" varStatus="status" begin="1" step="2">
				<section class="accordion">
                    <p class="title" >
                        <span class="icon"></span>
                        <span class="text">${patent.paName }</span>
                    </p>
                    <div class="content column column_50">
						<ul class="dot">
							<li>申请号:&nbsp;&nbsp;${patent.paNumber}</li>
							<li>申请日:&nbsp;&nbsp;${patent.paDate }</li>
							<li>主分类号:&nbsp;&nbsp;${patent.paCategory }</li>
							<li>案件状态:&nbsp;&nbsp;${patent.paState }</li>
							<li>申请人:&nbsp;&nbsp;${patent.paPerson }</li>
							<li>代理信息:&nbsp;&nbsp;${patent.paAgent }</li>
							<li>发明人名称:&nbsp;&nbsp;${patent.paInventor }</li>
							<li><a href="http://publicquery.sipo.gov.cn/txn801507.do?select-key:startPage=0&select-key:endPage=5&select-key:currentPageNo=1&select-key:famingmc=&select-key:shenqingh=${patent.paNumber } " target="_blank">点击进入知识产权局</a></li>
						</ul>
					</div>
                </section>
            </c:forEach>
            </div>
		</div>
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