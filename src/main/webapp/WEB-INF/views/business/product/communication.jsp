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
						<strong class="title"><spring:message code="product.communication" text="통신"/><span>Communication Cable</span></strong>
						<p class="desc">
						<c:if test="${LANG eq 'ko'}">
							대한전선은 동 통신 및 광 케이블 분야의 각종 제품을 생산하며<br>
							글로벌 통신망 구축에 핵심적인 역할을 수행해 왔습니다.<br>
							세계가 인정하는 기술로 대용량의 데이터를 더 빠르고 안전하게 전송할 수 있도록<br>
							완벽한 품질의 케이블을 공급하며 통신의 미래를 앞당기겠습니다.<br>
						</c:if>
						<c:if test="${LANG eq 'en'}">
							Taihan has played a key role in establishing the global communication network by manufacturing various products in the copper communication and optical cables fields. <br>
							Taihan will continue supplying world-class cables that enable faster, safer, and larger data transmission to further advance the communication technology in the future.
						</c:if>
						</p>
					</div>
					<div class="btn-wrap">
						<a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/customer/qna?code=inqu_01" class="btn-type btn-s"><spring:message code="product.productQna" text="제품문의"></spring:message><i class="ico-arr v2"></i></a>
						<a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/customer/catalogue" class="btn-type btn-s"><spring:message code="product.catalogu" text="카탈로그 자료실"></spring:message><i class="ico-arr v2"></i></a>
					</div>
				</div>

				<div class="product-type">
					<ul class="list-depth1">
						<li>
							<strong class="title"><spring:message code="product.communicationCable1" text="동 통신케이블"/></strong>
							<ul class="list-depth2">
								<c:forEach var="item" items="${list}" varStatus="status">
								<c:if test="${item.type eq '동 통신케이블'}">
								<li><a href="javascript:void(0)" onclick="goDetail(${item.idx})">${item.dispNm}</a></li>
								</c:if>
								</c:forEach>
							</ul>
						</li>
						<li>
							<strong class="title"><spring:message code="product.opticalCable1" text="광케이블"/></strong>
							<ul class="list-depth2">
								<c:forEach var="item" items="${list}" varStatus="status">
								<c:if test="${item.type eq '광케이블'}">
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
        setmenu( 3, '020103')
    },100);
})

function goDetail(idx){
	var url = (lang == 'ko' ? '' : '/en') + "/business/product/productDetail?idx="+idx;
	location.href = url;
}
</script>