<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/views/common/taglib.jsp" />
<section id="content" class="sub-wrap business">

	<div class="sub-visual" style="background-image: url(${CON_STATIC_URL}/asset/images/business/visual_business_04.jpg?v4)">
		<div class="sub-title">
			<h2 class="title-type"><spring:message code="globalNetwork.title" text="글로벌 네트워크"></spring:message></h2>
		</div>
	</div>

	<%-- GNB(S)--%>
	<jsp:include page="/WEB-INF/views/_decorators/inc/gnb.jsp" />
	<%-- GNB(E) --%>
	<c:if test="${LANG eq 'ko' }">
	<div id="container" class="content-wrap">
		<div class="content-box">

			<div class="title-wrap">
				<div class="inner-box">
					<h3 class="title-type">남아공 생산법인, 엠텍</h3>
					<p>아프리카 대륙의 전진 기지</p>
					<a href="javascript:UI.layerPopUp({ selId: '#pop-sns' });" class="btn-share">
						<i class="ico-share"><span class="hidden">공유하기</span></i>
					</a>
				</div>
			</div>

			<div class="global-detail">
				<!-- 수정 -->
				<div class="bg v4"></div>
				<!-- 수정 -->
				<div class="inner-box">
					<p class="desc">남아프리카공화국에 위치한 엠텍(M-TEC)은 2000년 남아공 현지 기업과의 합작투자를 통해 설립되었습니다. 광케이블, 전력케이블 등을 생산하는 종합전선회사로서 아프리카 대륙 최고의 전선기업으로 발돋움하고 있습니다.</p>

					<ul class="list-summary">
						<li>
							<div class="icon-box">
								<i class="ico-summary"></i>
							</div>
							<dl>
								<dt>설립연도</dt>
								<dd>
									<strong>2000년</strong>
								</dd>
							</dl>
						</li>
						<li>
							<div class="icon-box">
								<i class="ico-summary2"></i>
							</div>
							<dl>
								<dt>인원</dt>
								<dd>
									<strong>319명</strong>*2022년 기준
								</dd>
							</dl>
						</li>
						<li>
							<div class="icon-box">
								<i class="ico-summary3"></i>
							</div>
							<dl>
								<dt>면적</dt>
								<dd>
									<strong>90,000<span>㎡</span></strong>
								</dd>
							</dl>
						</li>
						<li class="col2">
							<div class="icon-box">
								<i class="ico-summary5"></i>
							</div>
							<dl>
								<dt>생산품목</dt>
								<dd>
									<strong>전력케이블, 광케이블, 소재 등</strong>
								</dd>
							</dl>
						</li>
					</ul>
				</div>
			</div>
		</div>

		<div class="content-box">
			<div class="inner-box">
				<div class="detail-wrap2" data-delighter>
					<strong class="title">탄탄한 현지 네트워크</strong>
					<div class="img-flex">
						<img src="${CON_STATIC_URL}/asset/images/business/global_detail/cont04/img01.jpg">
					</div>
					<p class="text">오랜 기간 현지 생산 및 납품으로 축적해 온 네트워크와 역량을 기반으로 급속도로 성장하고 있는 아프리카 시장을 선점하는 동시에 글로벌 시장에까지 영향력을 확장하고 있습니다. 또한 남아공에 진출한 국내 기업들과 플랜트 사업, 자원 사업 등 다양한 분야에서의 협업을 추진하며, 프로젝트 수행능력과 품질을 인정받고
						있습니다.</p>
				</div>
			</div>
		</div>

		<div class="content-box bg">
			<div class="inner-box">
				<div class="detail-wrap2 right" data-delighter>
					<strong class="title">맞춤형 제품 생산</strong>
					<div class="img-flex">
						<img src="${CON_STATIC_URL}/asset/images/business/global_detail/cont04/img02.jpg">
					</div>
					<p class="text">고압 케이블을 비롯해 중저압 케이블, 제어계장용 케이블, ACCC, 소재 등 다양한 제품을 생산합니다. 다양한 설비와 효율적인 생산라인 구축을 통해 현지 전력망 구조 및 고객의 요구사항을 정확히 파악하여 맞춤형 제품을 제공합니다.</p>
				</div>
			</div>
		</div>

		<!-- 2022-10-18 갤러리업데이트 -->
		<div class="content-box">
			<div class="inner-box">
				<div class="thumbs-gallery">
					<div class="view-swiper">
						<div class="swiper-wrapper">
							<!-- 2022-11-16 수정 -->
							<div class="swiper-slide">
								<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery04/img03.jpg"></div>
								<p class="desc">전시회 참가</p>
							</div>
							<div class="swiper-slide">
								<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery04/img01.jpg"></div>
								<p class="desc">M-TEC 전경</p>
							</div>
							<div class="swiper-slide">
								<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery04/img02.jpg"></div>
								<p class="desc">M-TEC 전경</p>
							</div>
							<div class="swiper-slide">
								<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery04/img04.jpg"></div>
								<p class="desc">M-TEC 전경</p>
							</div>
							<div class="swiper-slide">
								<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery04/img05.jpg"></div>
								<p class="desc">M-TEC 전경</p>
							</div>
							<div class="swiper-slide">
								<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery04/img06.jpg"></div>
								<p class="desc">M-TEC 전경</p>
							</div>
							<div class="swiper-slide">
								<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery04/img07.jpg"></div>
								<p class="desc">M-TEC 전경</p>
							</div>
							<div class="swiper-slide">
								<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery04/img08.jpg"></div>
								<p class="desc">M-TEC 전경</p>
							</div>
							<div class="swiper-slide">
								<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery04/img09.jpg"></div>
								<p class="desc">M-TEC 전경</p>
							</div>
							<!-- //2022-11-16 수정 -->

						</div>
						<div class="swiper-button-next"></div>
						<div class="swiper-button-prev"></div>
						<button type="button" class="btn-zoom">
							<i class="ico-more2"><span class="hidden">이미지 확대</span></i>
						</button>
					</div>
					<div class="thumbs-swiper">
						<div class="swiper-wrapper">
							<div class="swiper-slide">
								<div class="img-box">
									<img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery04/img03.jpg">
								</div>
							</div>
							<div class="swiper-slide">
								<div class="img-box">
									<img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery04/img01.jpg">
								</div>
							</div>
							<div class="swiper-slide">
								<div class="img-box">
									<img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery04/img02.jpg">
								</div>
							</div>
							<!-- 2022-11-16 수정 -->
							<div class="swiper-slide">
								<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery04/img04.jpg"></div>
							</div>
							<div class="swiper-slide">
								<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery04/img05.jpg"></div>
							</div>
							<div class="swiper-slide">
								<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery04/img06.jpg"></div>
							</div>
							<div class="swiper-slide">
								<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery04/img07.jpg"></div>
							</div>
							<div class="swiper-slide">
								<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery04/img08.jpg"></div>
							</div>
							<div class="swiper-slide">
								<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery04/img09.jpg"></div>
							</div>
							<!-- //2022-11-16 수정 -->
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- //2022-10-18 갤러리업데이트 -->

		<div class="content-box">
			<div class="inner-box">
				<div class="detail-wrap">
					<dl>
						<dt>공장 한 눈에 보기</dt>
						<dd>
							<img src="${CON_STATIC_URL}/asset/images/business/global_detail/map04.svg" alt="">
							<button type="button" class="btn-zoom factory">
								<i class="ico-more2"><span class="hidden">이미지 확대</span></i>
							</button>
						</dd>
					</dl>
				</div>
			</div>
		</div>

		<div class="content-box">
			<div class="inner-box">
				<div class="detail-wrap">
					<dl>
						<dt>위치 및 연락처</dt>
						<dd>
							<ul class="list-info">
								<li>
									<dl>
										<dt>주소</dt>
										<dd>
											1 Steel Road, Peacehaven, Vereeniging 1939, Gauteng, South Africa
											<a href="https://goo.gl/maps/WYZHpaVeNAQhGFk19" target="_blank" class="btn-map">
												<i class="ico-outer"><span class="hidden">주소보기</span></i>
											</a>
										</dd>
									</dl>
								</li>
								<li>
									<dl>
										<dt>연락처</dt>
										<dd>
											<a href="tel:+27-16-450-8220">+27-16-450-8220</a>
										</dd>
									</dl>
								</li>
								<li>
									<dl>
										<dt>웹사이트</dt>
										<dd>
											<a href="https://www.m-tec.co.za/" target="_blank">
												www.m-tec.co.za<i class="ico-outer"></i>
											</a>
										</dd>
									</dl>
								</li>
							</ul>
						</dd>
					</dl>
				</div>
			</div>
		</div>
	</div>
	</c:if>
	<c:if test="${LANG eq 'en' }">
	<div id="container" class="content-wrap">
				<div class="content-box">

					<div class="title-wrap">
						<div class="inner-box">
							<h3 class="title-type">M-TEC, a South African Production Corporation</h3>
							<p>Taihan’s forward base on the African continent</p>
						</div>
					</div>

					<div class="global-detail">
						<div class="bg v4"></div>
						<div class="inner-box">
							<p class="desc">
								We established our South African Republic joint venture M-TEC in 2000 with a local South African firm. An all-arounder cable production company of optical cables, power cables and more, M-TEC is taking a step up into the ranks of the best cable producers on the African continent.
							</p>

							<ul class="list-summary">
								<li>
									<div class="icon-box"><i class="ico-summary"></i></div>
									<dl>
										<dt>Establishment</dt>
										<dd><strong>2000</strong></dd>
									</dl>
								</li>
								<li>
									<div class="icon-box"><i class="ico-summary2"></i></div>
									<dl>
										<dt>Employees</dt>
										<dd><strong>319 people</strong>(As of 2022)</dd>
									</dl>
								</li>
								<li>
									<div class="icon-box"><i class="ico-summary3"></i></div>
									<dl>
										<dt>Area</dt>
										<dd><strong>90,000<span>㎡</span></strong></dd>
									</dl>
								</li>
								<li class="col2">
									<div class="icon-box"><i class="ico-summary5"></i></div>
									<dl>
										<dt>Production Items</dt>
										<dd><strong>Power Cables, Optical Cables, Base Metal</strong></dd>
									</dl>
								</li>
							</ul>
						</div>
					</div>
				</div>

				<div class="content-box">
					<div class="inner-box">
						<div class="detail-wrap2" data-delighter>
							<strong class="title">Resilient Local Networks</strong>
							<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/cont04/img01.jpg"></div>
							<p class="text">
								We are getting into the fast-growing African market on the ground floor and expanding our global reach at the same time by leveraging the networks and capabilities, built through a long history of local production and supply. We work extensively with Korean plants in the South African Republic on plant and support projects, and have gained a reputation for our project capabilities and the quality of our work.
							</p>
						</div>
					</div>
				</div>

				<div class="content-box bg">
					<div class="inner-box">
						<div class="detail-wrap2 right" data-delighter>
							<strong class="title">Tailored Production</strong>
							<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/cont04/img02.jpg"></div>
							<p class="text">
								M-TEC produces an array of products ranging from HV and MV/LV cables to instrument control cables, ACCC, and base metal. We provide products tailored to customer needs on the strength of our versatile facilities, efficient production lines, a thorough knowledge of local power grids, and a precise understanding of our customers’ needs.
							</p>
						</div>
					</div>
				</div>

				<div class="content-box">
					<div class="inner-box">
						<div class="thumbs-gallery">
							<div class="view-swiper">
								<div class="swiper-wrapper">
									<!-- 2022-11-16 수정 -->
									<div class="swiper-slide">
										<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery04/img03.jpg"></div>
										<p class="desc">M-TEC participated in the exhibition</p>
									</div>
									<div class="swiper-slide">
										<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery04/img01.jpg"></div>
										<p class="desc">M-TEC</p>
									</div>
									<div class="swiper-slide">
										<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery04/img02.jpg"></div>
										<p class="desc">M-TEC</p>
									</div>
									<div class="swiper-slide">
										<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery04/img04.jpg"></div>
										<p class="desc">M-TEC</p>
									</div>
									<div class="swiper-slide">
										<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery04/img05.jpg"></div>
										<p class="desc">M-TEC</p>
									</div>
									<div class="swiper-slide">
										<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery04/img06.jpg"></div>
										<p class="desc">M-TEC</p>
									</div>
									<div class="swiper-slide">
										<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery04/img07.jpg"></div>
										<p class="desc">M-TEC</p>
									</div>
									<div class="swiper-slide">
										<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery04/img08.jpg"></div>
										<p class="desc">M-TEC</p>
									</div>
									<div class="swiper-slide">
										<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery04/img09.jpg"></div>
										<p class="desc">M-TEC</p>
									</div>
									<!-- //2022-11-16 수정 -->

								</div>
								<div class="swiper-button-next"></div>
								<div class="swiper-button-prev"></div>
								<button type="button" class="btn-zoom"><i class="ico-more2"><span class="hidden">View larger image</span></i></button>
							</div>
							<div class="thumbs-swiper">
								<div class="swiper-wrapper">
									<div class="swiper-slide">
										<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery04/img03.jpg"></div>
									</div>
									<div class="swiper-slide">
										<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery04/img01.jpg"></div>
									</div>
									<div class="swiper-slide">
										<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery04/img02.jpg"></div>
									</div>
									<!-- 2022-11-16 수정 -->
									<div class="swiper-slide">
										<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery04/img04.jpg"></div>
									</div>
									<div class="swiper-slide">
										<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery04/img05.jpg"></div>
									</div>
									<div class="swiper-slide">
										<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery04/img06.jpg"></div>
									</div>
									<div class="swiper-slide">
										<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery04/img07.jpg"></div>
									</div>
									<div class="swiper-slide">
										<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery04/img08.jpg"></div>
									</div>
									<div class="swiper-slide">
										<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery04/img09.jpg"></div>
									</div>
									<!-- //2022-11-16 수정 -->
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="content-box">
					<div class="inner-box">
						<div class="detail-wrap">
							<dl>
								<dt>The Plant<br /> at a Glance</dt>
								<dd>
									<img src="${CON_STATIC_URL}/asset/images/business/global_detail/map04_en.svg" alt="">
									<button type="button" class="btn-zoom factory"><i class="ico-more2"><span class="hidden">View larger image</span></i></button>
								</dd>
							</dl>
						</div>
					</div>
				</div>

				<div class="content-box">
					<div class="inner-box">
						<div class="detail-wrap">
							<dl>
								<dt>Contact Information</dt>
								<dd>
									<ul class="list-info">
										<li>
											<dl>
												<dt>Address</dt>
												<dd>1 Steel Road, Peacehaven, Vereeniging 1939, Gauteng, South Africa<a href="https://goo.gl/maps/WYZHpaVeNAQhGFk19" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">VIEW MAP</span></i></a></dd>
											</dl>
										</li>
										<li>
											<dl>
												<dt>Tel</dt>
												<dd><a href="tel:+27-16-450-8220">+27-16-450-8220</a></dd>
											</dl>
										</li>
										<li>
											<dl>
												<dt>Site</dt>
												<dd><a href="https://www.m-tec.co.za/" target="_blank">www.m-tec.co.za<i class="ico-outer"></i></a></dd>
											</dl>
										</li>
									</ul>
								</dd>
							</dl>
						</div>
					</div>
				</div>

			</div>
	</c:if>
