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

		<!-- 20240822 추가 -->
		<div class="content-box type2">
			<div class="inner-box">
				<c:if test="${LANG eq 'ko' }">
					<div class="text-wrap">
						<h3>해저케이블의 전체 밸류 체인(Value chain) 수행 가능한 경쟁력 확보</h3>
						<p>
							대한전선은 해저케이블 시장에서의 안정적인 사업을 수행하고 다양한 수주 기회를 발굴하기 위해 국내 유일의 해상풍력용 포설선 CLV인 팔로스(PALOS)를 확보하였습니다.<br>
							포설선은 설계 단계부터 해저케이블 포설을 위해 건조된 CLV와 화물 운반이 목적인 바지선을 개조해 만든 CLB(CLB: Cable Laying Barge)로 구분됩니다. CLV인 팔로스 일반 선박과 달리 바닥이 평평해 수심에 관계없이 여러 현장에 투입이 가능하며, 선박위치정밀제어시스템(DP2 : Dynamic Position) 등의 최신 기능까지 탑재하고 있습니다. 또한 최대 9노트(knot)의 속도로 운항할 수 있는 동력선으로, 예인선의 견인으로 움직여 기상변화 및 조류에 능동적으로 대처하지 못하는 CLB 대비 매우 안정적이고 섬세하게 해저케이블을 포설할 수 있습니다.
						</p>
					</div>
					<div class="table-wrap">
						<div class="title-wrap3">
							<h5 class="title-type">대한전선의 팔로스(PALOS)</h5>
						</div>
						<div class="scroll-wrap">
							<table class="table-type">
								<colgroup>
									<col style="width:200px;">
									<col>
								</colgroup>
								<tbody>
								<tr>
									<th scope="row" class="bg">용도</th>
									<td class="t-l">해저케이블 포설</td>
								</tr>
								<tr>
									<th scope="row" class="bg">유형</th>
									<td class="t-l">CLV(Cable Layung Vessel)</td>
								</tr>
								<tr>
									<th scope="row" class="bg">주요 제원</th>
									<td class="t-l">
										<ul>
											<li>90.0m x 28.0m x 6.5m (전체길이 x 최대 폭 x 최대 높이)</li>
											<li>케이블 적재 용량: 4,400t</li>
										</ul>
									</td>
								</tr>
								<tr>
									<th scope="row" class="bg">특징</th>
									<td class="t-l">
										<ul>
											<li>자항능력 보유</li>
											<li>DP2(Dynamic Position) 시스템 탑재</li>
											<li>최대 속도 9knot</li>
										</ul>
									</td>
								</tr>
								</tbody>
							</table>
						</div>
					</div>
					<div class="table-wrap">
						<div class="title-wrap3">
							<h4 class="title-type">CLV VS CLB</h4>
						</div>
						<div class="scroll-wrap shadow-none">
							<table class="table-type">
								<colgroup>
									<col width="20%">
									<col width="40%">
									<col width="40%">
								</colgroup>
								<tbody>
									<tr>
										<th>구분</th>
										<td>CLV(Cable Laying Vessel)</td>
										<td>CLB (Cable Laying Barge)</td>
									</tr>
									<tr>
										<th>내용</th>
										<td>해저케이블 포설 목적으로 건조</td>
										<td>해저케이블 포설을 위해 운송 목적의 바지선을 개조</td>
									</tr>
									<tr>
										<th>운항</th>
										<td>자항능력</td>
										<td>예인선 필요</td>
									</tr>
									<tr>
										<th>평균 시공 속도</th>
										<td>13km/day</td>
										<td>3km/day</td>
									</tr>
									<tr>
										<th>특징</th>
										<td>
											<ul>
												<li>DPS 기능을 통한 정밀한 위치 제어</li>
												<li>자항 능력 보유하여 작업시간 단축</li>
												<li>별도의 보조선박 없이 단독 시공 가능</li>
											</ul>
										</td>
										<td>Anchor Mooring 을 통한 위치 제어 및 이동으로 작업에 장시간 소요</td>
									</tr>
								</tbody>
							</table>
						</div>
						<span>* 작업 조건에 따라 변동</span>
					</div>
				</c:if>
				<c:if test="${LANG eq 'en' }">
					<div class="text-wrap">
						<h3>Securing Competitive Advantage Across the Entire Submarine Cable Value Chain</h3>
						<p>
							To ensure stable operations in the submarine cable market and identify diverse project opportunities, Taihan has secured the PALOS, the only cable-laying vessel (CLV) in Korea designed for offshore wind farms.<br>
							Submarine cable vessels are categorized into CLVs, which are specifically designed for laying submarine cables, and cable-laying barges (CLBs), which are modified cargo barges. Unlike standard vessels, the PALOS, a CLV, features a flat bottom, allowing it to operate in various locations regardless of water depth. It is also equipped with advanced features such as the Dynamic Positioning System (DP2) for precise vessel positioning. Moreover, as a powered vessel capable of speeds up to 9 knots, the PALOS offers significantly more stability and precision in laying submarine cables compared to CLBs, which rely on tugboats for movement and are less responsive to weather changes and currents.
						</p>
					</div>
					<div class="table-wrap">
						<div class="title-wrap3">
							<h5 class="title-type">Taihan’s ‘PALOS’</h5>
						</div>
						<div class="scroll-wrap">
							<table class="table-type">
								<colgroup>
									<col style="width:200px;">
									<col>
								</colgroup>
								<tbody>
								<tr>
									<th scope="row" class="bg">Use</th>
									<td class="t-l">Laying Submarine Cables</td>
								</tr>
								<tr>
									<th scope="row" class="bg">Type</th>
									<td class="t-l">CLV</td>
								</tr>
								<tr>
									<th scope="row" class="bg">Main Data</th>
									<td class="t-l">
										<ul>
											<li>90.0m x 28.0m x 6.5m (Length overall x Moulded width x Moulded depth)</li>
											<li>Loading capacity: 4,400t</li>
										</ul>
									</td>
								</tr>
								<tr>
									<th scope="row" class="bg">Features</th>
									<td class="t-l">
										<ul>
											<li>Capable of self-propulsion</li>
											<li>DPS-enabled, precise positioning</li>
											<li>Max speed : 9 knot</li>
										</ul>
									</td>
								</tr>
								</tbody>
							</table>
						</div>
					</div>
					<div class="table-wrap">
						<div class="title-wrap3">
							<h4 class="title-type">CLV VS CLB</h4>
						</div>
						<div class="scroll-wrap shadow-none">
							<table class="table-type">
								<colgroup>
									<col width="20%">
									<col width="40%">
									<col width="40%">
								</colgroup>
								<tbody>
									<tr>
										<th>Division</th>
										<td>CLV (Cable Laying Vessel)</td>
										<td>CLB (Cable Laying Barge)</td>
									</tr>
									<tr>
										<th>Content</th>
										<td>Built specifically for laying submarine cables</td>
										<td>Modified cargo barges for the purpose of laying submarine cables</td>
									</tr>
									<tr>
										<th>Operation</th>
										<td>Capable of self-propulsion</td>
										<td>Need for auxiliary vessels like a tugboat</td>
									</tr>
									<tr>
										<th>Average Installation Speed</th>
										<td>13 km/day</td>
										<td>3km/day</td>
									</tr>
									<tr>
										<th>Features</th>
										<td>
											<ul>
												<li>DPS-enabled, precise positioning</li>
												<li>Shorter installation time due to self-propulsion</li>
												<li>No need for auxiliary vessels for installation</li>
											</ul>
										</td>
										<td>
											<ul>
												<li>Long installation time due to anchor mooring for positioning and movement</li>
											</ul>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						<span>* Subject to change depending on work conditions </span>
					</div>
				</c:if>
			</div>
		</div>
		<!-- //20240822 -->

		<div class="full-img" style="background-image: url(${CON_STATIC_URL}/asset/images/business/full_solution02.png?v4);"></div>

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

