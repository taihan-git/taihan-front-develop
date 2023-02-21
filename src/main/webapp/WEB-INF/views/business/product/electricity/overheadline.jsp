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
					<h3 class="title-type"><c:if test="${LANG eq 'ko'}">가공선</c:if><c:if test="${LANG eq 'en'}">Overhead Line</c:if></h3>
					<div class="side-box btn-box">
						<a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/customer/qna?code=inqu_01" class="btn-type btn-s v3"><spring:message code="product.productQna" text="제품문의"></spring:message><i class="ico-arr v2"></i></a>
						<a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/customer/catalogue" class="btn-type btn-s v3"><spring:message code="product.catalogu" text="카탈로그 자료실"></spring:message><i class="ico-arr v2"></i></a>
					</div>
				</div>
			</div>
		</div>
		
		<div class="product-intro" style="background-image: url(${CON_STATIC_URL}/asset/images/business/product_depth3_02.png)">
			<div class="inner-box">
				<div class="text-box">
					<c:if test="${LANG eq 'ko'}">
					가공선은 일반적으로 발전소에서 변전소까지를 연결하는 가공송전선과<br>
					변전소에서 최종 수요자 인근의 변압기까지를 연결하는 가공배전선으로 구분됩니다.<br>
					대한전선은 1970년 국내 최초로 345kV ACSR를 생산하며 가공선 개발에 앞장서 왔으며,<br>
					증용량 저이도 가공선, 전차선 등 고효율 제품을 통해 전력 수요의 증가 및<br>
					송전 전력의 대용량화에 신속히 대응하고 있습니다.
					</c:if>
					<c:if test="${LANG eq 'en'}">
					Overhead lines are generally classified into overhead transmission lines from power plants<br>
					to substations and overhead distribution lines from substations to transformers near end users.<br>
					Since the manufacture of the 345kV ACSR in Korea for the first time in 1970,<br>
					Taihan has been leading the development of overhead lines,<br>
					and rapidly responding to the increase in power demand and the increasing power transmission capacity<br>
					through high-efficiency products such as overhead lines with high capacity and low sag and trolley wires.
					</c:if>
				</div>
			</div>
		</div>
		
		<div class="content-box">
			<div class="inner-box">
				<div class="title-wrap2">
					<h4 class="title-type"><spring:message code="product.transmission8" text="가공선"/></h4>
				</div>
				<div class="board-wrap">
					<div class="board-body">
						<ul class="list-gallery">
							<c:forEach var="item" items="${list}" varStatus="status">
							<li>
								<a href="javascript:void(0)" onclick="goDetail(${item.idx})" class="list-item">
									<div class="img-flex v2">
										<img src="${CON_UPLOAD_URL}${item.imgPaths}" onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';" alt="">
									</div>
									<strong class="title">${item.title}</strong>
								</a>
							</li>
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
})
function goDetail(idx){
	var url = (lang == 'ko' ? '' : '/en') + "/business/product/productDetail?idx="+idx;
	location.href = url;
}
</script>