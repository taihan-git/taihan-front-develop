<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/views/common/taglib.jsp"/>
<section id="content" class="sub-wrap business-4depth">
	
	<div class="sub-visual" style="background-image: url(${CON_STATIC_URL}/asset/images/business/visual_business_01_${product.prodCateNo}.jpg)">
		<div class="sub-title">
			<h2 class="title-type">${product.prodCate}</h2>
		</div>
	</div>

    <%-- GNB(S)--%>
    <jsp:include page="/WEB-INF/views/_decorators/inc/gnb.jsp" />
    <%-- GNB(E) --%>

    <div id="container" class="content-wrap">
		<div class="content-box">
			<div class="inner-box">
				<div class="detail-top">
					<div class="img-box img-swiper">
						<div class="swiper-wrapper">
							<c:forEach var="item" items="${product.imgPaths.split('@')}">
							<div class="swiper-slide">
								<img src="${CON_UPLOAD_URL}product/${item}" onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';" alt="">
							</div>
							</c:forEach>
						</div>
						<div class="swiper-button-next"></div>
						<div class="swiper-button-prev"></div>
					</div>
					<span class="category">${product.topGubun}</span>
					<div class="title-wrap2">
						<h3 class="title-type">${product.title}</h3>
						<a href="javascript:UI.layerPopUp({ selId: '#pop-sns' });" class="btn-share"><i class="ico-share"><span class="hidden">공유하기</span></i></a>
					</div>
					<div class="btn-wrap">
						<a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/customer/qna?code=inqu_01" class="btn-type btn-s">
							<spring:message code="product.productQna" text="제품문의"></spring:message><i class="ico-arr v2"></i>
						</a>
						<c:if test="${not empty product.catalog}">
						<a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/business/product/catalogDownload?title=${product.catalog}" class="btn-type btn-s">
							<spring:message code="product.catalogu" text="카탈로그·지명원"></spring:message><i class="ico-down"></i>
						</a>
						</c:if>
					</div>
					<p class="desc">
						${cmnUtils:unescapeXml(product.intro)}
					</p>
					<c:if test="${not empty product.tagInfoList}">
						<div class="tag-box">
						<c:set var="url" value="${LANG eq 'ko' ? '/search/tagList' : '/en/search/tagList'}" />
						<c:forEach var="item" items="${product.tagInfoList.split(',')}">
                            <a href="${url}?schTagNm=${item.split('_')[0]}&schTagIdx=${item.split('_')[1]}" class="tag">#${item.split('_')[0]}</a>
						</c:forEach>
						</div>
					</c:if>
				</div>
			</div>
		</div>
		
		<c:if test="${product.tabList.size() > 1}">
		<div class="tab-wrap2">
			<div class="inner-box">
				<ul class="tab-type3 js_tab">
					<c:forEach var="item" items="${product.tabList}" varStatus="status">
					<li <c:if test="${status.index == 0}">class="active"</c:if>>
						<a href=".tab${status.index+1}">${item.tabName}</a>
					</li>
					</c:forEach>
				</ul>
				<c:forEach var="item" items="${product.tabList}" varStatus="status">
				<div id="tab${status.index+1}" class="tab${status.index+1} tab-cont <c:if test="${status.index == 0}">active</c:if>">
					<div class="cont-inner">
						<c:if test="${not empty item.tabImgPath}">
						<div class="img-box">
							<img src="${CON_UPLOAD_URL}product/${item.tabImgPath}" onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';" alt="">
						</div>
						</c:if>
						<div class="title-box">
							<strong class="title">${item.tabTitle}</strong>
							<p class="desc">
								${cmnUtils:unescapeXml(item.tabContent)}
							</p>
						</div>
					</div>
				</div>
				</c:forEach>
			</div>
		</div>
		</c:if>
		
		<c:choose>
			<c:when test="${product.tabList.size() > 1}">
				<c:forEach var="item" items="${product.tabList}" varStatus="status">
					<div style="margin-top: 100px;" class="content-box tab${status.index+1} tab-cont <c:if test="${status.index == 0}">active</c:if>">
						<div class="inner-box">
							<div class="detail-wrap">
								<c:forEach var="item2" items="${item.infoList}" varStatus="status2">
								<dl>
									<dt>${cmnUtils:unescapeXml(item2.infoTitle)}</dt>
									<dd>
										<c:set var="cnt" value="0"></c:set>
										<c:set var="isTable" value="false"></c:set>
										<c:forEach var="item3" items="${fn:split(item2.infoContent,crcn)}" varStatus="status">
											<c:choose>
												<c:when test="${item3.indexOf('- ') == -1 && cnt == 0}">
													<p>${cmnUtils:unescapeXml(item3)}</p>
												</c:when>
												<c:otherwise>
													<c:if test="${cnt == 0}">
														<ul class="list-type">
														<li>${cmnUtils:unescapeXml(fn:replace(item3,"- ",""))}
													</c:if>
													<c:if test="${cnt > 0}">
														<c:choose>
															<c:when test="${item3.indexOf('- ') == -1}">
																<c:if test="${item3.indexOf('table-wrap') > -1}">
																<c:set var="isTable" value="true"></c:set>
																</c:if>
																<c:if test="${isTable eq 'true'}">
																${cmnUtils:unescapeXml(item3)}
																</c:if>
																<c:if test="${isTable ne 'true'}">
																<br/>${cmnUtils:unescapeXml(item3)}
																</c:if>
															</c:when>
															<c:otherwise>
																</li><li>${cmnUtils:unescapeXml(fn:replace(item3,"- ",""))}
															</c:otherwise>
														</c:choose>
													</c:if>
													<c:set var="cnt" value="${cnt+1}"></c:set>
												</c:otherwise>
											</c:choose>
											
				                    	</c:forEach>
				                    	<c:if test="${cnt > 0}">
				                    	</li></ul>
				                    	</c:if>
										<c:if test="${not empty item2.infoImgPath}">
										<div style="margin-top:50px;">
										<img src="${CON_UPLOAD_URL}product/${item2.infoImgPath}" onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';" alt="">
										</div>
										</c:if>
									</dd>
								</dl>
								</c:forEach>
							</div>
						</div>
					</div>
				</c:forEach>
			</c:when>
			<c:otherwise>
			<div class="content-box">
				<div class="inner-box">
					<div class="detail-wrap">
						<c:forEach var="item" items="${product.tabList[0].infoList}" varStatus="status">
						<dl>
							<dt>${cmnUtils:unescapeXml(item.infoTitle)}</dt>
							<dd>
								<c:set var="content" value="${cmnUtils:unescapeXml(item.infoContent)}"></c:set>
								<c:set var="cnt" value="0"></c:set>
								<c:set var="isTable" value="false"></c:set>
								<c:forEach var="item2" items="${fn:split(item.infoContent,crcn)}" varStatus="status">
									<c:choose>
										<c:when test="${item2.indexOf('- ') == -1 && cnt == 0}">
											<p>${cmnUtils:unescapeXml(item2)}</p>
										</c:when>
										<c:otherwise>
											<c:if test="${cnt == 0}">
												<ul class="list-type">
												<li>${cmnUtils:unescapeXml(fn:replace(item2,"- ",""))}
											</c:if>
											<c:if test="${cnt > 0}">
												<c:choose>
													<c:when test="${item2.indexOf('- ') == -1}">
														<c:if test="${item2.indexOf('table-wrap') > -1}">
														<c:set var="isTable" value="true"></c:set>
														</c:if>
														<c:if test="${isTable eq 'true'}">
														${cmnUtils:unescapeXml(item2)}
														</c:if>
														<c:if test="${isTable ne 'true'}">
														<br/>${cmnUtils:unescapeXml(item2)}
														</c:if>
													</c:when>
													<c:otherwise>
														</li><li>${cmnUtils:unescapeXml(fn:replace(item2,"- ",""))}
													</c:otherwise>
												</c:choose>
											</c:if>
											<c:set var="cnt" value="${cnt+1}"></c:set>
										</c:otherwise>
									</c:choose>
									
		                    	</c:forEach>
		                    	<c:if test="${cnt > 0}">
		                    	</li></ul>
		                    	</c:if>
