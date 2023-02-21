<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/views/common/taglib.jsp"/>
<section id="content" class="sub-wrap business-product">
	
	<div class="sub-visual" style="background-image: url(${CON_STATIC_URL}/asset/images/business/visual_business_01.jpg?v4)">
		<div class="sub-title">
			<h2 class="title-type"><spring:message code="product.title" text="제품"></spring:message></h2>
		</div>
	</div>

    <%-- GNB(S)--%>
    <jsp:include page="/WEB-INF/views/_decorators/inc/gnb.jsp" />
    <%-- GNB(E) --%>

    <div id="container" class="content-wrap">
		<jsp:include page="./product_top.jsp" />
		
		<div id="link" class="content-box bg">
			<div class="inner-box">

				<jsp:include page="./product_top2.jsp" />

				<div class="product-desc">
					<div class="title-box">
						<strong class="title"><c:if test="${LANG eq 'ko'}">전력 </c:if><c:if test="${LANG eq 'en'}">Power Generation</c:if><span>Power Cable</span></strong>
						<p class="desc">
							<c:if test="${LANG eq 'ko'}">
								대한전선의 전력 제품은 산업현장, 일상생활 등 우리 삶의 다양한 분야에 적용됩니다.<br>
								사회 인프라의 원활한 구동을 위해 국내∙외 전력망 구축 사업을 이끌어온 대한전선은<br>
								초고압 케이블 및 접속재, 가공선, 배전용 케이블 등 폭넓은 제품 포트폴리오를 바탕으로<br>
								송전부터 배전까지 최고 품질의 전력 제품을 적재적소에 공급합니다.<br>
							</c:if>
							<c:if test="${LANG eq 'en'}">
								Taihan's power products are applied in various fields such as industrial sites and daily life. <br>
									Leading domestic and overseas power grid construction projects for the smooth operation of social infrastructure, Taihan provides the highest quality power products in the right field where they are most needed, from transmission to distribution, with a broad product portfolio covering extra-high voltage cables and cable accessories, overhead lines, and distribution cables, etc.
							</c:if>
						</p>
					</div>
					<div class="btn-wrap pc-display">
						<a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/customer/qna?code=inqu_01" class="btn-type btn-s"><spring:message code="product.productQna" text="제품문의"></spring:message><i class="ico-arr v2"></i></a>
						<a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/customer/catalogue" class="btn-type btn-s"><spring:message code="product.catalogu" text="카탈로그 자료실"></spring:message><i class="ico-arr v2"></i></a>
					</div>
				</div>

				<div class="product-type">
					<ul class="list-depth1">
						<li class="is-depth3">
							<strong class="title"><spring:message code="product.transmission" text="송전용"/></strong>
							<ul class="list-depth2">
								<li>
									<a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/business/product/electricity/cable"><spring:message code="product.transmission1" text="초고압 케이블"/><i class="ico-arr"></i></a>
									<ul class="list-depth3">
										<c:forEach var="item" items="${list}" varStatus="status">
										<c:if test="${item.type eq '초고압 케이블'}">
										<li><a href="javascript:void(0)" onclick="goDetail(${item.idx})">${item.dispNm}</a></li>
										</c:if>
										</c:forEach>
									</ul>
									<ul class="list-depth3">
										<c:forEach var="item" items="${list}" varStatus="status">
										<c:if test="${item.type eq '초고압 케이블 접속재'}">
										<li><a href="javascript:void(0)" onclick="goDetail(${item.idx})">${item.dispNm}</a></li>
										</c:if>
										</c:forEach>
									</ul>
								</li>
								<li>
									<a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/business/product/electricity/overheadline">
									<spring:message code="product.transmission8" text="가공선"/><i class="ico-arr"></i></a>
									<ul class="list-depth3">
										<c:forEach var="item" items="${list}" varStatus="status">
										<c:if test="${item.type eq '가공선'}">
										<li><a href="javascript:void(0)" onclick="goDetail(${item.idx})">${item.dispNm}</a></li>
										</c:if>
										</c:forEach>
									</ul>
								</li>
							</ul>
						</li>
						<li>
							<strong class="title"><spring:message code="product.distribution1" text="배전용"/></strong>
							<ul class="list-depth2">
								<c:forEach var="item" items="${list}" varStatus="status">
								<c:if test="${item.type eq '배전용'}">
								<li><a href="javascript:void(0)" onclick="goDetail(${item.idx})">${item.dispNm}</a></li>
								</c:if>
								</c:forEach>
							</ul>
						</li>
						<li>
							<strong class="title"><spring:message code="product.industrial1" text="산업용"/></strong>
							<ul class="list-depth2">
								<c:forEach var="item" items="${list}" varStatus="status">
								<c:if test="${item.type eq '산업용'}">
								<li><a href="javascript:void(0)" onclick="goDetail(${item.idx})">${item.dispNm}</a></li>
								</c:if>
								</c:forEach>
							</ul>
						</li>
						<li>
							<strong class="title"><spring:message code="product.heating1" text="히팅 시스템"/></strong>
							<ul class="list-depth2">
								<c:forEach var="item" items="${list}" varStatus="status">
								<c:if test="${item.type eq '히팅 시스템'}">
								<li><a href="javascript:void(0)" onclick="goDetail(${item.idx})">${item.dispNm}</a></li>
								</c:if>
								</c:forEach>
							</ul>
						</li>
						<li>
							<strong class="title"><spring:message code="product.busduct1" text="부스덕트"/></strong>
							<ul class="list-depth2">
								<c:forEach var="item" items="${list}" varStatus="status">
								<c:if test="${item.type eq '부스덕트'}">
								<li><a href="javascript:void(0)" onclick="goDetail(${item.idx})">${item.dispNm}</a></li>
								</c:if>
								</c:forEach>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</div>

		<div class="btn-wrap t-c mo-display">
			<a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/customer/qna?code=inqu_01" class="btn-type btn-s"><spring:message code="product.productQna" text="제품문의"></spring:message><i class="ico-arr v2"></i></a>
			<a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/customer/catalogue" class="btn-type btn-s"><spring:message code="product.catalogu" text="카탈로그 자료실"></spring:message><i class="ico-arr v2"></i></a>
		</div>
		<jsp:include page="/WEB-INF/views/business/product/product_footer.jsp" />
				
    </div>
</section>
<!--//content-->

<script>
$(document).ready(function(){
    //gnb세팅
    setTimeout(function() {
        setmenu( 3, '020101')
    },100);
});

function goDetail(idx){
	var url = (lang == 'ko' ? '' : '/en') + "/business/product/productDetail?idx="+idx;
	location.href = url;
}
</script>