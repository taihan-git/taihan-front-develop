<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/views/common/taglib.jsp"/>
<c:if test="${not empty mappingContent}">
<div class="content-box bg">
	<div class="inner-box">
		<div class="title-wrap2">
			<h4 class="title-type"><spring:message code="common.mappingContent" text="연관 콘텐츠"></spring:message></h4>
		</div>

		<div class="board-wrap contentSw">
			<div class="board-body gallery-swiper">
				<ul class="list-gallery swiper-wrapper">
					<c:forEach var="item" items="${mappingContent}" varStatus="status">
					<c:if test="${item.mappingTarget ne 'solution'}">
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
				<!-- 2022-11-04 수정 -->
				<div class="swiper-button-next"></div>
				<div class="swiper-button-prev"></div>
				<!-- //2022-11-04 수정 -->
			</div>
			<div class="swiper-button-box" style="display:none;">
				<div class="button-prev"></div>
				<div class="button-next"></div>
				<div class="fraction-pagination"></div>
			</div>
		</div>
	</div>
</div>
</c:if>
<script>
$(document).ready(function(){
    gallerySwiper.pagination?.update();
    gallerySwiper.navigation?.update()
});

var gallerySwiper = new Swiper('.gallery-swiper', {
	slidesPerView: 3,
	slidesPerGroup: 1,//수정
	spaceBetween: 38,
	pagination: {
		el: ".swiper-button-box .fraction-pagination",
		type: "fraction",
		/* type: "custom",
		renderCustom: function (swiper, current, total) {
	    	if(total > 1) $(".contentSw .swiper-button-box").show();
	        return '<span class="swiper-pagination-current">'+(current+2)+'</span> / <span class="swiper-pagination-total">'+(total+2)+'</span>'; 
	    } */
	},
	navigation: {
		nextEl: ".swiper-button-box .button-next, .swiper-button-next",
		prevEl: ".swiper-button-box .button-prev, .swiper-button-prev",
	},
	breakpoints: {
		767: {
			slidesPerView: 1,
			spaceBetween: 15,
			slidesPerGroup: 1,
			navigation: {
				nextEl: ".swiper-button-box .button-next",
				prevEl: ".swiper-button-box .button-prev",
			},
			pagination: {
    			el: ".swiper-button-box .fraction-pagination",
    			type: 'custom',
    		    renderCustom: function (swiper, current, total) {
    		    	if(total > 1) $(".contentSw .swiper-button-box").show();
    		        return '<span class="swiper-pagination-current">'+(current)+'</span> / <span class="swiper-pagination-total">'+(total)+'</span>'; 
    		    }
    		},
		},
		1024: {
			slidesPerView: 2,
			spaceBetween: 25,
			slidesPerGroup: 1,
			navigation: {
				nextEl: ".swiper-button-box .button-next",
				prevEl: ".swiper-button-box .button-prev",
			},
			pagination: {
    			el: ".swiper-button-box .fraction-pagination",
    			type: 'custom',
    		    renderCustom: function (swiper, current, total) {
    		    	if(total > 1) $(".contentSw .swiper-button-box").show();
    		        return '<span class="swiper-pagination-current">'+(current+1)+'</span> / <span class="swiper-pagination-total">'+(total+1)+'</span>'; 
    		    }
    		},
		},
	},
});

</script>
