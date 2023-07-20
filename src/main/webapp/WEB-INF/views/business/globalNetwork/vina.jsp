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
						<h3 class="title-type">베트남 생산법인, 대한비나</h3>
						<p>글로벌 시장 공략의 전략적 요충지</p>
						<a href="javascript:UI.layerPopUp({ selId: '#pop-sns' });" class="btn-share">
							<i class="ico-share"><span class="hidden">공유하기</span></i>
						</a>
					</div>
				</div>

				<div class="global-detail">
					<!-- 수정 -->
					<div class="bg v3"></div>
					<!-- 수정 -->
					<div class="inner-box">
						<p class="desc">대한비나(Taihan Cable Vina)는 베트남 경제 문화 중심지인 호치민에 위치한 종합 전선회사입니다. 글로벌 시장 대응을 위한 전략적 요충지로서, 베트남의 경제 성장 및 전력 인프라 수요 확대에 따라 가파른 성장세를 이어가고 있습니다. 지속적인 설비 확충과 기술 투자로 차별화된 제품 경쟁력을 갖추고, 내수
							시장을 넘어 글로벌 시장으로 영향력을 확장하고 있습니다.</p>

						<ul class="list-summary">
							<li>
								<div class="icon-box">
									<i class="ico-summary"></i>
								</div>
								<dl>
									<dt>설립연도</dt>
									<dd>
										<strong>2005년</strong>
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
										<strong>300명</strong>*2022년 기준
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
										<strong>151,000<span>㎡</span></strong>
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
										<strong>전력케이블, 통신케이블, 소재 등</strong>
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
						<strong class="title">다양한 제품 포트폴리오</strong>
						<div class="img-flex">
							<img src="${CON_STATIC_URL}/asset/images/business/global_detail/cont03/img01.jpg">
						</div>
						<p class="text">고압 및 중저압 케이블을 비롯해, 제어계장용 케이블, ACCC 및 전선 소재 등 다양한 제품을 생산하고 있습니다. 최근에는 CCV(Catenary Continuous Vulcanization) 라인 증설을 통해 전력 케이블 생산량을 2배 이상 확대하였습니다.</p>
					</div>
				</div>
			</div>

			<div class="content-box bg">
				<div class="inner-box">
					<div class="detail-wrap2 right" data-delighter>
						<strong class="title">시장의 신뢰를 바탕으로 성장</strong>
						<div class="img-flex">
							<img src="${CON_STATIC_URL}/asset/images/business/global_detail/cont03/img02.jpg">
						</div>
						<p class="text">영업부터 생산, 품질 관리에 이르기까지 대한전선의 노하우를 그대로 전수받은 대한비나는 단계적 현지화 전략을 통해 시장의 신뢰를 받는 기업으로 자리매김했습니다. 높은 기술력과 품질 수준으로 경쟁 우위를 확보하며 베트남, 스리랑카, 미얀마 등 동남아시아 국가를 비롯하여 호주, 미국까지 진출하는 등 뛰어난 성과를
							거두고 있습니다.</p>
					</div>
				</div>
			</div>

			<!-- 2022-10-18 갤러리업데이트 -->
			<div class="content-box">
				<div class="inner-box">
					<div class="thumbs-gallery">
						<div class="view-swiper">
							<div class="swiper-wrapper">
								<div class="swiper-slide">
									<div class="img-flex">
										<img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery03/img01.jpg">
									</div>
									<p class="desc">대한비나 전경</p>
								</div>
								<div class="swiper-slide">
									<div class="img-flex">
										<img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery03/img02.jpg">
									</div>
									<p class="desc">대한비나 공장 외부</p>
								</div>
								<div class="swiper-slide">
									<div class="img-flex">
										<img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery03/img03.jpg">
									</div>
									<p class="desc">대한비나 공장 외부</p>
								</div>
								<div class="swiper-slide">
									<div class="img-flex">
										<img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery03/img04.jpg">
									</div>
									<p class="desc">대한비나 공장 내부</p>
								</div>
								<div class="swiper-slide">
									<div class="img-flex">
										<img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery03/img05.jpg">
									</div>
									<p class="desc">대한비나 공장 내부</p>
								</div>
								<div class="swiper-slide">
									<div class="img-flex">
										<img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery03/img06.jpg">
									</div>
									<p class="desc">대한비나 공장 내부</p>
								</div>

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
										<img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery03/img01.jpg">
									</div>
								</div>
								<div class="swiper-slide">
									<div class="img-box">
										<img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery03/img02.jpg">
									</div>
								</div>
								<div class="swiper-slide">
									<div class="img-box">
										<img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery03/img03.jpg">
									</div>
								</div>
								<div class="swiper-slide">
									<div class="img-box">
										<img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery03/img04.jpg">
									</div>
								</div>
								<div class="swiper-slide">
									<div class="img-box">
										<img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery03/img05.jpg">
									</div>
								</div>
								<div class="swiper-slide">
									<div class="img-box">
										<img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery03/img06.jpg">
									</div>
								</div>

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
								<img src="${CON_STATIC_URL}/asset/images/business/global_detail/map03.svg" alt="">
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
											<dt>공장</dt>
											<dd>
												Long Thanh IZ, Dong Nai Province, Vietnam
												<a href="https://goo.gl/maps/rqS27QK6Ff97jaY66" target="_blank" class="btn-map">
													<i class="ico-outer"><span class="hidden">주소보기</span></i>
												</a>
											</dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt>법인</dt>
											<dd>152/11B Dien Bien Phu St., W.25, Binh Thanh District, HCM City, Vietnam</dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt>연락처</dt>
											<dd>
												<a href="tel:+84-28-3518-0786">+84-28-3518-0786</a>
											</dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt>웹사이트</dt>
											<dd>
												<a href="http://www.taihancable.com.vn" target="_blank">
													www.taihancable.com.vn<i class="ico-outer"></i>
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
						<h3 class="title-type">Taihan VINA, Vietnamese Production Firm</h3>
						<p>A strategic foothold toward the global market</p>
					</div>
				</div>

				<div class="global-detail">
					<div class="bg v3"></div>
					<div class="inner-box">
						<p class="desc">
							Taihan VINA is a cable production firm with a comprehensive array of products. Located in the heart of Vietnamese economy and culture in Ho Chi Minh City, it is strategically placed to target the global market and growing rapidly on the rising wave of Vietnamese economic growth and expanding power infrastructure needs. Continuous facility upgrades and technology investment make Taihan VINA products stand out from the crowd, and the firm is expanding its influence beyond the domestic market to the global.
						</p>

						<ul class="list-summary">
							<li>
								<div class="icon-box"><i class="ico-summary"></i></div>
								<dl>
									<dt>Established</dt>
									<dd><strong>2005</strong></dd>
								</dl>
							</li>
							<li>
								<div class="icon-box"><i class="ico-summary2"></i></div>
								<dl>
									<dt>Employees</dt>
									<dd><strong>300 people</strong>(as of 2022)</dd>
								</dl>
							</li>
							<li>
								<div class="icon-box"><i class="ico-summary3"></i></div>
								<dl>
									<dt>Area</dt>
									<dd><strong>151,000<span>㎡</span></strong></dd>
								</dl>
							</li>
							<li class="col2">
								<div class="icon-box"><i class="ico-summary5"></i></div>
								<dl>
									<dt>Production Items</dt>
									<!-- 2023-01-13 수정 -->
									<dd><strong>Power Cables, Communication Cables, Base Metal</strong></dd>
									<!-- // 2023-01-13 수정 -->
								</dl>
							</li>
						</ul>
					</div>
				</div>
			</div>

			<div class="content-box">
				<div class="inner-box">
					<div class="detail-wrap2" data-delighter>
						<strong class="title">A Full-Range Product Portfolio</strong>
						<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/cont03/img01.jpg"></div>
						<p class="text">
							In addition to HV and MV/LV cables, Taihan VINA manufactures a broad range of products including instrument control cables, ACCC cables, and wire materials. Power cable production was more than doubled recently by expanding the CCV (Catenary Continuous Vulcanization) line
						</p>
					</div>
				</div>
			</div>

			<div class="content-box bg">
				<div class="inner-box">
					<div class="detail-wrap2 right" data-delighter>
						<strong class="title">Growth Fueled by Market Trust</strong>
						<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/cont03/img02.jpg"></div>
						<p class="text">
							Taihan VINA, having been handed the entirety of Taihan’s know-how from sales to production and quality assurance, implemented a stage-by-stage localization strategy that won the market’s trust. Its competitive edge honed with unparalleled technology and quality, Taihan VINA is expanding not only into the Southeast Asian countries of Vietnam,<br>Sri Lanka, and Myanmar, but even Australia and the United States.
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
									<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery03/img01.jpg"></div>
									<p class="desc">Taihan VINA</p>
								</div>
								<div class="swiper-slide">
									<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery03/img02.jpg"></div>
									<p class="desc">Taihan VINA</p>
								</div>
								<div class="swiper-slide">
									<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery03/img03.jpg"></div>
									<p class="desc">Taihan VINA </p>
								</div>
								<div class="swiper-slide">
									<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery03/img04.jpg"></div>
									<p class="desc">Taihan VINA</p>
								</div>
								<div class="swiper-slide">
									<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery03/img05.jpg"></div>
									<p class="desc">Taihan VINA</p>
								</div>
								<div class="swiper-slide">
									<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery03/img06.jpg"></div>
									<p class="desc">Taihan VINA</p>
								</div>

							</div>
							<div class="swiper-button-next"></div>
							<div class="swiper-button-prev"></div>
							<button type="button" class="btn-zoom"><i class="ico-more2"><span class="hidden">View larger image</span></i></button>
						</div>
						<div class="thumbs-swiper">
							<div class="swiper-wrapper">
								<div class="swiper-slide">
									<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery03/img01.jpg"></div>
								</div>
								<div class="swiper-slide">
									<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery03/img02.jpg"></div>
								</div>
								<div class="swiper-slide">
									<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery03/img03.jpg"></div>
								</div>
								<div class="swiper-slide">
									<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery03/img04.jpg"></div>
								</div>
								<div class="swiper-slide">
									<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery03/img05.jpg"></div>
								</div>
								<div class="swiper-slide">
									<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery03/img06.jpg"></div>
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
								<img src="${CON_STATIC_URL}/asset/images/business/global_detail/map03_en.svg" alt="">
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
											<dt>Factory</dt>
											<dd>Long Thanh IZ, Dong Nai Province, Vietnam<a href="https://goo.gl/maps/rqS27QK6Ff97jaY66" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">VIEW MAP</span></i></a></dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt>Office</dt>
											<dd>152/11B Dien Bien Phu St., W.25, Binh Thanh District, HCM City, Vietnam</dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt>Tel</dt>
											<dd><a href="tel:+84-28-3518-0786">+84-28-3518-0786</a></dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt>Site</dt>
											<dd><a href="http://www.taihancable.com.vn" target="_blank">www.taihancable.com.vn<i class="ico-outer"></i></a></dd>
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