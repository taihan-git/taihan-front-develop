<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/views/common/taglib.jsp"/>
<section id="content" class="sub-wrap business-success">
	
	<div class="sub-visual" style="background-image: url(${CON_STATIC_URL}/asset/images/business/visual_business_03.jpg?v4)">
		<div class="sub-title">
			<h2 class="title-type"><spring:message code="successStory.title" text="성공사례"></spring:message></h2>
		</div>
	</div>

    <%-- GNB(S)--%>
    <jsp:include page="/WEB-INF/views/_decorators/inc/gnb.jsp" />
    <%-- GNB(E) --%>

    <div id="container" class="content-wrap">
		<div class="content-box">
			<div class="inner-box">
				<!-- 2022-10-19 -->
				<div class="title-wrap">

					<div class="category-box">
						<span>${successStory.category}</span>
						<span>${successStory.contry}</span>
					</div>

					<h3 class="title-type">${successStory.title}</h3>
					<!-- tag -->
					<div class="tag-box">
						<c:if test="${not empty successStory.tagInfoList}">
							<c:set var="url" value="${LANG eq 'ko' ? '/search/tagList' : '/en/search/tagList'}" />
							<c:forEach var="item" items="${successStory.tagInfoList.split(',')}">
	                            <a href="${url}?schTagNm=${item.split('_')[0]}&schTagIdx=${item.split('_')[1]}" class="tag">#${item.split('_')[0]}</a>
							</c:forEach>
						</c:if>
					</div>
					<!-- //tag -->
					<a href="javascript:UI.layerPopUp({ selId: '#pop-sns' });" class="btn-share"><i class="ico-share"><span class="hidden">공유하기</span></i></a>
				</div>
				<c:set var="sum" value="0"></c:set>
				<c:if test="${successStory.prodDspYn eq 'Y'}">
				<c:set var="sum" value="${sum+1}"></c:set>
				</c:if>
				<c:if test="${successStory.areaDspYn eq 'Y'}">
				<c:set var="sum" value="${sum+1}"></c:set>
				</c:if>
				<c:if test="${successStory.ownerDspYn eq 'Y'}">
				<c:set var="sum" value="${sum+1}"></c:set>
				</c:if>
				<c:if test="${successStory.lngDspYn eq 'Y'}">
				<c:set var="sum" value="${sum+1}"></c:set>
				</c:if>
				<c:if test="${successStory.qntDspYn eq 'Y'}">
				<c:set var="sum" value="${sum+1}"></c:set>
				</c:if>
				<c:if test="${successStory.amtDspYn eq 'Y'}">
				<c:set var="sum" value="${sum+1}"></c:set>
				</c:if>
				<c:if test="${successStory.periodDspYn eq 'Y'}">
				<c:set var="sum" value="${sum+1}"></c:set>
				</c:if>
				<c:choose>
					<c:when test="${sum == 4}">
					<ul class="list-summary v2">
					</c:when>
					<c:otherwise>
					<ul class="list-summary v2 col3">
					</c:otherwise>
				</c:choose>
				
					<c:if test="${successStory.prodDspYn eq 'Y'}">
					<li>
						<div class="icon-box"><i class="ico-summary12"></i></div>
						<dl>
							<dt><spring:message code="successStory.prod" text="제품"></spring:message></dt>
							<dd><strong>${successStory.prodDspTxt}</strong></dd>
						</dl>
					</li>
					</c:if>
					<c:if test="${successStory.areaDspYn eq 'Y'}">
					<li>
						<div class="icon-box"><i class="ico-summary6"></i></div>
						<dl>
							<dt><spring:message code="successStory.area" text="지역"></spring:message></dt>
							<dd><strong>${successStory.areaDspTxt}</strong></dd>
						</dl>
					</li>
					</c:if>
					<c:if test="${successStory.ownerDspYn eq 'Y'}">
					<li>
						<div class="icon-box"><i class="ico-summary7"></i></div>
						<dl>
							<dt><spring:message code="successStory.owner" text="발주처"></spring:message></dt>
							<dd><strong>${successStory.ownerDspTxt}</strong></dd>
						</dl>
					</li>
					</c:if>
					<c:if test="${successStory.lngDspYn eq 'Y'}">
					<li>
						<div class="icon-box"><i class="ico-summary8"></i></div>
						<dl>
							<dt><spring:message code="successStory.lng" text="공급길이"></spring:message></dt>
							<dd><strong>${successStory.lngDspTxt}</strong></dd>
						</dl>
					</li>
					</c:if>
					<c:if test="${successStory.qntDspYn eq 'Y'}">
					<li>
						<div class="icon-box"><i class="ico-summary10"></i></div>
						<dl>
							<dt><spring:message code="successStory.qnt" text="공급수량"></spring:message></dt>
							<dd><strong>${successStory.qntDspTxt}</strong></dd>
						</dl>
					</li>
					</c:if>
					<c:if test="${successStory.amtDspYn eq 'Y'}">
					<li>
						<div class="icon-box"><i class="ico-summary11"></i></div>
						<dl>
							<dt><spring:message code="successStory.amt" text="수주금액"></spring:message></dt>
							<dd><strong>${successStory.amtDspTxt}</strong></dd>
						</dl>
					</li>
					</c:if>
					<c:if test="${successStory.periodDspYn eq 'Y'}">
					<li>
						<div class="icon-box"><i class="ico-summary9"></i></div>
						<dl>
							<dt><spring:message code="successStory.period" text="진행기간"></spring:message></dt>
							<dd><strong>${successStory.periodDspTxt}</strong></dd>
						</dl>
					</li>
					</c:if>
				</ul>

			</div>
		</div>
		
		<c:if test="${not empty successStory.successStoryContList}">
			<c:forEach var="item" items="${successStory.successStoryContList}" varStatus="status">
				<c:if test="${item.type eq 'A' || item.type eq 'B'}">
					<div class="content-box <c:if test="${item.type eq 'B'}"> bg bg2</c:if>">
						<div class="inner-box">
							<div class="title-wrap v2"><!-- 2022-10-19 -->
								<h4 class="title-type"><span>${item.contTitle}</span></h4>
								<p>
									${cmnUtils:replaceBR(item.content)}
								</p>
							</div>
						</div>
					</div>
				</c:if>
				<c:if test="${item.type eq 'C' || item.type eq 'D'}">
					<div class="content-box">
						<div class="inner-box">
							<c:if test="${not empty item.contTitle}">
							<div class="title-wrap v2 mo-display"><!-- 2022-10-19 -->
								<h4 class="title-type">${item.contTitle}</h4>
							</div>
							</c:if>
							<div class="text-form <c:if test="${item.type eq 'D'}"> v2</c:if>">
								<div class="img-flex">
									<img src="${CON_UPLOAD_URL}${item.contSubList[0].sysImgFile}" onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';" alt="">
								</div>
								<div class="text-box">
									<c:if test="${not empty item.contTitle}">
									<h4 class="title-type pc-display">${item.contTitle}</h4>
									</c:if>
									<p>
										${cmnUtils:replaceBR(item.content)}
									</p>
								</div>
							</div>
						</div>


					</div>
				</c:if>
				<c:if test="${item.type eq 'E'}">
					<div class="content-box">
						<div class="inner-box">
							<div class="thumbs-gallery">
								<div class="view-swiper">
									<div class="swiper-wrapper">
										<c:forEach var="item2" items="${item.contSubList}" varStatus="status">
											<div class="swiper-slide">
												<div class="img-flex">
													<img src="${CON_UPLOAD_URL}${item2.sysImgFile}">
												</div>
												<p class="desc">${item2.imgCaption}</p>
											</div>
										</c:forEach>
									</div>
									<div class="swiper-button-next"></div>
									<div class="swiper-button-prev"></div>
									<button type="button" class="btn-zoom">
										<i class="ico-more2"><span class="hidden">이미지 확대</span></i>
									</button>
								</div>
								<div class="thumbs-swiper">
									<div class="swiper-wrapper">
										<c:forEach var="item2" items="${item.contSubList}" varStatus="status">
											<div class="swiper-slide">
												<div class="img-box">
													<img src="${CON_UPLOAD_URL}${item2.sysImgFile}">
												</div>
											</div>
										</c:forEach>
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:if>
				<c:if test="${item.type eq 'F'}">
					<div class="content-box bg">
						<div class="inner-box">
							<div class="video-box">
								<div class="img-flex">
									<iframe src="https://www.youtube.com/embed${cmnUtils:getYoutubeId(item.videoUrl)}" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
								</div>
							</div>
						</div>
					</div>
				</c:if>
				<c:if test="${item.type eq 'G'}">
					<div class="content-box">
						<div class="inner-box">
							<div class="procedure-box">
								<img src="${CON_UPLOAD_URL}${item.contSubList[0].sysImgFile}" onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';" alt="">
							</div>
						</div>
					</div>
				</c:if>
				<c:if test="${item.type eq 'H'}">
					<div class="content-box bg bg2">
						<div class="inner-box">
							<div class="title-wrap v2">
								<h4 class="title-type">${LANG eq 'ko' ? '공급 제품 및 솔루션' : 'Supplied products and solutions'}</h4>
							</div>
							<ul class="list-box2">
								<c:forEach var="item2" items="${item.contSubList}" varStatus="status">
								<li>
									<c:if test="${not empty item2.mungu1}">
									${item2.mungu1}
									</c:if>
									<c:if test="${not empty item2.mungu2}">
									<br/>${item2.mungu2}
									</c:if>
									<c:if test="${not empty item2.mungu3}">
									<br/>${item2.mungu3}
									</c:if>
								</li>
								</c:forEach>
							</ul>
	
						</div>
					</div>
				</c:if>
			</c:forEach>
		</c:if>
		
		<div class="content-box">
			<div class="inner-box">
				<c:if test="${not empty successStory.officialAddTxt}">
				<div class="saying-wrap">
					<p class="saying-box">
					${cmnUtils:replaceBR(successStory.officialAddTxt)}
					</p>
					<span class="name">${successStory.officialInfo}</span>
				</div>
				</c:if>
				<div class="btn-wrap2 t-c">
					<a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/business/successStory" class="btn-type btn-l v2"><spring:message code="successStory.golist" text="전체 성공사례 보러가기"></spring:message><i class="ico-arr v2"></i><!-- <i class="ico-success"></i> --></a>
					<a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/customer/qna" class="btn-type btn-l v2"><spring:message code="successStory.goQna" text="1:1 문의"></spring:message><i class="ico-arr v2"></i><!-- <i class="ico-inquiry v2"></i> --></a>
					<a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/customer/catalogue" class="btn-type btn-l v2"><spring:message code="successStory.goCatalog" text="카탈로그·지명원"></spring:message><i class="ico-arr v2"></i><!-- <i class="ico-catalog v2"></i> --></a>
				</div>
			</div>
		</div>

	</div>
