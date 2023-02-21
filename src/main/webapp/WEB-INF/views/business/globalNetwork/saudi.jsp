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
					<h3 class="title-type">전력기기 생산법인, 사우디대한</h3>
					<p>중동 전력기기 생산의 메카</p>
					<a href="javascript:UI.layerPopUp({ selId: '#pop-sns' });" class="btn-share">
						<i class="ico-share"><span class="hidden">공유하기</span></i>
					</a>
				</div>
			</div>

			<div class="global-detail">
				<!-- 수정 -->
				<div class="bg v5"></div>
				<!-- 수정 -->
				<div class="inner-box">
					<p class="desc">사우디대한(Saudi Taihan)은 GCC 지역 최초이자 유일한 HV(High Voltage)급 전력기기 제조업체입니다. 사우디의 송배전 전문 EPC인 모하메드 알-오자이미 그룹(Mohammed Al-Ojaimi Group)과의 공동 투자로 설립됐으며, 수도인 리야드 인근의 산업밀집지역에 위치하고 있습니다.
						사우디대한은 글로벌 전력기기 생산 기지로서, 중동 지역을 넘어 아프리카 및 유럽까지 시장을 확대해 나갈 것입니다.</p>

					<ul class="list-summary">
						<li>
							<div class="icon-box">
								<i class="ico-summary"></i>
							</div>
							<dl>
								<dt>설립연도</dt>
								<dd>
									<strong>2017년</strong>
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
									<strong>5,300<span>㎡</span></strong>
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
									<strong>케이블 접속기기</strong>
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
					<strong class="title">중동 전력기기의 기준</strong>
					<div class="img-flex">
						<img src="${CON_STATIC_URL}/asset/images/business/global_detail/cont05/img01.jpg">
					</div>
					<p class="text">전량 수입에 의존하던 사우디 전력기기 시장을 선점하기 위해 사우디전력청 납품에 필요한 ISO9001 인증과 PQ(Pre-Qualification) 승인을 획득하였습니다. 또한, 현지 EPC 시장에 대한 풍부한 지식과 정보 및 완벽한 생산의 현지화로 시장의 주요 공급자로 부상하였습니다.</p>
				</div>
			</div>
		</div>

		<div class="content-box bg">
			<div class="inner-box">
				<div class="detail-wrap2 right" data-delighter>
					<strong class="title">사우디대한 케이블&솔루션과의 시너지</strong>
					<div class="img-flex">
						<img src="${CON_STATIC_URL}/asset/images/business/global_detail/cont05/img02.jpg">
					</div>
					<p class="text">대한전선과 모하메드 알-오자이미 그룹은 2022년 6월, 초고압케이블 생산을 위한 합작법인 ‘사우디대한 케이블&솔루션’의 설립 계약을 체결했습니다. 신규 공장 건설이 완료되면 초고압케이블과 전력기기의 현지 생산이 가능해져 기술 및 가격 경쟁력을 확보할 수 있을 것으로 기대됩니다.</p>
				</div>
			</div>
		</div>

		<!-- 2022-10-20 갤러리업데이트 -->
		<div class="content-box">
			<div class="inner-box">
				<div class="thumbs-gallery">
					<div class="view-swiper">
						<div class="swiper-wrapper">
							<div class="swiper-slide">
								<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery05/img01.jpg"></div>
								<p class="desc">사우디대한 공장 전경</p>
							</div>
							<div class="swiper-slide">
								<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery05/img02.jpg"></div>
								<p class="desc">사우디대한 생산 현장</p>
							</div>
							<div class="swiper-slide">
								<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery05/img03.jpg"></div>
								<p class="desc">사우디대한 생산 현장</p>
							</div>
							<div class="swiper-slide">
								<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery05/img04.jpg"></div>
								<p class="desc">사우디대한 생산 현장</p>
							</div>
							<div class="swiper-slide">
								<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery05/img05.jpg"></div>
								<p class="desc">사우디대한 공장 현장</p>
							</div>
							<div class="swiper-slide">
								<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery05/img06.jpg"></div>
								<p class="desc">사우디대한 생산 현장</p>
							</div>
							<div class="swiper-slide">
								<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery05/img07.jpg"></div>
								<p class="desc">사우디대한 생산 현장</p>
							</div>
							<div class="swiper-slide">
								<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery05/img08.jpg"></div>
								<p class="desc">사우디대한 생산 현장</p>
							</div>
							<div class="swiper-slide">
								<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery05/img09.jpg"></div>
								<p class="desc">사우디대한 공장 현장</p>
							</div>
						</div>
						<div class="swiper-button-next"></div>
						<div class="swiper-button-prev"></div>
						<button type="button" class="btn-zoom"><i class="ico-more2"><span class="hidden">이미지 확대</span></i></button>
					</div>
					<div class="thumbs-swiper">
						<div class="swiper-wrapper">
							<div class="swiper-slide">
								<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery05/img01.jpg"></div>
							</div>
							<div class="swiper-slide">
								<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery05/img02.jpg"></div>
							</div>
							<div class="swiper-slide">
								<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery05/img03.jpg"></div>
							</div>
							<div class="swiper-slide">
								<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery05/img04.jpg"></div>
							</div>
							<div class="swiper-slide">
								<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery05/img05.jpg"></div>
							</div>
							<div class="swiper-slide">
								<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery05/img06.jpg"></div>
							</div>
							<div class="swiper-slide">
								<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery05/img07.jpg"></div>
							</div>
							<div class="swiper-slide">
								<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery05/img08.jpg"></div>
							</div>
							<div class="swiper-slide">
								<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery05/img09.jpg"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- //2022-10-20 갤러리업데이트 -->

		<div class="content-box">
			<div class="inner-box">
				<div class="detail-wrap">
					<dl>
						<dt>공장 한 눈에 보기</dt>
						<dd>
							<img src="${CON_STATIC_URL}/asset/images/business/global_detail/map05.svg" alt="">
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
											Exit-12, Al Kharj Road, PO Box 31329, Riyadh 11497, K.S.A.
											<a href="https://goo.gl/maps/iCEepVxgKifraXxs9" target="_blank" class="btn-map">
												<i class="ico-outer"><span class="hidden">주소보기</span></i>
											</a>
										</dd>
									</dl>
								</li>
								<li>
									<dl>
										<dt>연락처</dt>
										<dd>
											<a href="tel:+966-11-214-2012">+966-11-214-2012</a>
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
					<!-- 2022-10-26 텍스트 수정 -->
					<h3 class="title-type">
						Saudi Taihan,
						Cable Accessory Plant
					</h3>
					<p>Mecca of cable accessory Plant in the Middle East</p>
					<!-- //2022-10-26 텍스트 수정 -->
				</div>
			</div>

			<div class="global-detail">
				<div class="bg v5"></div>
				<div class="inner-box">
					<p class="desc">
						Saudi Taihan blazed a path as the first, and presently only, HV (High Voltage) cable accessory manufacturer in the GCC region. Founded as a joint venture with the Mohammed Al-Ojaimi Group, a Saudi Arabian EPC specialized in power transmission and distribution, Saudi Taihan is located in the industrial region near the capital city of Riyadh. A strategically-placed production base for global cable accessory, Saudi Taihan will be expanding its market beyond the Middle East into Africa and Europe.
					</p>

					<ul class="list-summary">
						<li>
							<div class="icon-box"><i class="ico-summary"></i></div>
							<dl>
								<dt>Established</dt>
								<dd><strong>2017</strong></dd>
							</dl>
						</li>
						<li>
							<div class="icon-box"><i class="ico-summary3"></i></div>
							<dl>
								<dt>Area</dt>
								<dd><strong>5,300<span>㎡</span></strong></dd>
							</dl>
						</li>
						<li class="col2">
							<div class="icon-box"><i class="ico-summary5"></i></div>
							<dl>
								<dt>Production Items</dt>
								<dd><strong>Cable accessories</strong></dd>
							</dl>
						</li>
					</ul>
				</div>
			</div>
		</div>

		<div class="content-box">
			<div class="inner-box">
				<div class="detail-wrap2" data-delighter>
					<strong class="title">Standard of Cable Accessory
						in the Middle East</strong>
					<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/cont05/img01.jpg"></div>
					<p class="text">
						We seized first-mover advantage in the Saudi Arabian cable accessory market, which was previously entirely import-dependent, by obtaining the ISO9001 certification and PQ(Pre-Qualification) approval required for supplying to the Saudi Arabian Electricity Regulatory Authority. We have risen to a force to be reckoned with in the supply market on the strength of fully localized production, and a wealth of knowledge and information on the local EPC market.
					</p>
				</div>
			</div>
		</div>

		<div class="content-box bg">
			<div class="inner-box">
				<div class="detail-wrap2 right" data-delighter>
					<!-- 2022-10-26 텍스트 수정 -->
					<strong class="title">Unstoppable Synergy with<br>
						Saudi Taihan Cable & Solution</strong>
					<!-- //2022-10-26 텍스트 수정 -->
					<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/cont05/img02.jpg"></div>
					<p class="text">
						In June 2022, Taihan launched a joint venture to establish Saudi Taihan Cable & Solution, a producer of EHV cables, with Mohammed Al-Ojaimi Group. Once construction on the new plant is complete, the local production of EHV cables and cable accessory will enhance both our technological and price competitiveness.
					</p>
				</div>
			</div>
		</div>

		<div class="content-box">
			<div class="inner-box">
				<div class="thumbs-gallery">
					<div class="view-swiper">
						<div class="swiper-wrapper">
							<div class="swiper-slide">
								<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery05/img01.jpg"></div>
								<p class="desc">Saudi Taihan</p>
							</div>
							<div class="swiper-slide">
								<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery05/img02.jpg"></div>
								<p class="desc">Production line in Saudi Taihan</p>
							</div>
							<div class="swiper-slide">
								<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery05/img03.jpg"></div>
								<p class="desc">Production line in Saudi Taihan</p>
							</div>
							<div class="swiper-slide">
								<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery05/img04.jpg"></div>
								<p class="desc">Production line in Saudi Taihan</p>
							</div>
							<div class="swiper-slide">
								<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery05/img05.jpg"></div>
								<p class="desc">Saudi Taihan</p>
							</div>
							<div class="swiper-slide">
								<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery05/img06.jpg"></div>
								<p class="desc">Production line in Saudi Taihan</p>
							</div>
							<div class="swiper-slide">
								<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery05/img07.jpg"></div>
								<p class="desc">Production line in Saudi Taihan</p>
							</div>
							<div class="swiper-slide">
								<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery05/img08.jpg"></div>
								<p class="desc">Production line in Saudi Taihan</p>
							</div>
							<div class="swiper-slide">
								<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery05/img09.jpg"></div>
								<p class="desc">Saudi Taihan</p>
							</div>
						</div>
						<div class="swiper-button-next"></div>
						<div class="swiper-button-prev"></div>
						<button type="button" class="btn-zoom"><i class="ico-more2"><span class="hidden">이미지 확대</span></i></button>
					</div>
					<div class="thumbs-swiper">
						<div class="swiper-wrapper">
							<div class="swiper-slide">
								<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery05/img01.jpg"></div>
							</div>
							<div class="swiper-slide">
								<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery05/img02.jpg"></div>
							</div>
							<div class="swiper-slide">
								<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery05/img03.jpg"></div>
							</div>
							<div class="swiper-slide">
								<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery05/img04.jpg"></div>
							</div>
							<div class="swiper-slide">
								<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery05/img05.jpg"></div>
							</div>
							<div class="swiper-slide">
								<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery05/img06.jpg"></div>
							</div>
							<div class="swiper-slide">
								<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery05/img07.jpg"></div>
							</div>
							<div class="swiper-slide">
								<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery05/img08.jpg"></div>
							</div>
							<div class="swiper-slide">
								<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery05/img09.jpg"></div>
							</div>
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
							<img src="${CON_STATIC_URL}/asset/images/business/global_detail/map05_en.svg" alt="">
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
										<dd>Exit-12, Al Kharj Road, PO Box 31329, Riyadh 11497, K.S.A.<a href="https://goo.gl/maps/iCEepVxgKifraXxs9" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">주소보기</span></i></a></dd>
									</dl>
								</li>
								<li>
									<dl>
										<dt>Tel</dt>
										<dd><a href="tel:+966-11-214-2012">+966-11-214-2012</a></dd>
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