</section>
<!--//content-->

<!-- zoom팝업 -->
<!-- 2022-10-27 -->
<script src="${CON_STATIC_URL}/asset/js/panzoom.js"></script>

<div class="pop-layer pop-full" id="pop-zoom">
	<div class="pop-wrap">
		<div class="pop-header">
			<button class="pop-close"><span class="hidden">팝업닫기</span></button>
		</div>
		<div class="pop-content">
			<div class="img-box">
				<div class="panzoom" id="panzoom-element"><img src="" alt=""></div>
			</div>
		</div>
	</div>
</div>

<script>
	var elem = document.getElementById('panzoom-element');
	var panzoom = Panzoom(elem);
</script>
<!-- //zoom팝업 -->
		
<script>
$(document).ready(function(){
	//gnb세팅
	setTimeout(function() {
		setmenu(2, '0204');
	}, 100);
});
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
$('.btn-zoom').on('click', function () {
	UI.layerPopUp({ selId: '#pop-zoom' });
	panzoom.zoom(1);//2022-10-27
	if ($(this).hasClass('factory')) {
		$('#pop-zoom').find('.img-box img').attr('src', $(this).prev('img').attr('src'));
	} else {
		$('#pop-zoom').find('.img-box img').attr('src', viewSwiper.slides.eq(viewSwiper.activeIndex).find('img').attr('src'));
	}
});
</script>