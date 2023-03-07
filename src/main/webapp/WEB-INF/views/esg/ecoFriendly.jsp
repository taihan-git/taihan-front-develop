<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/views/common/taglib.jsp"/>
<!--content-->
<section id="content" class="sub-wrap esg-environment">

	<div class="sub-visual" style="background-image: url(${CON_STATIC_URL}/asset/images/esg/visual_esg_02.jpg?v4)">
		<div class="sub-title">
			<h2 class="title-type"><spring:message code="environment.title" text="환경"/></h2>
		</div>
	</div>

	<%-- GNB(S)--%>
	<jsp:include page="/WEB-INF/views/_decorators/inc/gnb.jsp" />
	<%-- GNB(E) --%>


	<div id="container" class="content-wrap is-last-bg">
		<div class="content-box">
			<div class="inner-box">
				<div class="title-wrap v2" data-delighter>
					<strong class="title-type">
						<spring:message code="environment.subtitle1" text='자연과 인간을 위한 <br class="mo-br">친환경 경영을 실천합니다.'/>
					</strong>
				</div>

				<c:if test="${LANG eq 'ko'}">
					<!-- tab -->
					<div class="tab-wrap" data-delighter>
						<ul class="tab-type">
							<li ><a href="/esg/environment"><span><spring:message code="environment.topBtn1" text="환경경영"/></span></a></li>
							<li ><a href="/esg/pollution"><span><spring:message code="environment.topBtn2" text="오염물질 관리"/></span></a></li>
							<li class="active"><a href="/esg/ecoFriendly"><span><spring:message code="environment.topBtn3" text="친환경 기술 및 정책"/></span></a></li>
						</ul>
					</div>
					<!-- //tab -->
				</c:if>
				<c:if test="${LANG eq 'en'}">
					<!-- tab -->
					<div class="tab-wrap" data-delighter>
						<ul class="tab-type">
							<li ><a href="/en/esg/environment"><span><spring:message code="environment.topBtn1" text="환경경영"/></span></a></li>
							<li ><a href="/en/esg/pollution"><span><spring:message code="environment.topBtn2" text="오염물질 관리"/></span></a></li>
							<li class="active"><a href="/en/esg/ecoFriendly"><span><spring:message code="environment.topBtn3" text="친환경 기술 및 정책"/></span></a></li>
						</ul>
					</div>
					<!-- //tab -->
				</c:if>

				<c:if test="${LANG eq 'ko'}">
					<p class="text-type" data-delighter>
						친환경 자재 구매 확대 및 제품 개발 등<br>
						넷제로(Net-zero)의 실천을 위한 다양한 환경 경영을 수행하고 있습니다.
					</p>

					<div class="title-wrap4" data-delighter>
						<h3 class="title-type">친환경 제품 및 기술 확대</h3>
						<p>
							탄소중립에 기여하고자 친환경 인증 제도(환경표지제도)를 보유한 제품을 판매하고 있으며,<br>
							친환경 제품 포트폴리오의 확장을 위한 투자와 개발을 적극 추진하고 있습니다.
						</p>
					</div>

					<ul class="list-detail4" data-delighter>
						<li data-delighter>
							<div class="title-box">
								<strong class="title">환경표지제도 인증</strong>
							</div>
							<div class="desc-box">
								<p>HFIX CoBRa 케이블, HFCO케이블</p>
							</div>
						</li>
						<li data-delighter>
							<div class="title-box">
								<strong class="title">녹색기술인증</strong>
							</div>
							<div class="desc-box">
								<p>내열성이 향상된 비가교 폴리프로필렌 절연<br>
									및 반도전 전력케이블 제조 기술</p>
							</div>
						</li>
						<li data-delighter>
							<div class="title-box">
								<strong class="title">친환경 제품 개발</strong>
							</div>
							<div class="desc-box">
								<p>154kV급 송전용 친환경PP케이블,<br>
									친환경 에폭시 및 전자식 변성기 적용 Spacer</p>
							</div>
						</li>
					</ul>
				</c:if>
				<c:if test="${LANG eq 'en'}">
					<p class="text-type" data-delighter>
						Taihan is performing a range of environmental management activities to achieve Net Zero
						(carbon neutrality), such as to expand eco-friendly material purchase and eco-friendly
						product development.
					</p>

					<div class="title-wrap4" data-delighter>
						<h3 class="title-type">Expansion of Eco-friendly Products and Technologies
						</h3>
						<p>
							With a goal to contribute to Net Zero, Taihan is selling products for which eco-friendly
							certification (Eco-Label) has been obtained. Taihan is actively promoting investment and
							development to expand its eco-friendly product portfolio.
						</p>
					</div>

					<ul class="list-detail4" data-delighter>
						<li data-delighter>
							<div class="title-box">
								<strong class="title">Eco-Label Certification</strong>
							</div>
							<div class="desc-box">
								<p>HFIX CoBRa cable, HFCO cable</p>
							</div>
						</li>
						<li data-delighter>
							<div class="title-box">
								<strong class="title">Green Technology Certification</strong>
							</div>
							<div class="desc-box">
								<p>Technology to manufacture non-crosslinked polypropylene insulation and
									semi-conducting electric cable with improved heat resistance</p>
							</div>
						</li>
						<li data-delighter>
							<div class="title-box">
								<strong class="title">Eco-friendly Product Development</strong>
							</div>
							<div class="desc-box">
								<p>154kV class eco-friendly PP cable for transmission, spacer with eco-friendly
									epoxy and electronic transformer applied</p>
							</div>
						</li>
					</ul>
				</c:if>

				<ul class="list-prd" data-delighter>
					<li>
						<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/esg/img_prd03.jpg" alt=""></div>
						<strong class="title"><spring:message code="ecoFriendly.imgTitle1" text="HFIX CoBRa 케이블"/></strong>
					</li>
					<li>
						<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/esg/img_prd02.jpg" alt=""></div>
						<strong class="title"><spring:message code="ecoFriendly.imgTitle2" text="HFCO 케이블"/></strong>
					</li>
					<li>
						<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/esg/img_prd01.jpg" alt=""></div>
						<strong class="title"><spring:message code="ecoFriendly.imgTitle3" text="154kV급 친환경<br>
									PP(Polypropylene) 케이블"/></strong>
					</li>
					<li>
						<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/esg/img_prd04.jpg" alt=""></div>
						<strong class="title"><spring:message code="ecoFriendly.imgTitle4" text="친환경 에폭시 및<br>
									전자식 변성기 적용 Spacer"/></strong>
					</li>
				</ul>
			</div>
		</div>


		<div class="content-box bg">
			<div class="inner-box">
				<c:if test="${LANG eq 'ko'}">
					<div class="title-wrap4" data-delighter>

						<h3 class="title-type">친환경 자재 구매</h3>
						<p>
							협력 회사와 함께 친환경 자재를 개발하는 등 다양한 노력을 통해 친환경 자재의 사용을 점진적으로 확대하고 있습니다.<br>
							또한 다양한 원, 부자재 사용량을 절감하는 활동으로 원가 경쟁력을 높이는 동시에 환경 보호를 실천합니다.
						</p>
					</div>

					<div class="btn-wrap t-c" data-delighter>
						<a href="/resources/files/taihan_GreenPurchasingPolicy.pdf" class="btn-type v3 btn-m"  target="_blank">녹색구매방침 바로보기<i class="ico-arr"></i></a>
					</div>
				</c:if>
				<c:if test="${LANG eq 'en'}">
					<div class="title-wrap4" data-delighter>

						<h3 class="title-type">Eco-friendly Material Purchase</h3>
						<p>
							Taihan gradually increases the use of eco-friendly materials by making various efforts
							together with suppliers, such as to develop eco-friendly materials. Taihan also
							practices environmental protection at the same time as increasing cost competitive edge
							by performing activities to reduce the consumption of raw and subsidiary materials.
						</p>
					</div>

					<!-- 2022-11-02 수정 -->
					<!-- <div class="btn-wrap t-c" data-delighter>
					<a href="#" class="btn-type v3 btn-m">Green Procurement Policy<i class="ico-arr"></i></a>
					</div> -->
					<!-- //2022-11-02 수정 -->
				</c:if>
			</div>
		</div>

		<div class="content-box">
			<div class="inner-box">
				<c:if test="${LANG eq 'ko'}">
					<div class="title-wrap4" data-delighter>
						<h3 class="title-type">청정 생산 시스템</h3>
						<p>
							청정 생산 시스템을 갖추고 케이블을 비롯한 모든 제품의 생산 과정에서 환경을 고려합니다.
						</p>
					</div>

					<div class="board-wrap" data-delighter>
						<div class="board-body">
							<ul class="list-board2">
								<li>
									<div class="list-item">
										<div class="img-flex">
											<img src="${CON_STATIC_URL}/asset/images/esg/img_purity01.jpg" alt="">
										</div>
										<div class="title-box">
											<strong class="title">보일러 저녹스 버너</strong>
											<p class="desc">
												연소 시 온도, 산소 농도 조절 및 방출열 재활용으로 질소산화물(NOx) 배출량 최소화
											</p>
										</div>
									</div>
								</li>
								<li>
									<div class="list-item">
										<div class="img-flex">
											<img src="${CON_STATIC_URL}/asset/images/esg/img_purity02.jpg" alt="">
										</div>
										<div class="title-box">
											<strong class="title">폐수 무방류 처리 시스템</strong>
											<p class="desc">
												오염물질 배출을 최소화하는 고효율 수처리 시스템 운영
											</p>
										</div>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</c:if>
				<c:if test="${LANG eq 'en'}">
					<div class="title-wrap4" data-delighter>
						<h3 class="title-type">Clean Production System</h3>
						<p>
							Equipped with a clean production system, Taihan takes environment into consideration
							throughout the manufacturing process of all products including cables.
						</p>
					</div>

					<div class="board-wrap" data-delighter>
						<div class="board-body">
							<ul class="list-board2">
								<li>
									<div class="list-item">
										<div class="img-flex">
											<img src="${CON_STATIC_URL}/asset/images/esg/img_purity01.jpg" alt="">
										</div>
										<div class="title-box">
											<strong class="title">Low NOx Burner for Boiler</strong>
											<p class="desc">
												Minimizing the emission of NOx (nitrogen oxides) by regulating
												temperature and oxygen concentration at combustion, and recycling
												heat released
											</p>
										</div>
									</div>
								</li>
								<li>
									<div class="list-item">
										<div class="img-flex">
											<img src="${CON_STATIC_URL}/asset/images/esg/img_purity02.jpg" alt="">
										</div>
										<div class="title-box">
											<strong class="title">Zero Liquid Discharge Waste Treatment
												System</strong>
											<p class="desc">
												Operating high-efficiency water treatment system to keep pollutant
												discharge to a minimum
											</p>
										</div>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</c:if>
			</div>
		</div>


		<div class="content-box bg">
			<div class="inner-box">
				<c:if test="${LANG eq 'ko'}">
					<div class="title-wrap4" data-delighter>
						<h3 class="title-type">지역사회 환경 보호 실천</h3>
						<p>
							친환경 시대로 나아가기 위해, 임직원이 직접 참여하는 지역사회 환경 보호 활동을 정기적으로 실시합니다.
						</p>
					</div>

					<div class="board-wrap" data-delighter>
						<div class="board-body gallery-swiper">
							<ul class="list-gallery swiper-wrapper">
								<li class="swiper-slide">
									<div class="list-item">
										<div class="img-flex">
											<img src="${CON_STATIC_URL}/asset/images/esg/img_service01.jpg" alt="">
										</div>
										<strong class="title t-c">1사 1연안 가꾸기 운동</strong>
									</div>
								</li>
								<li class="swiper-slide">
									<div class="list-item">
										<div class="img-flex">
											<img src="${CON_STATIC_URL}/asset/images/esg/img_service02.jpg" alt="">
										</div>
										<strong class="title t-c">멸종 위기 야생생물 금개구리 서식지 보호 활동</strong>
									</div>
								</li>
								<li class="swiper-slide">
									<div class="list-item">
										<div class="img-flex">
											<img src="${CON_STATIC_URL}/asset/images/esg/img_service03.jpg" alt="">
										</div>
										<strong class="title t-c">폐 건전지 교환 캠페인</strong>
									</div>
								</li>
							</ul>
							<div class="swiper-button-box">
								<div class="button-prev"></div>
								<div class="button-next"></div>
								<div class="fraction-pagination"></div>
							</div>
						</div>
					</div>
				</c:if>

				<c:if test="${LANG eq 'en'}">
					<div class="title-wrap4" data-delighter>
						<h3 class="title-type">Local Environmental Protection
						</h3>
						<p>
							Taihan regularly performs local environmental protection activities through employees’
							direct participation in order to lead the eco-friendly era.
						</p>
					</div>

					<div class="board-wrap" data-delighter>
						<div class="board-body gallery-swiper">
							<ul class="list-gallery swiper-wrapper">
								<li class="swiper-slide">
									<div class="list-item">
										<div class="img-flex">
											<img src="${CON_STATIC_URL}/asset/images/esg/img_service01.jpg" alt="">
										</div>
										<strong class="title t-c">“One Company One Coast” campaign
										</strong>
									</div>
								</li>
								<li class="swiper-slide">
									<div class="list-item">
										<div class="img-flex">
											<img src="${CON_STATIC_URL}/asset/images/esg/img_service02.jpg" alt="">
										</div>
										<!-- 2022-11-03 수정 -->
										<strong class="title t-c">Habitat protection activity
											for Korean Golden Frogs
										</strong>
										<!-- //2022-11-03 수정 -->
									</div>
								</li>
								<li class="swiper-slide">
									<div class="list-item">
										<div class="img-flex">
											<img src="${CON_STATIC_URL}/asset/images/esg/img_service03.jpg" alt="">
										</div>
										<strong class="title t-c">Waste battery exchange campaign
										</strong>
									</div>
								</li>
							</ul>
							<div class="swiper-button-box">
								<div class="button-prev"></div>
								<div class="button-next"></div>
								<div class="fraction-pagination"></div>
							</div>
						</div>
					</div>
				</c:if>

			</div>
		</div>
	</div>

</section>
<!--//content-->

<script>
	$(document).ready(function(){
		//gnb세팅
		setTimeout(function() {
			setmenu( 3, '030203');
		},100);
	})

	var gallerySwiper = new Swiper('.gallery-swiper', {
		slidesPerView: 3,
		spaceBetween: 38,
		watchOverflow: true,
		pagination: {
			el: ".swiper-button-box .fraction-pagination",
			type: "fraction",
		},
		navigation: {
			nextEl: ".swiper-button-box .button-next",
			prevEl: ".swiper-button-box .button-prev",
		},
		breakpoints: {
			768: {
				centeredSlides: true,
				slidesPerView: 1.2,
				spaceBetween: 15,
				watchOverflow: true,
			},
		},
	});
</script>