<%-- 								<p>${cmnUtils:unescapeXml(item.infoContent)}</p> --%>
								<c:if test="${not empty item.infoImgPath}">
								<div style="margin-top:50px;">
								<img src="${CON_UPLOAD_URL}product/${item.infoImgPath}" onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';" alt="">
								</div>
								</c:if>
							</dd>
						</dl>
						</c:forEach>
					</div>
				</div>
			</div>
			</c:otherwise>
		</c:choose>
		
		<!-- 연관콘텐츠 -->
		<c:if test="${product.contentCnt ne '0'}">
		<c:choose>
			<c:when test="${product.tabList.size() > 1}">
				<c:forEach var="item" items="${product.tabList}" varStatus="status">
					<div class="content-box bg tab${status.index+1} tab-cont <c:if test="${status.index == 0}">active</c:if>" style="margin-top: 120px;">
						<div class="inner-box">
							<div class="title-wrap2">
								<h4 class="title-type"><spring:message code="common.mappingContent" text="연관 콘텐츠"></spring:message></h4>
							</div>
			
							<div class="board-wrap contentSw${status.index+1}">
								<div class="board-body gallery-swiper gsw${status.index+1}">
									<ul class="list-gallery swiper-wrapper">
										<c:set var="row_count" value="0" />
										<c:forEach var="item2" items="${product.mappingList}" varStatus="status2">
										<c:if test="${item2.mappingTarget ne 'solution' && item2.tab.indexOf((status.index+1).toString()) > -1}">
										<c:set var="row_count" value="${row_count+1}" />
										<li class="swiper-slide">
											<a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}${item2.url}" class="list-item">
												<div class="img-flex">
													<img src="${CON_UPLOAD_URL}${item2.img}" onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';" alt="">
												</div>
												<span class="btn-type2">${item2.mappingTarget}<i class="ico-arr v2"></i></span> <strong class="title">${item2.title}</strong>
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
								<div class="swiper-button-box" style="display: none;">
									<div class="button-prev"></div>
									<div class="button-next"></div>
									<div class="fraction-pagination"></div>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</c:when>
			<c:otherwise>
			<div class="content-box bg">
				<div class="inner-box">
					<div class="title-wrap2">
						<h4 class="title-type"><spring:message code="common.mappingContent" text="연관 콘텐츠"></spring:message></h4>
					</div>
	
					<div class="board-wrap contentSw">
						<div class="board-body gallery-swiper">
							<ul class="list-gallery swiper-wrapper">
								<c:forEach var="item" items="${product.mappingList}" varStatus="status">
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
						<div class="swiper-button-box" style="display: none;">
							<div class="button-prev"></div>
							<div class="button-next"></div>
							<div class="fraction-pagination"></div>
						</div>
					</div>
				</div>
			</div>
			</c:otherwise>
		</c:choose>
		
		</c:if>

		<!-- 관련솔루션 -->
		<c:if test="${product.solutionCnt ne '0'}">
		<div class="content-box">
			<div class="inner-box">
				<div class="title-wrap2">
					<h4 class="title-type"><spring:message code="common.mappingSolution" text="관련 솔루션"></spring:message></h4>
				</div>

				<div class="related-wrap related-swiper">
					<ul class="swiper-wrapper">
						<c:forEach var="item" items="${product.mappingList}" varStatus="status">
							<c:if test="${item.mappingTarget eq 'solution'}">
								<li class="swiper-slide">
									<a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}${item.url}" class="list-item">
										<div class="img-box">
											<img src="${CON_UPLOAD_URL}${item.img}" style="width: 70px; height: 70px;" onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';" alt="">
										</div>
										<strong class="title">${item.title}<i class="ico-arr v2"></i></strong>
									</a>
								</li>
							</c:if>
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
		<div class="btn-wrap inner-box t-c">
			<a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/business/product/electricity" class="btn-type btn-l v2"><spring:message code="solution.gototal" text="전체 제품 보러가기"></spring:message><i class="ico-arr v2"></i></a>
		</div>
		<jsp:include page="/WEB-INF/views/business/product/product_footer.jsp" />
				
    </div>
