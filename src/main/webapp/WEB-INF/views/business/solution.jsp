<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/views/common/taglib.jsp"/>
<section id="content" class="sub-wrap business">
	
	<div class="sub-visual" style="background-image: url(${CON_STATIC_URL}/asset/images/business/visual_business_02.jpg)">
		<div class="sub-title">
			<h2 class="title-type"><spring:message code="solution.title" text="솔루션"></spring:message></h2>
		</div>
	</div>

    <%-- GNB(S)--%>
    <jsp:include page="/WEB-INF/views/_decorators/inc/gnb.jsp" />
    <%-- GNB(E) --%>

    <div id="container" class="content-wrap">
    	<div class="content-box">
			<div class="inner-box">
				<div class="title-wrap v2">
					<h3 class="title-type">
						<spring:message code="solution.subTitle1" text='각 산업에 최적화된 솔루션으로 <br class="mo-br">고객 만족을 극대화합니다.'></spring:message>
					</h3>
					<p><spring:message code="solution.subTitle" text="일상 생활부터 산업 현장까지, 대한전선은 사회 인프라의 원활한 구동을 위한 토탈 솔루션을 제시합니다.<br>
					최고의 제품과 기술에 열정을 더해, 전 세계 고객과 함께 더 나은 미래로 나아가겠습니다."></spring:message></p>
				</div>

				<div class="solution-wrap">
					<ul>
						<li>
							<a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/business/solutionDetail?idx=${list[0].idx}">
								<div class="img-flex">
									<img src="${CON_UPLOAD_URL}${list[0].sysThumImgFile}" onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';" alt="">
								</div>
								<div class="title-box">
									<strong class="title">${list[0].title}<i class="ico-more"></i></strong>
									<p class="desc">${list[0].desc}</p>
								</div>
							</a>
						</li>
						<li>
							<a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/business/solutionDetail?idx=${list[1].idx}">
								<div class="img-flex">
									<img src="${CON_UPLOAD_URL}${list[1].sysThumImgFile}" onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';" alt="">
								</div>
								<div class="title-box">
									<strong class="title">${list[1].title}<i class="ico-more"></i></strong>
									<p class="desc">${list[1].desc}</p>
								</div>
							</a>
						</li>
						<li class="contact">
							<a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/customer/qna?code=inqu_01">
								<div class="img-flex"></div>
								<div class="title-box">
									<span class="sub">Contact us</span>
									<strong class="title"><spring:message code="solution.qna" text="솔루션 문의"></spring:message><i class="ico-arr v2"></i></strong>
								</div>
								<i class="ico-contact"></i>
							</a>
						</li>
						<c:forEach var="item" items="${list}" varStatus="status">
						<c:if test="${status.index > 1}">
						<li>
							<a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/business/solutionDetail?idx=${item.idx}">
								<div class="img-flex">
									<img src="${CON_UPLOAD_URL}${item.sysThumImgFile}" onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';" alt="">
								</div>
								<div class="title-box">
									<strong class="title">${item.title}<i class="ico-more"></i></strong>
									<p class="desc">${item.desc}</p>
								</div>
							</a>
						</li>
						</c:if>
						</c:forEach>
					</ul>
				</div>
			</div>
		</div>
		<jsp:include page="/WEB-INF/views/business/product/product_footer.jsp" />
    </div>
</section>
<!--//content-->

<script>
$(document).ready(function(){
    //gnb세팅
    setTimeout(function() {
        setmenu( 2, '0202')
    },100);
})
</script>