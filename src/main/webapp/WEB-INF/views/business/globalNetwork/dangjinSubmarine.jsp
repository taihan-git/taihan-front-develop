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
						<h3 class="title-type">당진해저케이블 공장</h3>
						<p>에너지 대전환 시대의 경쟁력 확보</p>
						<a href="javascript:UI.layerPopUp({ selId: '#pop-sns' });" class="btn-share">
							<i class="ico-share"><span class="hidden">공유하기</span></i>
						</a>
					</div>
				</div>

				<div class="global-detail">
					<!-- 수정 -->
					<div class="bg v6"></div>
					<!-- 수정 -->
					<div class="inner-box">
						<p class="desc">
							당진해저케이블공장은 신재생에너지, 탄소중립 등 에너지 대전환 시대를 맞아 급성장하고 있는 해저케이블 시장의 경쟁력 확보를 위해 설립한 생산기지입니다.
							대한전선은 수십 년간 국내외 시장에서 쌓아온 네트워크와 기술력을 총 동원해, 당진해저케이블공장을 1단계, 2단계 나누어 조성하고 있습니다. 내부망을 생산하는 1단계는 건설이 완료되어 제품을 생산하고 있으며, 외부망을 생산하는 2단계는 2025년 상반기를 목표로 건설하고 있습니다.
							해저케이블 2공장은 외부망 및 HVDC 해저케이블 생산을 위해 VCV(Vertical Continuous Vulcanization) 설비를 갖춘 공장으로, 2027년 준공을 목표로 준비 중입니다.
						</p>

						<ul class="list-summary">
							<li class="col col2">
								<div class="icon-box">
									<i class="ico-summary5"></i>
								</div>
								<dl>
									<dt>1단계</dt>
									<dd>
										<strong>준공: 2024년</strong>
										<strong>생산: 내부망 해저케이블</strong>
									</dd>
								</dl>
							</li>							
							<li class="col col2">
								<div class="icon-box">
									<i class="ico-summary5"></i>
								</div>
								<dl>
									<dt>2단계</dt>
									<dd>
										<strong>준공: 2025년(예정)</strong>
										<strong>생산: 외부망 해저케이블</strong>
									</dd>
								</dl>
							</li>
							<li class="col2">
								<div class="icon-box">
									<i class="ico-summary3"></i>
								</div>
								<dl>
									<dt>면적</dt>
									<dd>
										<strong>44,800<span>㎡</span></strong>(약 13,500평)
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
						<strong class="title">서부 클러스터(West Cluster)</strong>
						<div class="img-flex">
							<img src="${CON_STATIC_URL}/asset/images/business/global_detail/cont06/img01.jpg">
						</div>
						<!-- 2022-12-26 -->
						<p class="text">
							당진해저케이블공장은 세계 최대 규모를 자랑하는 당진케이블공장, 접속재 등을 생산하는 당진솔루션공장과 인접해 있어 ‘서부 클러스터’를 조성하는데 중추적인 역할을 수행합니다.
							특히 기존 공장에서 자동차로 10여 분만에 이동할 수 있어 기존에 구축하여 운영해온 공장의 인적ᆞ물적 인프라를 그대로 활용 가능합니다.
						</p>
						<!-- 2022-12-26 -->
					</div>
				</div>
			</div>

			<div class="content-box">
				<div class="inner-box">
					<div class="detail-wrap2 right" data-delighter>
						<strong class="title">최적의 입지</strong>
						<div class="img-flex">
							<img src="${CON_STATIC_URL}/asset/images/business/global_detail/cont06/img02.jpg">
						</div>
						<p class="text">
							보통 해저케이블은 생산 직후 포설선에 선적해야 하는데, 공장이 부두와 바로 맞닿아 선적 경로가 짧은 것이 특징입니다. (공장-부두까지 150m) 이를 통해 시간 및 비용 등 효율성을 극대화할 수 있습니다.
							또한 서해안을 중심으로 형성되는 대규모 해상풍력 발전 단지와 인접해 있으며, 전 세계의 주요 시장에 빠르고 안전하게 해저케이블을 공급할 수 있는 최적의 입지에 위치하고 있습니다.
						</p>
					</div>
				</div>
			</div>
			<div class="content-box">
				<div class="inner-box">
					<div class="detail-wrap2" data-delighter>
						<strong class="title">국내 유일의 해상풍력용 CLV인 PALOS</strong>
						<div class="img-flex">
							<img src="${CON_STATIC_URL}/asset/images/business/global_detail/cont06/img03.jpg">
						</div>
						<p class="text">
							PALOS는 해저케이블을 포설하는 특수 선박으로, 국내 유일의 해상풍력용 CLV(Cable Laying Vessel)입니다.
							해당 선박은 최대 9노트(knot)의 속도까지 자항능력을 갖추고 있으며, 지정한 위치에 선박을 장시간 유지시키는 선박위치정밀제어시스템(DP2)도 탑재되어 있는 등 뛰어난 성능을 갖추고 있습니다.
						</p>
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
										<img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery06/img01.jpg">
									</div>
									<p class="desc">당진해저케이블공장 전경</p>
								</div>
								<div class="swiper-slide">
									<div class="img-flex">
										<img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery06/img02.jpg">
									</div>
									<p class="desc">서부 클러스터(West Cluster)</p>
								</div>
								<div class="swiper-slide">
									<div class="img-flex">
										<img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery06/img03.jpg">
									</div>
									<p class="desc">최적의 입지</p>
								</div>
								<div class="swiper-slide">
									<div class="img-flex">
										<img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery06/img04.jpg">
									</div>
									<p class="desc">국내 유일의 해상풍력용 CLV인 PALOS</p>
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
										<img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery06/img01.jpg">
									</div>
								</div>
								<div class="swiper-slide">
									<div class="img-box">
										<img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery06/img02.jpg">
									</div>
								</div>
								<div class="swiper-slide">
									<div class="img-box">
										<img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery06/img03.jpg">
									</div>
								</div>
								<div class="swiper-slide">
									<div class="img-box">
										<img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery06/img04.jpg">
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- //2022-10-18 갤러리업데이트 -->

			<!-- <div class="content-box">
			<div class="inner-box">
				<div class="detail-wrap">
					<dl>
						<dt>공장 한 눈에 보기</dt>
						<dd>
							<img src="${CON_STATIC_URL}/asset/images/business/global_detail/map02.svg" alt="">
							<button type="button" class="btn-zoom factory">
								<i class="ico-more2"><span class="hidden">이미지 확대</span></i>
							</button>
						</dd>
					</dl>
				</div>
			</div>
		</div> -->

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
												충청남도 당진시 송악읍 고대리 346-1
												<a href="https://maps.app.goo.gl/thMYxW5vExezTYTHA" target="_blank" class="btn-map">
													<i class="ico-outer"><span class="hidden">주소보기</span></i>
												</a>
											</dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt>연락처</dt>
											<dd><a href="tel:"></a></dd>
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
						<h3 class="title-type">Dangjin Submarine Plant</h3>
						<p>Rivals in the era of great energy transition</p>
					</div>
				</div>

				<div class="global-detail">
					<div class="bg v2"></div>
					<div class="inner-box">
						<p class="desc">
							The Dangjin Submarine Plant was established to secure competitiveness in the rapidly growing submarine cable market, driven by the global energy transition towards renewable energy and carbon neutrality.
							Taihan is developing the Dangjin Submarine Plant in two steps, leveraging its extensive network and technological expertise built over decades in domestic and international markets. The first step focuses on producing inter array cable, and second step will produce export cable. The first step has been completed and is already in production, with the second step expected to begin production by 2025.
						</p>

						<ul class="list-summary">
							<li class="col col2">
								<div class="icon-box"><i class="ico-summary5"></i></div>
								<dl>
									<dt>First Step</dt>
									<dd><strong>Established: 2024</strong></dd>
									<dd><strong>Production Items: Inter Array Cable</strong></dd>
								</dl>
							</li>
							<li class="col col2">
								<div class="icon-box"><i class="ico-summary5"></i></div>
								<dl>
									<dt>Second Step</dt>
									<dd><strong>Established: 2025(Planned)</strong></dd>
								 	<dd><strong>Production Items: Export Cable</strong></dd>
								</dl>
							</li>
							<li class="col2">
								<div class="icon-box"><i class="ico-summary3"></i></div>
								<dl>
									<dt>Area</dt>
									<dd><strong>44,800<span>㎡</span></strong>(11.03 acres)</dd>
								</dl>
							</li>
						</ul>
					</div>
				</div>
			</div>

			<div class="content-box">
				<div class="inner-box">
					<div class="detail-wrap2" data-delighter>
						<strong class="title">West Cluster</strong>
						<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/cont06/img01.jpg"></div>
						<p class="text">
							The Dangjin Submarine Plant plays a pivotal role in forming the "West Cluster," being adjacent to the world's largest Dangjin Cable Plant and the Dangjin Solution Plant, which produces cable accessories. The proximity of the new plant to existing facilities—just a 10-minute drive—allows for the effective utilization of the well-established human and material infrastructure.
						</p>
					</div>
				</div>
			</div>

			<div class="content-box">
				<div class="inner-box">
					<div class="detail-wrap2 right" data-delighter>
						<strong class="title">Optimal Location</strong>
						<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/cont06/img02.jpg"></div>
						<p class="text">
							The plant's direct access to the port, with only a 150-meter distance from the plant to the dock, facilitates the immediate loading of submarine cables onto installation vessels, maximizing efficiency in time and cost.<br>
							Additionally, it is strategically positioned near large-scale offshore wind farm developments on the west coast, providing quick and safe access to major global markets.
						</p>
					</div>
				</div>
			</div>

			<div class="content-box">
				<div class="inner-box">
					<div class="detail-wrap2" data-delighter>
						<strong class="title">PALOS: Korea's Only Offshore Wind CLV</strong>
						<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/cont06/img01.jpg"></div>
						<p class="text">
							PALOS is a specialized Cable Laying Vessel (CLV) dedicated to offshore wind projects and is unique in Korea. The vessel is capable of speeds up to 9 knots and is equipped with a Dynamic Positioning System (DP2) that maintains precise positioning for extended periods, ensuring high performance in submarine cable installation.
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
									<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery06/img01.jpg"></div>
									<p class="desc">Dangjin Submarine Plant</p>
								</div>
								<div class="swiper-slide">
									<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery06/img02.jpg"></div>
									<p class="desc">West Cluster</p>
								</div>
								<div class="swiper-slide">
									<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery06/img03.jpg"></div>
									<p class="desc">Optimal Location</p>
								</div>
								<div class="swiper-slide">
									<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery06/img04.jpg"></div>
									<p class="desc">PALOS: Korea's Only Offshore Wind CLV</p>
								</div>
							</div>
							<div class="swiper-button-next"></div>
							<div class="swiper-button-prev"></div>
							<button type="button" class="btn-zoom"><i class="ico-more2"><span class="hidden">View larger image</span></i></button>
						</div>
						<div class="thumbs-swiper">
							<div class="swiper-wrapper">
								<div class="swiper-slide">
									<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery06/img01.jpg"></div>
								</div>
								<div class="swiper-slide">
									<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery06/img02.jpg"></div>
								</div>
								<div class="swiper-slide">
									<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery06/img03.jpg"></div>
								</div>
								<div class="swiper-slide">
									<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery06/img04.jpg"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--

				<div class="content-box">
					<div class="inner-box">
						<div class="detail-wrap">
							<dl>
								<dt>The Plant<br /> at a Glance</dt>
								<dd>
									<img src="${CON_STATIC_URL}/asset/images/business/global_detail/map02_en.svg" alt="">
									<button type="button" class="btn-zoom factory"><i class="ico-more2"><span class="hidden">View larger image</span></i></button>
								</dd>
							</dl>
						</div>
					</div>
				</div> -->

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
											<dd>
												346-1 Godae-ri, Songak-eup Dangjin-si, Chungcheongnam-do
												<a href="https://maps.app.goo.gl/thMYxW5vExezTYTHA" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">VIEW MAP</span></i></a></dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt>Tel</dt>
											<dd><a href=""></a></dd>
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