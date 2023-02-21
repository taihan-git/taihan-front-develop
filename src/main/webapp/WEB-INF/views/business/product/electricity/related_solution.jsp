<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/views/common/taglib.jsp"/>
<c:if test="${not empty mappingSolution}">
<div class="content-box">
	<div class="inner-box">
		<div class="title-wrap2">
			<h4 class="title-type"><spring:message code="common.mappingSolution" text="관련 솔루션"></spring:message></h4>
		</div>

		<div class="related-wrap related-swiper">
			<ul class="swiper-wrapper">
				<c:forEach var="item" items="${mappingSolution}" varStatus="status">
					<li class="swiper-slide">
						<a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}${item.url}" class="list-item">
							<div class="img-box">
								<img src="${CON_UPLOAD_URL}${item.img}" style="width: 70px; height: 70px;" onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';" alt="">
							</div>
							<strong class="title">${item.title}<i class="ico-arr v2"></i></strong>
						</a>
					</li>
				</c:forEach>
			</ul>
			<div class="swiper-button-box" style="display: none;">
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
    relatedSwiperInit();
});
	function relatedSwiperInit() {
		/*
		slidesPerColumn, breakpoints 버그있음.
		*/
		var paramsPc = {
			slidesPerView: 3,
			slidesPerColumn: 1,
			pagination: {
				el: ".swiper-button-box .fraction-pagination",
				type: "custom",
				renderCustom: function (swiper, current, total) {
			    	if(total > 1) $(".related-swiper .swiper-button-box").show();
			        return '<span class="swiper-pagination-current">'+(current+2)+'</span> / <span class="swiper-pagination-total">'+(total+2)+'</span>'; 
			    }
			},
			navigation: {
				nextEl: ".related-swiper .swiper-button-box .button-next",
				prevEl: ".related-swiper .swiper-button-box .button-prev",
			},
		};
		var paramsMo = {
			slidesPerView: 1,
			slidesPerColumn: 3,
			pagination: {
				el: ".related-swiper .swiper-button-box .fraction-pagination",
				type: "custom",
				renderCustom: function (swiper, current, total) {
			    	if(total > 1) $(".related-swiper .swiper-button-box").show();
			        return '<span class="swiper-pagination-current">'+current+'</span> / <span class="swiper-pagination-total">'+total+'</span>'; 
			    }
			},
			navigation: {
				nextEl: ".related-swiper .swiper-button-box .button-next",
				prevEl: ".related-swiper .swiper-button-box .button-prev",
			},
		};
		if (matchMedia("screen and (min-width: 1025px)").matches) {
			new Swiper('.related-swiper', paramsPc);
		} else {
			new Swiper('.related-swiper', paramsMo);
		}

	}
	$(window).resize(function () {
		relatedSwiperInit();
	});
</script>