</section>
<!--//content-->


		<!-- zoom팝업 -->
		<div class="pop-layer pop-full" id="pop-zoom">
			<div class="pop-wrap">
				<div class="pop-header">
					<button class="pop-close"><span class="hidden">팝업닫기</span></button>
				</div>
				<div class="pop-content">
					<div class="img-box"><img src="" alt=""></div>
				</div>
			</div>
		</div>
		<!-- //zoom팝업 -->

<script>
var pageNo = 1;

$(document).ready(function(){
    //gnb세팅
    setTimeout(function() {
        setmenu( 2, '0203')
    },100);
})
var thumbsSwiper = new Swiper(".thumbs-swiper", {
	spaceBetween: 10,
	slidesPerView: 'auto',
	freeMode: true,
	watchSlidesProgress: true,
});
var viewSwiper = new Swiper(".view-swiper", {
	spaceBetween: 10,
	navigation: {
		nextEl: ".swiper-button-next",
		prevEl: ".swiper-button-prev",
	},
	thumbs: {
		swiper: thumbsSwiper,
	},
});
$('.btn-zoom').on('click',function(){
	UI.layerPopUp({ selId: '#pop-zoom' });
	$('#pop-zoom').find('.img-box img').attr('src', viewSwiper.slides.eq(viewSwiper.activeIndex).find('img').attr('src'));
})
</script>