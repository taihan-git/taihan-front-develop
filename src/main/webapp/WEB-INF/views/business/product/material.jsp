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
						<strong class="title"><spring:message code="product.material" text="소재"/><span>Base Metal</span></strong>
						<p class="desc">
						<c:if test="${LANG eq 'ko'}">
							Copper Rod, 권선 등의 소재는 전기, 전자, 중공업 등 주요 산업의 기초가 됩니다.<br>
							대한전선은 최신 SCR 설비와 지속적인 기술 개발, 풍부한 설비 운영 경험을 바탕으로<br>
							보다 안정적이고 효율적인 고품질 소재를 공급합니다.<br>
						</c:if>
						<c:if test="${LANG eq 'en'}">
							Copper rods and magnet wires are base metals for major industries such as electricity, electronics, and heavy industry. Taihan has been supplying more stable and efficient high-quality base metals based on the latest SCR facility, consistent technology development, and wide experience in facility management.
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
							<strong class="title"><spring:message code="product.material" text="소재"/></strong>
							<ul class="list-depth2">
								<c:forEach var="item" items="${list}" varStatus="status">
								<c:if test="${item.type eq '소재'}">
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
        setmenu( 3, '020104')
    },100);
})

function goDetail(idx){
	var url = (lang == 'ko' ? '' : '/en') + "/business/product/productDetail?idx="+idx;
	location.href = url;
}
</script>