<style>
	.content-box.type2 {margin-block: 100px;}
	.content-box.type2 .text-wrap h3 {margin-bottom: 30px;font-size: 24px;font-weight: 700;line-height: 22px;letter-spacing: -0.045em;color: #111;}
	.content-box.type2 .text-wrap p {font-size: 20px;font-weight: 400;line-height: 36px;letter-spacing: -0.045em;color: #111;}
	.content-box.type2 .table-wrap {margin-top: 70px;margin-bottom: 0;}
	.content-box.type2 .table-wrap th {font-weight: 700;}
	.content-box.type2 .table-wrap td {font-weight: 400;}
	.content-box.type2 .table-wrap td ul {display: inline-flex;flex-direction: column;align-items: flex-start;}
	.content-box.type2 .table-wrap td ul li {position: relative;letter-spacing: -0.045em;line-height: 41px;color: #111;padding-left: 8px;}
	.content-box.type2 .table-wrap td ul li::before {content: '';position: absolute;left: 0;top: 50%;transform: translateY(-50%);width: 3px;height: 3px;background-color: #111;border-radius: 50%;}
	.content-box.type2 .table-wrap :is(th, td) {vertical-align: middle;color: #111;}
	.content-box.type2 .table-wrap span {margin-top: 20px;font-size: 18px;font-weight: 400;letter-spacing: -0.045em;color: #111;}

	@media screen and (max-width: 767px) {
		.content-box.type2 {margin-top: 70px;margin-bottom: 60px;}
		.content-box.type2 .text-wrap h3 {font-size: 18px;line-height: 1.5;}
		.content-box.type2 .text-wrap p {font-size: 16px;line-height: 1.5;}
		.content-box.type2 .table-wrap td ul li {line-height: 24px;}
		.content-box.type2 .table-wrap td ul li:not(:last-child) {margin-bottom: 6px;}
	}
</style>