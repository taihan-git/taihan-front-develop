<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/views/common/taglib.jsp"/>
<section id="content" class="sub-wrap business-product">
	
	<div class="sub-visual" style="background-image: url(${CON_STATIC_URL}/asset/images/business/visual_business_01.jpg)">
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
						<strong class="title"><c:if test="${LANG eq 'ko'}">신재생</c:if><c:if test="${LANG eq 'en'}">Renewable Energy</c:if><span>Renewable Energy Cable</span></strong>
						<p class="desc">
						<c:if test="${LANG eq 'ko'}">
							<!-- 2022-11-15 수정 -->
							재생에너지 중심의 에너지 전환은<br>
							지속가능한 미래 사회 조성을 위한 전 지구적 과제입니다.<br>
							대한전선은 이러한 변화에 발맞추어 해상풍력, 태양광 등 신재생에너지 발전에 필요한<br>
							다양한 제품을 개발 및 생산하고 있습니다.
							<!-- //2022-11-15 수정 -->
						</c:if>
						<c:if test="${LANG eq 'en'}">
							In order to create a sustainable future, energy transition centered on renewable energy has become a global responsibility. <br>
							To keep pace with the changes, Taihan has been developing and manufacturing products to generate new and renewable energy, including offshore wind power and solar power.
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
						<li>
							<strong class="title"><spring:message code="product.renewCable1" text="신재생 케이블"></spring:message></strong>
							<ul class="list-depth2">
								<c:forEach var="item" items="${list}" varStatus="status">
								<c:if test="${item.type eq '신재생 케이블'}">
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
        setmenu( 3, '020102')
    },100);
})

function goDetail(idx){
	var url = (lang == 'ko' ? '' : '/en') + "/business/product/productDetail?idx="+idx;
	location.href = url;
}
</script>