</section>
<!--//content-->

<script>
var gallerySwipers = [];
var gallerySwiper;
$(document).ready(function(){
	var cateNo = '${product.prodCateNo}';
    //gnb세팅
    setTimeout(function() {
        setmenu( 3, '0201'+cateNo)
    },100);

    setTimeout(function (){
    	$(".js_tab li a").off('click');
        $(".js_tab li a").on("click", function (e) {
            e.preventDefault();
            $(this)
                .parent("li")
                .addClass("active")
                .siblings("li")
                .removeClass("active");
            if ($(this).attr("href") !== "#") {
                $(".tab-cont").removeClass("active");
                $($(this).attr("href"))
                    .addClass("active");
            }
            var tabIdx = parseInt($(this).attr("href").replace(".tab",""));
            if(gallerySwipers.length > 0){
            	gallerySwipers[tabIdx-1].update();
            	if(gallerySwipers[tabIdx-1].pagination) gallerySwipers[tabIdx-1].pagination.update();
           		if(gallerySwipers[tabIdx-1].navigation) gallerySwipers[tabIdx-1].navigation.update();
            }
        });
    },1000);

    relatedSwiperInit();

    if($(".gallery-swiper").length > 1){
		for(var i = 1; i <= $(".gallery-swiper").length; i++){
			var swiper = new Swiper('.gsw'+i, {
				slidesPerView: 3,
				slidesPerGroup: 1,//수정
				spaceBetween: 38,
				pagination: {
					el: ".contentSw"+i+" .swiper-button-box .fraction-pagination",
					type: "fraction",
					/* type: "custom",
					renderCustom: function (swiper, current, total) {
						if(total > 1) $(".contentSw"+i+" .swiper-button-box").show();
	    		        return '<span class="swiper-pagination-current">'+(current+2)+'</span> / <span class="swiper-pagination-total">'+(total+2)+'</span>'; 
	    		    } */
				},
				navigation: {
					nextEl: ".contentSw"+i+" .swiper-button-box .button-next, .swiper-button-next",
					prevEl: ".contentSw"+i+" .swiper-button-box .button-prev, .swiper-button-prev",
				},
				breakpoints: {
	    			767: {
	    				slidesPerView: 1,
	    				spaceBetween: 15,
	    				slidesPerGroup: 1,
	    				navigation: {
	    					nextEl: ".contentSw"+i+" .swiper-button-box .button-next",
	    					prevEl: ".contentSw"+i+" .swiper-button-box .button-prev",
	    				},
	    				pagination: {
	    					el: ".contentSw"+i+" .swiper-button-box .fraction-pagination",
	    					type: "custom",
	    					renderCustom: function (swiper, current, total) {
	    						if(total > 1) $(".contentSw"+i+" .swiper-button-box").show();
	    	    		        return '<span class="swiper-pagination-current">'+(current)+'</span> / <span class="swiper-pagination-total">'+(total)+'</span>'; 
	    	    		    }
	    				},
	    			},
	    			1024: {
	    				slidesPerView: 2,
	    				spaceBetween: 25,
	    				slidesPerGroup: 1,
	    				navigation: {
	    					nextEl: ".contentSw"+i+" .swiper-button-box .button-next",
	    					prevEl: ".contentSw"+i+" .swiper-button-box .button-prev",
	    				},
	    				pagination: {
	    					el: ".contentSw"+i+" .swiper-button-box .fraction-pagination",
	    					type: "custom",
	    					renderCustom: function (swiper, current, total) {
	    						if(total > 1) $(".contentSw"+i+" .swiper-button-box").show();
	    	    		        return '<span class="swiper-pagination-current">'+(current+1)+'</span> / <span class="swiper-pagination-total">'+(total+1)+'</span>'; 
	    	    		    }
	    				},
	    			},
	    		},
			});
			gallerySwipers.push(swiper);
		}
    }else{
    	gallerySwiper = new Swiper('.gallery-swiper', {
    		slidesPerView: 3,
    		slidesPerGroup: 1,
    		spaceBetween: 38,
    		pagination: {
    			el: ".contentSw .swiper-button-box .fraction-pagination",
    			type: "fraction",
    			/* type: 'custom',
    		    renderCustom: function (swiper, current, total) {
    		    	if(total > 1) $(".contentSw .swiper-button-box").show();
    		        return '<span class="swiper-pagination-current">'+(current+2)+'</span> / <span class="swiper-pagination-total">'+(total+2)+'</span>'; 
    		    } */
    		},
    		navigation: {
    			nextEl: ".contentSw .swiper-button-box .button-next, .swiper-button-next",
    			prevEl: ".contentSw .swiper-button-box .button-prev, .swiper-button-prev",
    		},
    		breakpoints: {
    			767: {
    				slidesPerView: 1,
    				spaceBetween: 15,
    				slidesPerGroup: 1,
    				navigation: {
    	    			nextEl: ".contentSw .swiper-button-box .button-next",
    	    			prevEl: ".contentSw .swiper-button-box .button-prev",
    	    		},
    				pagination: {
    	    			el: ".contentSw .swiper-button-box .fraction-pagination",
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
    	    			nextEl: ".contentSw .swiper-button-box .button-next",
    	    			prevEl: ".contentSw .swiper-button-box .button-prev",
    	    		},
    				pagination: {
    	    			el: ".contentSw .swiper-button-box .fraction-pagination",
    	    			type: 'custom',
    	    		    renderCustom: function (swiper, current, total) {
    	    		    	if(total > 1) $(".contentSw .swiper-button-box").show();
    	    		        return '<span class="swiper-pagination-current">'+(current+1)+'</span> / <span class="swiper-pagination-total">'+(total+1)+'</span>'; 
    	    		    }
    	    		},
    			},
    		},
    	});
    }
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
var imgSwiper = new Swiper(".img-swiper", {
	navigation: {
		nextEl: ".swiper-button-next",
		prevEl: ".swiper-button-prev",
	},
});

</script>