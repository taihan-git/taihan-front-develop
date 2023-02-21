<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/views/common/taglib.jsp"/>
<section id="content" class="sub-wrap business-3depth">
	
	<div class="sub-visual" style="background-image: url(${CON_STATIC_URL}/asset/images/business/visual_business_01_01.jpg)">
		<div class="sub-title">
			<h2 class="title-type"><c:if test="${LANG eq 'ko'}">전력</c:if><c:if test="${LANG eq 'en'}">Power Generation</c:if></h2>
		</div>
	</div>

    <%-- GNB(S)--%>
    <jsp:include page="/WEB-INF/views/_decorators/inc/gnb.jsp" />
    <%-- GNB(E) --%>

    <div id="container" class="content-wrap">
		<div class="content-box">
			<div class="inner-box">
				<div class="title-wrap">
					<h3 class="title-type"><c:if test="${LANG eq 'ko'}">초고압 케이블 </c:if><c:if test="${LANG eq 'en'}">Extra-High Voltage Cables</c:if></h3>
					<div class="side-box btn-box">
						<a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/customer/qna?code=inqu_01" class="btn-type btn-s v3"><spring:message code="product.productQna" text="제품문의"></spring:message><i class="ico-arr v2"></i></a>
						<a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/customer/catalogue" class="btn-type btn-s v3"><spring:message code="product.catalogu" text="카탈로그 자료실"></spring:message><i class="ico-arr v2"></i></a>
					</div>
				</div>
			</div>
		</div>
		
		<div class="product-intro">
			<div class="inner-box">
				<c:if test="${LANG eq 'ko'}">
				<div class="text-box">
					국내 최초, 세계 9번째로 154kV OF 케이블 개발에 성공하며 초고압 시대를 연 대한전선은<br>
					전 세계 곳곳에 고품질의 초고압 케이블을 공급하는 선두 업체로 자리매김했습니다.<br>
					특히, 초고압케이블 시스템 분야의 글로벌 탑 경쟁력을 보유하고 있으며<br>
					기술 개발 및 품질 향상을 위한 끊임없는 혁신으로 고객에게 차별화된 가치를 제공합니다.<br>
				</div>
				</c:if>
				<c:if test="${LANG eq 'en'}">
				<div class="text-box">
					Taihan opened the era of extra-high voltage by successfully developing 154kV OF cable<br>
					for the first time in Korea and the 9th in the world and has established itself as a leading supplier<br>
					of high quality extra-high voltage cables to many regions around the world.<br>
					In particular, with this global top competitiveness of extra-high voltage cable system,<br>
					and continuous innovation for technology development and quality improvement,<br>
					Taihan has been providing remarkable and differentiated value to the customers.
				</div>
				</c:if>
			</div>
		</div>
		
		<div class="content-box">
			<div class="inner-box">
				<div class="title-wrap2">
					<h4 class="title-type"><c:if test="${LANG eq 'ko'}">케이블</c:if><c:if test="${LANG eq 'en'}">Cables</c:if></h4>
				</div>

				<div class="board-wrap">
					<div class="board-body">
						<ul class="list-gallery">
							<c:forEach var="item" items="${list}" varStatus="status">
							<c:if test="${item.idx <= 6}">
							<li>
								<a href="javascript:void(0)" onclick="goDetail(${item.idx})" class="list-item">
									<div class="img-flex v2">
										<img src="${CON_UPLOAD_URL}${item.imgPaths}" onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';" alt="">
									</div>
									<strong class="title">${item.title}</strong>
								</a>
							</li>
							</c:if>
							</c:forEach>
						</ul>
					</div>
				</div>
			</div>
		</div>
		
		<div class="content-box">
			<div class="inner-box">
				<div class="title-wrap2">
					<h4 class="title-type"><c:if test="${LANG eq 'ko'}">접속재</c:if><c:if test="${LANG eq 'en'}">Accessories</c:if> </h4>
				</div>

				<div class="board-wrap">
					<div class="board-body">
						<ul class="list-gallery">
							<c:forEach var="item" items="${list}" varStatus="status">
							<c:if test="${item.idx >= 7 && item.idx <= 12 }">
							<li>
								<a href="javascript:void(0)" onclick="goDetail(${item.idx})" class="list-item">
									<div class="img-flex v2">
										<img src="${CON_UPLOAD_URL}${item.imgPaths}" onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';" alt="">
									</div>
									<strong class="title">${item.title}</strong>
								</a>
							</li>
							</c:if>
							</c:forEach>
						</ul>
					</div>
				</div>
			</div>
		</div>
		
		<jsp:include page="./related_content.jsp" />
		<jsp:include page="./related_solution.jsp" />
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