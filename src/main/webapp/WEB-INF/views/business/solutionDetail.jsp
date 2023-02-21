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
				<div class="title-wrap">
					<h3 class="title-type">${solution.title}</h3>
					<div class="side-box btn-box">
						<a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/customer/qna?code=inqu_01" class="btn-type btn-s">
							<spring:message code="solution.qna" text="솔루션 문의"></spring:message><i class="ico-arr v2"></i>
						</a>
					</div>
					<a href="javascript:UI.layerPopUp({ selId: '#pop-sns' });" class="btn-share"><i class="ico-share"><span class="hidden">공유하기</span></i></a>
				</div>

				<div class="detail-top v2">
					<div class="img-box">
						<img src="${CON_UPLOAD_URL}${solution.sysThumImgFile}?v4" onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';" alt="">
					</div>

					<p class="desc">
						${cmnUtils:unescapeXml(solution.content)}
					</p>
					<div class="pc-display">
						<div class="tag-box">
							<c:if test="${not empty solution.tagInfoList}">
								<c:set var="url" value="${LANG eq 'ko' ? '/search/tagList' : '/en/search/tagList'}" />
								<c:forEach var="item" items="${solution.tagInfoList.split(',')}">
		                            <a href="${url}?schTagNm=${item.split('_')[0]}&schTagIdx=${item.split('_')[1]}" class="tag">#${item.split('_')[0]}</a>
								</c:forEach>
							</c:if>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="full-img" style="background-image: url(${CON_UPLOAD_URL}${solution.sysMainImgFile}?v4);"></div>
		
		<c:if test="${solution.productCnt ne '0'}">
		<div class="content-box">
			<div class="inner-box">
				<div class="title-wrap2">
					<h4 class="title-type"><spring:message code="common.mappingProduct" text="연관 제품"></spring:message></h4>
				</div>

				<div class="board-wrap">
					<div class="board-body">
						<ul class="list-gallery col4">
							<c:forEach var="item" items="${solution.mappingList}" varStatus="status">
							<c:if test="${item.mappingTarget eq '제품'}">
							<li>
								<a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}${item.url}" class="list-item">
									<div class="img-flex v2">
										<img src="${CON_UPLOAD_URL}${item.img}" onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';" alt="">
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
		</c:if>
		<!-- 연관콘텐츠 -->
		<c:if test="${solution.contentCnt ne '0'}">
		<div class="content-box bg">
			<div class="inner-box">
				<div class="title-wrap2">
					<h4 class="title-type"><spring:message code="common.mappingContent" text="연관 콘텐츠"></spring:message></h4>
				</div>

				<div class="board-wrap">
					<div class="board-body gallery-swiper">
						<ul class="list-gallery swiper-wrapper">
							<c:forEach var="item" items="${solution.mappingList}" varStatus="status">
							<c:if test="${item.mappingTarget ne '제품'}">
							<li class="swiper-slide">
								<a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}${item.url}" class="list-item">
									<div class="img-flex">
										<img src="${CON_UPLOAD_URL}${item.img}" onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';" alt="">
									</div>
									<span class="btn-type2">${item.mappingTarget}<i class="ico-arr v2"></i></span> <strong class="title">${item.title}</strong>
								</a>
							</li>
							</c:if>
							</c:forEach>
						</ul>
					</div>
					<div class="swiper-button-box" style="display: none">
						<div class="button-prev"></div>
						<div class="button-next"></div>
						<div class="fraction-pagination"></div>
					</div>
				</div>
			</div>
		</div>
		</c:if>
		
		<div class="btn-wrap inner-box t-c">
			<a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/business/solution" class="btn-type btn-l v2"><spring:message code="solution.gototal" text="전체 솔루션 보러가기"></spring:message><i class="ico-arr v2"></i></a>
		</div>
				
		<jsp:include page="/WEB-INF/views/business/product/product_footer.jsp" />
    </div>
</section>
<!--//content-->

<script>
$(document).ready(function(){
	var idx = '${solution.menuCd}';
    //gnb세팅
    setTimeout(function() {
        setmenu( 3, '0202'+idx)
    },100);
    if(gallerySwiper.pagination) gallerySwiper.pagination.update();
    if(gallerySwiper.navigation) gallerySwiper.navigation.update();
});

var gallerySwiper = new Swiper('.gallery-swiper', {
	slidesPerView: 3,
	slidesPerGroup: 1,//수정
	spaceBetween: 38,
	pagination: {
		el: ".swiper-button-box .fraction-pagination",
		type: "custom",
		renderCustom: function (swiper, current, total) {
	    	if(total > 1) $(".swiper-button-box").show();
	        return '<span class="swiper-pagination-current">'+(current+2)+'</span> / <span class="swiper-pagination-total">'+(total+2)+'</span>'; 
	    }
	},
	navigation: {
		nextEl: ".swiper-button-box .button-next",
		prevEl: ".swiper-button-box .button-prev",
	},
	breakpoints: {
		767: {
			slidesPerView: 1,
			spaceBetween: 15,
			slidesPerGroup: 1,
			pagination: {
    			el: ".swiper-button-box .fraction-pagination",
    			type: 'custom',
    		    renderCustom: function (swiper, current, total) {
    		    	if(total > 1) $(".swiper-button-box").show();
    		        return '<span class="swiper-pagination-current">'+(current)+'</span> / <span class="swiper-pagination-total">'+(total)+'</span>'; 
    		    }
    		},
		},
		1024: {
			slidesPerView: 2,
			spaceBetween: 25,
			slidesPerGroup: 1,
			pagination: {
    			el: ".swiper-button-box .fraction-pagination",
    			type: 'custom',
    		    renderCustom: function (swiper, current, total) {
    		    	if(total > 1) $(".swiper-button-box").show();
    		        return '<span class="swiper-pagination-current">'+(current+1)+'</span> / <span class="swiper-pagination-total">'+(total+1)+'</span>'; 
    		    }
    		},
		},
	},
});

</script>